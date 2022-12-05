part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TapGestureRecognizer _signupButtonTapRecognizer = TapGestureRecognizer();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _signupButtonTapRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Login",
                style: AppTypography.blackw400
                    .copyWith(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        style: AppTypography.greyw400,
                        decoration: InputDecoration(
                          label: const Text("Email"),
                          floatingLabelStyle: AppTypography.mainw400,
                          prefixIcon: const Icon(Icons.email_outlined),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        style: AppTypography.greyw400,
                        decoration: InputDecoration(
                          label: const Text("Password"),
                          floatingLabelStyle: AppTypography.mainw400,
                          prefixIcon: const Icon(Icons.lock_outline),
                        ),
                        obscureText: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: (){
                                //TODO: Implement Forgot Password Functionality
                              },
                                child: Text(
                              "Forgot Password?",
                              style: AppTypography.mainw400,
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BaseButton(
                          minimumSize:
                              Size(MediaQuery.of(context).size.width / 3, 40),
                          onTap: () {
                            //TODO: Implement Login Functionality
                          },
                          child: Text("Sign In", style: AppTypography.whitew400.copyWith(fontSize: 20),)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                      text: "Don't have an account? ",
                      style: AppTypography.greyw400,
                      children: [
                    TextSpan(
                        text: "Sign Up",
                        style: AppTypography.mainw400,
                        recognizer: _signupButtonTapRecognizer
                          ..onTap = () {
                            Navigator.pushReplacementNamed(
                              context,
                              AppRoutes.signupPage,
                            );
                          })
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
