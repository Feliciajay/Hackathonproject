import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  const AuthTextField(
      {super.key, required this.hintText, required this.controller});

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(),
        prefixIcon: widget.hintText.toLowerCase().contains("email")
            ? const Icon(Icons.person)
            : widget.hintText.toLowerCase().contains("password")
                ? const Icon(Icons.lock)
                : null,
        suffixIcon: widget.hintText.toLowerCase().contains("password")
            ? IconButton(
                icon: Icon(
                    _obscuretext ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _obscuretext = !_obscuretext;
                  });
                },
              )
            : null,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
            color: Color(0xff676767),
            fontSize: 12,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
