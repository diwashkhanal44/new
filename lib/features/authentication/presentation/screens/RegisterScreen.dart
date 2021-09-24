import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/features/authentication/domain/usecases/SocialsAuthentication.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/authentication/presentation/blocs/signup/signup_cubit.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: BlocProvider(
          create: (context) => sl<SignupCubit>(),
          child: _SignupForm(),
        ),
      ),
    );
  }
}

class _SignupForm extends HookWidget {
  _SignupForm({
    Key? key,
  }) : super(key: key);

  // final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final showPassword = useState(false);

    final usernameTextEditingController = useTextEditingController();
    final passwordTextEditingController = useTextEditingController();
    final nameTextEditingController = useTextEditingController();
    final emailTextEditingController = useTextEditingController();
    final confirmPasswordTextEditingController = useTextEditingController();
    final mobileTextEditingController = useTextEditingController();

    final selectedRole = useState<int>(0);

    return SingleChildScrollView(
      child: BlocListener<SignupCubit, SignupState>(
        listener: (context, signupState) {
          signupState.map(
              initial: (initial) {},
              loading: (loading) {
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
              },
              success: (success) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                FocusScope.of(context).unfocus();

                BlocProvider.of<AuthCubit>(context)
                    .login(loginCredential: success.signupModel);

                AutoRouter.of(context).pop(true);

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.green,
                    content: Text("Logged In Successfully",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(color: Colors.white70))));
              },
              failed: (failed) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(failed.failureMessage,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(color: Colors.white70))));
              });
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/you_logo.png",
                height: 100,
                width: 100,
              ),
              SizedBox(height: 30),
              Text("Signup", style: Theme.of(context).textTheme.headline5),
              SizedBox(height: 30),
              AutofillGroup(
                child: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildUsernameTextFormField(
                          "Username", usernameTextEditingController),
                      SizedBox(height: 10),
                      _buildTextFormField(
                          "Name", nameTextEditingController, Icons.person,
                          keyboardType: TextInputType.name),
                      SizedBox(height: 10),
                      _buildTextFormField(
                          "Email", emailTextEditingController, Icons.email,
                          keyboardType: TextInputType.emailAddress),
                      SizedBox(height: 10),
                      _buildTextFormField(
                          "Mobile", mobileTextEditingController, Icons.phone,
                          keyboardType: TextInputType.number),
                      SizedBox(height: 10),
                      _buildPasswordTextFormField("Password",
                          passwordTextEditingController, showPassword),
                      SizedBox(height: 10),
                      _buildPasswordTextFormField("Confirm Password",
                          confirmPasswordTextEditingController, showPassword),
                      // SizedBox(height: 10),
                      // SizedBox(
                      //   height: 45,
                      //   child: DropdownButtonFormField<int>(
                      //     value: selectedRole.value,
                      //     onChanged: (value) {
                      //       selectedRole.value = value as int;
                      //     },
                      //     items: List.from(['Subscriber', 'Publisher']
                      //         .asMap()
                      //         .entries
                      //         .map((e) => DropdownMenuItem(
                      //             child: Text(e.value), value: e.key))),
                      //     decoration: InputDecoration(
                      //       contentPadding: EdgeInsets.only(right: 4),
                      //       isDense: true,
                      //       border: OutlineInputBorder(),
                      //       prefixIcon: Icon(Icons.emoji_people),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      _buildSignupButton(
                          context,
                          usernameTextEditingController,
                          passwordTextEditingController,
                          nameTextEditingController,
                          emailTextEditingController,
                          confirmPasswordTextEditingController,
                          mobileTextEditingController,
                          selectedRole),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(child: Divider()),
                          Text("    OR    "),
                          Expanded(child: Divider()),
                        ],
                      ),
                      Text("Sign up with"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              BlocProvider.of<SignupCubit>(context)
                                  .socialSignup(LoginProvider.Facebook);
                            },
                            icon: Icon(Icons.facebook),
                          ),
                          IconButton(
                            onPressed: () {
                              BlocProvider.of<SignupCubit>(context)
                                  .socialSignup(LoginProvider.Google);
                            },
                            icon: SvgPicture.asset("assets/google_logo.svg",
                                height: 20, width: 20),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

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

  Widget _buildSignupButton(
      BuildContext context,
      TextEditingController usernameTextEditingController,
      TextEditingController passwordTextEditingController,
      TextEditingController nameTextEditingController,
      TextEditingController emailTextEditingController,
      TextEditingController confirmPasswordTextEditingController,
      TextEditingController mobileTextEditingController,
      ValueNotifier<int> selectedRole) {
    List<String> roles = ['Subscriber', 'Publisher'];

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
          BlocProvider.of<SignupCubit>(context).state.maybeMap(orElse: () {
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

            BlocProvider.of<SignupCubit>(context).signUp(
                name: nameTextEditingController.text,
                username: usernameTextEditingController.text,
                email: emailTextEditingController.text,
                mobile: mobileTextEditingController.text,
                password: passwordTextEditingController.text,
                confirm_password: confirmPasswordTextEditingController.text,
                role: roles[0]);

            FocusScope.of(context).unfocus();
          }, loading: (loading) {
            return;
          });
        },
        icon: Icon(
          Icons.login,
        ),
        label: Text(
          "Signup".toUpperCase(),
        ),
      ),
    );
  }

  Column _buildTermsAndCondition(BuildContext context) {
    return Column(
      children: [
        Text(
          "Signing up means you accept the Terms and Conditions.",
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
      String label,
      TextEditingController passwordTextEditingController,
      ValueNotifier<bool> showPassword) {
    return TextFormField(
      controller: passwordTextEditingController,
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
        labelText: label,
      ),
    );
  }

  TextFormField _buildTextFormField(String label,
      TextEditingController usernameTextEditingController, IconData icon,
      {TextInputType? keyboardType}) {
    return TextFormField(
      controller: usernameTextEditingController,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(),
        prefixIcon: Icon(icon),
        labelText: label,
      ),
    );
  }

  TextFormField _buildUsernameTextFormField(
    String label,
    TextEditingController usernameTextEditingController,
  ) {
    return TextFormField(
      controller: usernameTextEditingController,
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.person_outline),
        labelText: label,
      ),
    );
  }
}
