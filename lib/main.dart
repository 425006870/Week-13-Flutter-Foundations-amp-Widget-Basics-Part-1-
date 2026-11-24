import 'package:material_ui/material_ui.dart';

void main() => runApp(const Week13App());

class Week13App extends StatelessWidget {
  const Week13App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 13 Static Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0095F6)),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SignUpScreen(),
    );
  }
}

/// Static "Create an account" screen based on my Week 1-2 Figma frame "Sign In".
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const Color _ink = Color(0xFF262626);
  static const Color _muted = Color(0xFF8E8E8E);
  static const Color _line = Color(0xFFDBDBDB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: _ink),
        title: const Text(
          'Sign up',
          style: TextStyle(color: _ink, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Instagram',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'cursive',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 46,
                    color: _ink,
                  ),
                ),
                const SizedBox(height: 48),
                const Text(
                  'Create an account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: _ink,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Enter your email to sign up for this app',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, color: _ink),
                ),
                const SizedBox(height: 16),
                const _EmailField(),
                const SizedBox(height: 12),
                Container(
                  height: 44,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(child: Divider(color: _line)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'or',
                        style: TextStyle(color: _muted, fontSize: 12),
                      ),
                    ),
                    Expanded(child: Divider(color: _line)),
                  ],
                ),
                const SizedBox(height: 20),
                const _SocialButton(
                  label: 'Continue with Google',
                  icon: Text(
                    'G',
                    style: TextStyle(
                      color: Color(0xFF4285F4),
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const _SocialButton(
                  label: 'Continue with Apple',
                  icon: Icon(Icons.apple, size: 22, color: Colors.black),
                ),
                const SizedBox(height: 24),
                const Text.rich(
                  TextSpan(
                    text: 'By clicking continue, you agree to our ',
                    children: [
                      TextSpan(
                        text: 'Terms of Service',
                        style: TextStyle(
                          color: _ink,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: _ink,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: _muted, fontSize: 11, height: 1.4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Non-interactive email box: Container -> Text (hint).
class _EmailField extends StatelessWidget {
  const _EmailField();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFDBDBDB)),
      ),
      child: const Text(
        'email@domain.com',
        style: TextStyle(color: Color(0xFF8E8E8E), fontSize: 14),
      ),
    );
  }
}

/// Grey full-width button: Container -> Row [icon, label].
class _SocialButton extends StatelessWidget {
  const _SocialButton({required this.label, required this.icon});

  final String label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: const Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF262626),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
