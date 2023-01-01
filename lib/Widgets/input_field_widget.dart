import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    required this.title,
    required this.hintText,
    required this.isEmail,
    required this.isPassword,
    Key? key,
  }) : super(key: key);

  final String title, hintText;
  final bool isPassword, isEmail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
          child: Text(title),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: TextFormField(
            keyboardType:
                isEmail ? TextInputType.emailAddress : TextInputType.text,
            obscureText: isPassword,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.1),
                    width: 1,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                hintText: hintText,
                filled: false,
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                )),
          ),
        )
      ],
    );
  }
}
