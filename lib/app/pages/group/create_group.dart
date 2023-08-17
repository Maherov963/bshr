import 'package:flutter/material.dart';
import '../../components/image_picker_mobile.dart';
import '../../widgets/my_text_form_field.dart';

class CreateGroupPage extends StatefulWidget {
  const CreateGroupPage({super.key});

  @override
  State<CreateGroupPage> createState() => _CreateGrouppageState();
}

class _CreateGrouppageState extends State<CreateGroupPage> {
  final TextEditingController groupname = TextEditingController();
  final TextEditingController bio = TextEditingController();
  final TextEditingController photo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("create new group"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ImagePickerMobile(imageController: photo, radius: 70),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MyTextFormField(
                  hint: "groupname",
                  controller: groupname,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MyTextFormField(
                  hint: "bio",
                  controller: bio,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Create"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
