import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/profile/presentation/cubits/profile/profile_cubit.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  late final GlobalKey<FormFieldState> formKey;
  late final TextEditingController username;
  late final TextEditingController name;
  late final TextEditingController nepali_name;
  late final TextEditingController email;
  late final TextEditingController mobile;
  late final TextEditingController address;

  File? pickedImage;

  @override
  void initState() {
    super.initState();

    formKey = GlobalKey<FormFieldState>();

    username = TextEditingController(
        text: (BlocProvider.of<AuthCubit>(context).state as Authenticated)
            .userProfile
            ?.data
            ?.username);
    name = TextEditingController(
        text: (BlocProvider.of<AuthCubit>(context).state as Authenticated)
            .userProfile
            ?.data
            ?.name);
    nepali_name = TextEditingController(
        text: (BlocProvider.of<AuthCubit>(context).state as Authenticated)
            .userProfile
            ?.data
            ?.name_np);
    email = TextEditingController(
        text: (BlocProvider.of<AuthCubit>(context).state as Authenticated)
            .userProfile
            ?.data
            ?.email);
    mobile = TextEditingController(
        text: (BlocProvider.of<AuthCubit>(context).state as Authenticated)
            .userProfile
            ?.data
            ?.mobile);
    address = TextEditingController(
        text: (BlocProvider.of<AuthCubit>(context).state as Authenticated)
            .userProfile
            ?.data
            ?.address);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProfileCubit>(),
      child: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          state.map(
              initial: (initial) {},
              loaded: (loaded) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Profile updated successfully"),
                  backgroundColor: Colors.green,
                ));
                AutoRouter.of(context).pop();
              },
              loading: (loading) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(minutes: 1),
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Updating"),
                          CircularProgressIndicator(strokeWidth: 1),
                        ],
                      ),
                    ),
                  ),
                );
              },
              failed: (failed) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(failed.message),
                  backgroundColor: Colors.red,
                ));
              });
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              appBar: AppBar(title: Text("Edit Profile")),
              body: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 10),
                            if (pickedImage == null)
                              InkWell(
                                borderRadius: BorderRadius.circular(60),
                                onTap: () async {
                                  final ImagePicker _picker = ImagePicker();
                                  final XFile? photo = await _picker.pickImage(
                                      source: ImageSource.gallery);
                                  setState(() {
                                    if (photo != null)
                                      pickedImage = File(photo.path);
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                      (BlocProvider.of<AuthCubit>(context).state
                                                  as Authenticated)
                                              .userProfile
                                              ?.data
                                              ?.profile_photo ??
                                          defaultNewsProviderImageUrl),
                                  child: Icon(Icons.add),
                                ),
                              ),
                            if (pickedImage != null)
                              InkWell(
                                borderRadius: BorderRadius.circular(60),
                                onTap: () async {
                                  final ImagePicker _picker = ImagePicker();
                                  final XFile? photo = await _picker.pickImage(
                                      source: ImageSource.gallery);
                                  setState(() {
                                    if (photo != null)
                                      pickedImage = File(photo.path);
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: FileImage(pickedImage!),
                                  child: Icon(Icons.add),
                                ),
                              ),
                            SizedBox(height: 10),
                            _buildTextFormField(
                                "Username", username, Icons.person_outline,
                                keyboardType: TextInputType.name),
                            SizedBox(height: 10),
                            _buildTextFormField("Name", name, Icons.person,
                                keyboardType: TextInputType.name),
                            SizedBox(height: 10),
                            _buildTextFormField(
                                "Nepali Name", nepali_name, Icons.person,
                                keyboardType: TextInputType.name),
                            SizedBox(height: 10),
                            _buildTextFormField("Email", email, Icons.email,
                                keyboardType: TextInputType.emailAddress),
                            SizedBox(height: 10),
                            _buildTextFormField("Mobile", mobile, Icons.phone,
                                keyboardType: TextInputType.number),
                            SizedBox(height: 10),
                            _buildTextFormField(
                                "Address", address, Icons.location_city,
                                keyboardType: TextInputType.streetAddress),
                            SizedBox(height: 10),
                            _submitButton(
                              context,
                              username,
                              address,
                              name,
                              email,
                              nepali_name,
                              mobile,
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _submitButton(
    BuildContext context,
    TextEditingController usernameTextEditingController,
    TextEditingController address,
    TextEditingController nameTextEditingController,
    TextEditingController emailTextEditingController,
    TextEditingController nepaliname,
    TextEditingController mobileTextEditingController,
  ) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Theme.of(context).primaryColor),
          foregroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.white),
        ),
        onPressed: () async {
          // print(formKey.currentState);
          // if (formKey.currentState?.validate() == true) {
          await BlocProvider.of<ProfileCubit>(context).updateProfile(
            profilePhoto: pickedImage,
            name: nameTextEditingController.text,
            name_nepali: nepaliname.text,
            username: usernameTextEditingController.text,
            mobile: mobileTextEditingController.text,
            email: emailTextEditingController.text,
            address: address.text,
          );
          FocusScope.of(context).unfocus();
          setState(() {});

          BlocProvider.of<AuthCubit>(context).getProfile();
          // }
        },
        icon: Icon(Icons.send),
        label: Text(
          "Submit".toUpperCase(),
        ),
      ),
    );
  }

  TextFormField _buildTextFormField(String label,
      TextEditingController usernameTextEditingController, IconData icon,
      {TextInputType? keyboardType}) {
    return TextFormField(
      controller: usernameTextEditingController,
      keyboardType: keyboardType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Field Can't be empty";
        }
      },
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(),
        prefixIcon: Icon(icon),
        labelText: label,
      ),
    );
  }
}
