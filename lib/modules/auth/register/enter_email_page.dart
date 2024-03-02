import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftx_music/route/route_name.dart';
import 'package:ftx_music/utils/utils.dart';

import '../../../common/common.dart';

class EnterEmailPage extends StatefulWidget {
  const EnterEmailPage({super.key});

  @override
  State<EnterEmailPage> createState() => _EnterEmailPageState();
}

class _EnterEmailPageState extends State<EnterEmailPage> {
  final TextEditingController _emailController = TextEditingController();
  bool _isEmailValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            size: 18,
            color: AppColors.white,
          ),
        ),
        isTitleCenter: true,
        title: 'Create your account',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.y,
            CustomText(
              text: 'What’s your email?',
              style: AppTextTheme.textTheme.displayMedium,
            ),
            CustomTextField(
              controller: _emailController,
              topLabel: '',
              hintText: '',
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {
                  _isEmailValid = _isValidEmail(value);
                });
              },
            ),
            10.y,
            CustomText(
              text: 'You’ll need to confirm this email later.',
              style: AppTextTheme.textTheme.headlineMedium,
            ),
            40.y,
            Center(
              child: SizedBox(
                width: 150.w,
                child: CustomButton(
                  title: 'Next',
                  borderRadius: 45.r,
                  textColor: AppColors.black,
                  onTap: () {
                    _isEmailValid ? _onSubmit() : null;
                  },
                  backgroundColor: _isEmailValid
                      ? AppColors.primary
                      : AppColors.secondaryBlack,
                ),
              ),
            ),
            15.y,
          ],
        ),
      ),
    );
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  void _onSubmit() {
    print('Email submitted: ${_emailController.text}');
    Navigator.pushNamed(context, RouteName.passwordPage);
  }
}
