part of 'common_widgets_imports.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.primaryColor,
          minimumSize: Size(MediaQuery.of(context).size.width.w, 44.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11.r))),
      child: Text(
        text,
        style: TextStyle(
            color: MyColors.whiteColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}