import 'package:flutter/material.dart';
import '../../components/image_picker_mobile.dart';
import '../../widgets/my_text_form_field.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage({super.key});

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController bio = TextEditingController();
  final TextEditingController country = TextEditingController();
  DateTime? birthDate;
  final TextEditingController gender = TextEditingController();
  final TextEditingController photo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
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
                  pre: const Icon(Icons.account_circle),
                  hint: "username",
                  controller: username,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MyTextFormField(
                  pre: const Icon(Icons.info_outlined),
                  hint: "bio",
                  controller: bio,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MyTextFormField(
                  pre: const Icon(Icons.flag),
                  hint: "country",
                  controller: country,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text("birth date : "),
                      const SizedBox(width: 5),
                      Expanded(
                          child:
                              Text(birthDate?.toString().split(" ")[0] ?? "")),
                      const SizedBox(width: 5),
                      IconButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime(2002),
                            firstDate: DateTime(1930),
                            lastDate: DateTime.now(),
                          ).then((value) {
                            if (value != null) {
                              setState(() {
                                birthDate = value;
                              });
                            }
                          });
                        },
                        icon: const Icon(Icons.date_range),
                      ),
                    ],
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: DropdownMenu<int>(
                  onSelected: (value) {
                    if (value == 1) {
                      gender.text = "female";
                    } else {
                      gender.text = "male";
                    }
                  },
                  controller: gender,
                  label: const Text("gender"),
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(value: 1, label: "female"),
                    DropdownMenuEntry(value: 2, label: "male"),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Save changes"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
