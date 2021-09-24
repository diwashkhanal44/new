import 'package:auto_route/auto_route.dart';
import 'package:flare_flutter/base/animation/actor_animation.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:sensors/sensors.dart';

class Anim {
  String name;
  double _value = 0, pos = 0, min, max, speed;
  bool endless = false;
  ActorAnimation? actor;

  Anim(this.name, this.min, this.max, this.speed, this.endless);

  double get value => _value * (max - min) + min;

  set value(double v) => _value = (v - min) / (max - min);
}

class AniControl extends FlareControls {
  List<Anim> items;

  AniControl(this.items);

  @override
  bool advance(FlutterActorArtboard board, double elapsed) {
    super.advance(board, elapsed);
    for (var a in items) {
      if (a.actor == null) continue;
      var d = (a.pos - a.value).abs();
      var m = a.pos > a.value ? -1 : 1;
      if (a.endless && d > 0.5) {
        m = -m;
        d = 1.0 - d;
      }
      var e = elapsed / a.actor!.duration * (1 + d * a.speed);
      a.pos = e < d ? (a.pos + e * m) : a.value;
      if (a.endless) a.pos %= 1.0;
      a.actor!.apply(a.actor!.duration * a.pos, board, 1.0);
    }
    return true;
  }

  @override
  void initialize(FlutterActorArtboard board) {
    super.initialize(board);
    items.forEach((a) => a.actor = board.getAnimation(a.name));
  }

  operator [](String name) {
    for (var a in items) if (a.name == name) return a;
  }
}

class CompassPage extends StatefulWidget {
  @override
  _CompassPageState createState() => _CompassPageState();
}

class _CompassPageState extends State<CompassPage> {
  int mode = 0, map = 0;
  AniControl? compass;

  String city = '', weather = '', icon = '01d';
  double temp = 0, humidity = 0;

  void setLocation(double lati, double long, [bool weather = true]) {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    compass = AniControl([
      Anim('dir', 0, 360, 45, true),
      Anim('hor', -9.6, 9.6, 20, false),
      Anim('ver', -9.6, 9.6, 20, false),
    ]);

    FlutterCompass.events!.listen((angle) {
      compass!['dir'].value = angle.heading;
      if (mounted) setState(() {});
    });

    accelerometerEvents.listen((event) {
      compass!['hor'].value = -event.x;
      compass!['ver'].value = -event.y;
    });

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  Widget compassBuild() {
    return GestureDetector(
      onTap: () => setState(() => mode++),
      child: FlareActor(
          Theme.of(context).brightness == Brightness.dark
              ? "assets/compass/compass.flr"
              : "assets/compass/compass_light.flr",
          animation: 'mode${mode % 2}',
          controller: compass),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: SafeArea(
                child: InkWell(
                  onTap: () {
                    AutoRouter.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SafeArea(
                child: Text(
                  "Compass",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 10,
              left: 0,
              right: 0,
              child: Text(
                "${(compass!['dir'].value as double).round()}°",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
            Center(
              child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: compassBuild()),
            ),
          ],
        ),
      ),
    );
  }
}
