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
      obscureText: widget.hintText.toLowerCase().contains("password")
          ? _obscuretext
          : false,
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
        prefixIcon: widget.hintText.toLowerCase().contains("email")
            ? const Icon(Icons.person)
            : widget.hintText.toLowerCase().contains("password")
                ? const Icon(Icons.lock)
                : widget.hintText.toLowerCase().contains("store")
                    ? const Icon(Icons.store)
                    : widget.hintText.toLowerCase().contains("name")
                        ? const Icon(Icons.person_2_rounded)
                        : widget.hintText.toLowerCase().contains("number")
                            ? const Icon(Icons.balance)
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
