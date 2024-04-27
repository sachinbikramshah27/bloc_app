
part of 'common_widgets_imports.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback  onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          minimumSize: Size(MediaQuery.of(context).size.width.w, 44.h),
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: MyColors.whiteColor,
              ),
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