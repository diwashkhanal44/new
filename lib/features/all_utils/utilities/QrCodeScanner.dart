import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class QRBarcodeScreen extends StatefulWidget {
  QRBarcodeScreen({Key? key}) : super(key: key);

  @override
  _QrBarcodeState createState() => new _QrBarcodeState();
}

class _QrBarcodeState extends State<QRBarcodeScreen>
    with SingleTickerProviderStateMixin {
  final FocusNode mFocusNodeQrValue = FocusNode();
  TextEditingController qrController = new TextEditingController();
  PageController? _pageController;
  Color left = Colors.black;
  Color right = Colors.white;
  GlobalKey globalKey = new GlobalKey();
  String _dataString = "";
  final TextEditingController _textController = TextEditingController();
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    _pageController!.addListener(() {
      setState(() {});
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
    mFocusNodeQrValue.dispose();
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        color: Theme.of(context).primaryColor,
        child: Stack(
          children: [
            PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (i) {
                if (i == 0) {
                  setState(() {
                    right = Colors.white;
                    left = Colors.black;
                  });
                } else if (i == 1) {
                  setState(() {
                    right = Colors.black;
                    left = Colors.white;
                  });
                }
              },
              children: <Widget>[
                // _buildScan(context),
                QRViewExample(),
                _buildGen(context),
              ],
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                        ),
                        color: Colors.white,
                        onPressed: () {
                          AutoRouter.of(context).pop();
                        }),
                    Expanded(
                      child: Text(
                        "khabarhub QR Scanner",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    InkWell(
                      onTap: _pageController!.hasClients
                          ? _pageController!.page! >= 1
                              ? _onScanButtonPress
                              : _onGenerateButtonPress
                          : _onGenerateButtonPress,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).primaryColor,
                          ),
                          padding: EdgeInsets.all(5),
                          child: Text(
                            _pageController!.hasClients
                                ? _pageController!.page! >= 1
                                    ? "Scan QR/Bar Code"
                                    : "Generate QR Code"
                                : "Generate QR Code",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGenButton(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _dataString = _textController.text;
          });
        },
        child: Container(
          width: 150.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          child: Center(
            child: Text(
              "Generate",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }

  // ignore: unused_element
  Widget _buildScan(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height - 10,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(bottom: 10),
          child: Stack(
            children: [
              QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
              Center(
                child: SvgPicture.asset("assets/qr_view_finder.svg",
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String qrText = '';

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrText = scanData.code;
      });
    });
  }

  Widget _buildGen(BuildContext context) {
    final bodyHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).viewInsets.bottom;
    return Center(
      child: Card(
        elevation: 2.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          width: 300,
          height: 500,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: 280,
                child: RepaintBoundary(
                  key: globalKey,
                  child: QrImage(data: _dataString, size: 0.5 * bodyHeight),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                child: TextFormField(
                  focusNode: mFocusNodeQrValue,
                  controller: _textController,
                  textCapitalization: TextCapitalization.words,
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Enter Text",
                    hintStyle: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                ),
              ),
              _buildGenButton(context),
            ],
          ),
        ),
      ),
    );
  }

  void _onScanButtonPress() {
    _pageController!.animateToPage(0,
        duration: Duration(milliseconds: 100), curve: Curves.decelerate);
  }

  void _onGenerateButtonPress() {
    _pageController?.animateToPage(1,
        duration: Duration(milliseconds: 100), curve: Curves.decelerate);
  }
}

bool isFlashOnBool = false;

class QRViewExample extends StatefulWidget {
  const QRViewExample({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  var qrText = '';
  bool flashState = isFlashOnBool;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildQrView(context),
          Positioned(
            bottom: 10,
            right: 10,
            child: IconButton(
              enableFeedback: true,
              icon: Icon(
                flashState ? Icons.flash_off : Icons.flash_on,
                color: Colors.white,
              ),
              onPressed: () {
                controller!.toggleFlash();
                setState(() {
                  flashState = !flashState;
                  isFlashOnBool = flashState;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return SizeChangedLayoutNotifier(
        key: const Key('qr-size-notifier'),
        child: QRView(
          key: qrKey,
          onQRViewCreated: _onQRViewCreated,
          overlay: QrScannerOverlayShape(
            borderColor: Colors.red,
            borderRadius: 10,
            borderLength: 30,
            borderWidth: 10,
            cutOutSize: 300,
          ),
        ));
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      _qrCallback(scanData.code);
    });
  }

  bool bottomSheetShown = false;

  _qrCallback(String code) async {
    if (bottomSheetShown == false) {
      bottomSheetShown = true;
      controller?.pauseCamera();

      await showModalBottomSheet(
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Theme.of(context).scaffoldBackgroundColor
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Scanned Text",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () async {
                              String link =
                                  "https://www.google.com/search?q=$code";
                              await launch(link);
                            },
                            child: Row(
                              children: [
                                Icon(Icons.search),
                                Text("Google Search"),
                              ],
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.resolveWith<
                                    OutlinedBorder>(
                              (states) => RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(
                                      color: Theme.of(context).accentColor)),
                            )),
                          ),
                          TextButton(
                            onPressed: () {
                              Clipboard.setData(ClipboardData(text: code));
                              BotToast.showText(
                                text: "Copied scanned text",
                              );
                            },
                            child: Row(
                              children: [
                                Icon(Icons.copy_outlined),
                                Text("Copy Result"),
                              ],
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.resolveWith<
                                    OutlinedBorder>(
                              (states) => RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(
                                      color: Theme.of(context).accentColor)),
                            )),
                          ),
                          TextButton(
                            onPressed: () {
                              Share.share(
                                "$code",
                              );
                            },
                            child: Row(
                              children: [
                                Icon(Icons.ios_share),
                                Text("Share"),
                              ],
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.resolveWith<
                                    OutlinedBorder>(
                              (states) => RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(
                                      color: Theme.of(context).accentColor)),
                            )),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.black26
                              : Colors.grey[200],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                code,
                                maxLines: 10,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ));
          });
      controller?.resumeCamera();

      bottomSheetShown = false;
    } else {}
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}
