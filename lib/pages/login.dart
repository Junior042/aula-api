import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 43,
            ),
            Center(child: Image.asset('assets/logo.png')),
            SizedBox(
              height: 73,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  // Inputs
                  Padding(
                    padding: const EdgeInsets.only(left: 32, right: 32),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Color(0xff393199),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff393199),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff393199),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 32, right: 32),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.key, color: Color(0xff393199)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff393199),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff393199),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  // Btn entrar
                  Padding(
                    padding: const EdgeInsets.only(left: 32, right: 32),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 64,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Color(0xff393199),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: const Center(
                        child: Text(
                          "Entrar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  const Text("Não possui uma conta?"),
                  const Text(
                    "Faça seu cadastro agora!",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xff393199),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
