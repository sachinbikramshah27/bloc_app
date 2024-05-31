part of 'common_widgets_imports.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key,
      this.hintText,
      required this.controller,
      this.prefixIcon,
      required this.obscureText});
  final TextEditingController controller;
  final IconData? prefixIcon;
  final bool obscureText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: MyColors.primaryColor,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),

        contentPadding: const EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 8.0), // Adjust vertical padding
        fillColor: Colors.transparent,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: MyColors.redColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: MyColors.redColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: MyColors.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: MyColors.primaryColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: MyColors.primaryColor),
        ),
      ),
    );
  }
}
