import 'package:flutter/material.dart';
import 'package:themedemo66/color.dart';
import 'package:themedemo66/pages/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController fullname = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/register.png'),
              const SizedBox(
                height: 30,
              ),
              Text('Welcome To SCIT',
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(
                height: 10,
              ),
              Text('Prince of Songkla University',
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(
                height: 3,
              ),
              Text('Surat Thani Campus',
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      controller: fullname,
                      decoration: InputDecoration(
                        hintText: 'Enter your fullname',
                        filled: true,
                        fillColor: lightPurple,
                        hintStyle: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: username,
                      decoration: InputDecoration(
                        hintText: 'Enter your username',
                        filled: true,
                        fillColor: lightPurple,
                        hintStyle: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        filled: true,
                        fillColor: lightPurple,
                        hintStyle: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: confirmpassword,
                      decoration: InputDecoration(
                        hintText: 'confirm your password',
                        filled: true,
                        fillColor: lightPurple,
                        hintStyle: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Register'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            //ฟังชั่น เปิดหน้า
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            );
                            ////////////////////////
                          },
                          child: const Text('Login'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(' "SCIT, We drive your future" ',
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
