import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/features/authentication/domain/usecases/Login.dart';
import 'package:you/features/authentication/domain/usecases/SocialsAuthentication.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/authentication/presentation/blocs/login/login_bloc.dart';
import 'package:you/features/single_news_handler/presentation/cubits/singlenewshandler/singlenewshandler_cubit.dart';
import 'package:you/routes/auto_router.gr.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        actions: [
          TextButton(
              onPressed: () => {
                    AutoRouter.of(context).pop(),
                    sl<SharedPreferences>().setBool("firstTime", false)
                  },
              child: Text("Skip"))
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: BlocProvider(
          create: (context) => sl<LoginBloc>(),
          child: _LoginForm(),
        ),
      ),
    );
  }
}

class _LoginForm extends HookWidget {
  _LoginForm({
    Key? key,
  }) : super(key: key);

  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final showPassword = useState(false);
    final SinglenewshandlerCubit singlenewshandlerCubit =
        sl<SinglenewshandlerCubit>();

    final usernameTextEditingController = useTextEditingController();
    final passwordTextEditingController = useTextEditingController();

    return SingleChildScrollView(
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, loginState) {
          if (loginState is LoginLoading) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: Duration(minutes: 10),
                backgroundColor: Theme.of(context).primaryColor,
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Please wait ...",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(color: Colors.white70)),
                    SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 1)),
                  ],
                ),
              ),
            );
          }

          if (loginState is LoginFailed) {
            focusNode.requestFocus();
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.red,
                content: Text(loginState.message,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(color: Colors.white70))));
          }

          if (loginState is LoginSuccess) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            FocusScope.of(context).unfocus();
            BlocProvider.of<AuthCubit>(context)
                .login(loginCredential: loginState.credential);

            AutoRouter.of(context).pop();
            sl<SharedPreferences>().setBool("firstTime", false);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.green,
                content: Text("Logged In Successfully",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(color: Colors.white70))));

            // {
            //   final providerChoosed =
            //       sl<SharedPreferences>().get("newsProviders");

            //   singlenewshandlerCubit.followUnfollow(sourceIdOrFeedId);
            // }
          }
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 200),
              Image.asset(
                "assets/you_logo.png",
                height: 100,
                width: 100,
              ),
              SizedBox(height: 30),
              Text("Login", style: Theme.of(context).textTheme.headline5),
              SizedBox(height: 30),
              AutofillGroup(
                child: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildUsernameTextFormField(
                          usernameTextEditingController, focusNode),
                      SizedBox(height: 10),
                      _buildPasswordTextFormField(
                          passwordTextEditingController, showPassword),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Not registered yet? "),
                          InkWell(
                              onTap: () async {
                                final result = await AutoRouter.of(context)
                                    .push(SignupScreen());

                                // if success exit
                                if (result != null) {
                                  sl<SharedPreferences>()
                                      .setBool("firstTime", false);
                                  AutoRouter.of(context).pop();
                                }
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              BlocProvider.of<LoginBloc>(context)
                                  .add(SocialLogin(LoginProvider.Facebook));
                            },
                            icon: Icon(Icons.facebook),
                          ),
                          IconButton(
                            onPressed: () {
                              BlocProvider.of<LoginBloc>(context)
                                  .add(SocialLogin(LoginProvider.Google));
                            },
                            icon: SvgPicture.asset("assets/google_logo.svg",
                                height: 20, width: 20),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      _buildLoginButton(context, usernameTextEditingController,
                          passwordTextEditingController),
                      SizedBox(height: 50),
                      _buildTermsAndCondition(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(
      BuildContext context,
      TextEditingController usernameTextEditingController,
      TextEditingController passwordTextEditingController) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Theme.of(context).primaryColor),
          foregroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.white),
        ),
        onPressed: () {
          if (BlocProvider.of<LoginBloc>(context).state is LoginLoading) {
            return;
          }
          if (usernameTextEditingController.text.isEmpty ||
              passwordTextEditingController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Fields can't be empty.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: Colors.white70)),
              backgroundColor: Colors.red,
            ));
            return;
          }

          BlocProvider.of<LoginBloc>(context).add(LoginAttempt(
              loginDTO: LoginCredentialDTO(
                  username: usernameTextEditingController.text,
                  password: passwordTextEditingController.text)));

          FocusScope.of(context).unfocus();
        },
        icon: Icon(
          Icons.login,
        ),
        label: Text(
          "Login".toUpperCase(),
        ),
      ),
    );
  }

  Column _buildTermsAndCondition(BuildContext context) {
    return Column(
      children: [
        Text(
          "Logging in means you accept the Terms and Conditions.",
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: Colors.grey, fontSize: 10),
        ),
        Text(
          "© 2020 You app",
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: Colors.grey, fontSize: 10),
        ),
      ],
    );
  }

  TextFormField _buildPasswordTextFormField(
      TextEditingController passwordTextEditingController,
      ValueNotifier<bool> showPassword) {
    return TextFormField(
      controller: passwordTextEditingController,
      autofillHints: [AutofillHints.password],
      obscureText: showPassword.value,
      decoration: InputDecoration(
        isDense: true,
        prefixIcon: Icon(Icons.fingerprint),
        suffixIcon: GestureDetector(
          onTap: () {
            showPassword.value = !showPassword.value;
          },
          child: Icon(
              showPassword.value ? Icons.remove_red_eye : Icons.visibility_off),
        ),
        border: OutlineInputBorder(),
        labelText: "Password",
      ),
    );
  }

  TextFormField _buildUsernameTextFormField(
      TextEditingController usernameTextEditingController,
      FocusNode focusNode) {
    return TextFormField(
      focusNode: focusNode,
      autofillHints: [AutofillHints.username],
      controller: usernameTextEditingController,
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.mail),
        labelText: "Username",
      ),
    );
  }
}
