import 'package:flutter/material.dart';

class FormBuilder extends StatefulWidget {
  const FormBuilder({Key? key}) : super(key: key);

  @override
  _FormBuilderState createState() => _FormBuilderState();
}

class _FormBuilderState extends State<FormBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
      // key: submitFormKey,
      child: ListView(padding: const EdgeInsets.all(16), children: [
        TextFormField(
          // controller: firstNameController,
          decoration: const InputDecoration(
              hintText: 'First Name', border: OutlineInputBorder()),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter student first name';
            }
          },
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          // controller: lastNameController,
          decoration: const InputDecoration(
              hintText: 'Last Name', border: OutlineInputBorder()),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter student Last name';
            }
          },
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
            // controller: levelController,
            decoration: const InputDecoration(
              hintText: "Phone Number",
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Phone number required';
              }
            }),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          // controller: courseController,
          decoration: const InputDecoration(
            hintText: 'Group',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          // controller: courseController,
          decoration: const InputDecoration(
            hintText: 'Location',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          // controller: mailController,
          decoration: const InputDecoration(
            hintText: 'Mail',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            //anonymous call back fnx
            if (value!.isEmpty) {
              return 'Email is required';
            } else if (!value.contains('@')) {
              return 'Invalid Email';
            }
          },
        ),
        const SizedBox(
          height: 15,
        ),
        TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.all(18),
            ),
            elevation: MaterialStateProperty.all(16),
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          onPressed: () {},
          child: const Text(
            'Submit',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ]),
    ));
  }
}
