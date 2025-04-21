import 'package:flutter/material.dart';

class InfoForm extends StatefulWidget {
  @override
  InfoFormState createState() {
    return InfoFormState();
  }
}

class InfoFormState extends State<InfoForm> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dobController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _nameController.dispose();
    _phoneController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          iconWithInputBuilder(Icons.person, "name", _nameController),
          iconWithInputBuilder(Icons.phone, "phone", _phoneController),
          iconWithInputBuilder(Icons.calendar_month, "dob", _dobController),
          ElevatedButton(
            child: Text("Submit"),
            onPressed: () {
              String snackBarText = "";
              if(_nameController.text != "") {
                snackBarText += "${_nameController.text} ";
              }

              if(_phoneController.text != "") {
                snackBarText += "${_phoneController.text} ";
              }

              if(_dobController.text != "") {
                snackBarText += "${_dobController.text} ";
              }

              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(snackBarText)));
            },
          ),
        ],
      ),
    );
  }

  Row iconWithInputBuilder(
    IconData icon,
    String hintText,
    TextEditingController controller,
  ) {
    return Row(
      children: [
        Icon(icon, size: 24.0),
        Flexible(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(hintText: hintText),
          ),
        ),
      ],
    );
  }
}
