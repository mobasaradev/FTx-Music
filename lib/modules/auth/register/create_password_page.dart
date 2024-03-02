import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftx_music/utils/utils.dart';

import '../../../common/common.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage({super.key});

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  final TextEditingController _passController = TextEditingController();
  bool _isPasswordValid = false;
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
              text: 'Create a password',
              style: AppTextTheme.textTheme.displayMedium,
            ),
            CustomTextField(
              controller: _passController,
              topLabel: '',
              hintText: '',
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                setState(() {
                  _isPasswordValid = _isValidPassword(value);
                });
              },
            ),
            10.y,
            CustomText(
              text: 'Use at least 8 characters.',
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
                    _isPasswordValid ? _onSubmit() : null;
                  },
                  backgroundColor: _isPasswordValid
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

  bool _isValidPassword(String password) {
    return password.length >= 6;
  }

  void _onSubmit() {
    print('Password submitted: ${_passController.text}');
    // Navigator.pushNamed(context, routeName);
  }
}
