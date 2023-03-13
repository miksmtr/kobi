import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../widgets/auth_widgets.dart';
import '../auth_provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CAuthProvider>();

    if (provider.loadingState) {
      return const Center(child: CircularProgressIndicator());
    }

    return SignInScreen(
      actions: [
        ForgotPasswordAction((c, email) {
          context.pushReplacement('/panel/forgot-password',
              extra: {'email': email});
        }),
        AuthStateChangeAction<SignedIn>((c, state) {
          provider.navigate(context, state.user);
        }),
        AuthStateChangeAction<UserCreated>((c, state) async {
          if (state.credential.user != null) {
            provider.createUserForFirestore(context, state.credential.user!);
          }
        }),
        AuthStateChangeAction<CredentialLinked>((c, state) {
          provider.navigate(context, state.user);
        }),
        EmailLinkSignInAction((c) {
          context.pushReplacement('/panel/email-link-sign-in');
        }),
      ],
      styles: const {
        EmailFormStyle(signInButtonVariant: ButtonVariant.filled),
      },
      headerBuilder: headerImage('assets/sources/logo.jpeg'),
      sideBuilder: sideImage('assets/sources/logo.jpeg'),
      subtitleBuilder: _buildSubtitleWidget,
      footerBuilder: _buildFooterWidget,
    );
  }

  Widget _buildFooterWidget(context, action) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text(
          "auth.bottom_desc".tr(),
          style: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  Widget _buildSubtitleWidget(context, action) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text("auth.title".tr()),
    );
  }
}
