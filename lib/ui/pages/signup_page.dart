part of 'pages.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TapGestureRecognizer _loginButtonTapRecognizer = TapGestureRecognizer();
  final _formKey = GlobalKey<FormState>();


  @override
  void dispose() {
    _loginButtonTapRecognizer.dispose();
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
              const SizedBox(height: 20,),
              Text(
                "Create New Account",
                style: AppTypography.redw400
                    .copyWith(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20,),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        style: AppTypography.greyw400,
                        decoration: InputDecoration(
                          label: const Text("Your Name"),
                          floatingLabelStyle: AppTypography.mainw400,
                          prefixIcon: const Icon(Icons.person_outline,),
                        ),
                        keyboardType: TextInputType.name,
                      ),
                      TextFormField(
                        style: AppTypography.greyw400,
                        decoration: InputDecoration(
                          label: const Text("Phone Number"),
                          floatingLabelStyle: AppTypography.mainw400,
                          prefixIcon: const Icon(Icons.phone_android),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
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
                      const SizedBox(height: 25,),
                      BaseButton(
                          minimumSize:
                          Size(MediaQuery.of(context).size.width / 3, 40),
                          onTap: () {
                            //TODO: Add Signup Functionality
                          },
                          child: Text("Sign Up", style: AppTypography.whitew400.copyWith(fontSize: 20),)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              RichText(
                  text: TextSpan(
                      text: "Already have an account? ",
                      style: AppTypography.greyw400,
                      children: [
                        TextSpan(
                            text: "Log In",
                            style: AppTypography.mainw400,
                            recognizer: _loginButtonTapRecognizer
                              ..onTap = () {
                                Navigator.pushReplacementNamed(
                                  context,
                                  AppRoutes.loginPage,
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

