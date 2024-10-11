import 'package:flutter/material.dart';
import 'package:modular_ui_package/molecules/auth/widgets/already_account_widget.dart';
import 'package:modular_ui_package/molecules/auth/widgets/email_pass_widget.dart';
import 'package:modular_ui_package/molecules/auth/widgets/referal_code_widget.dart';
import 'package:modular_ui_package/molecules/auth/widgets/social_login_widget.dart';

import '../../common_widget/appbar_common.dart';
import '../../common_widget/button_single_atom.dart';
import '../../text_atoms/text_common.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_paddings.dart';
import '../../utils/strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCommon(title: Strings.appName,titleColor: AppColors.primary,color: AppColors.scaffoldBackgroundColor,elevation: 0,),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.paddingAll16,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [

            const BigText20(text: "Create Account"),
            const EmailPassWidget(confirmPassShow: true,),
            SizedBox(height: 24,),
            ButtonSingleAtom(tap: (){

            },widget: "SIGN UP",colorText: Colors.black,),
            const SocialLoginWidget(),
            const SizedBox(height: 48,),
            const AlreadyAccountWidget(off: true,),
            const SizedBox(height: 48,)

          ],),
        ),
      ),

    );
  }
}
