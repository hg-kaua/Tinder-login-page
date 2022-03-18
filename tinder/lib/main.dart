import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login tinder',
      home: Scaffold(
        body:  
             Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [
                    0.5, 
                    1
                    ],
                  colors: [
                  Colors.redAccent, 
                  Colors.deepOrange,
              ]
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              Center(
                child: Container(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    'logo.png', 
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                child:  const Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'Ao tocar em Criar conta ou Entrar, você concorda com os'
                    ' nossos Termos. Saiba como processamos os seus dados'
                    ' em nossa Política de Privacidade e Política de Cookies.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center, 
                  ),
                  )
              ),
              Container(
                child:Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children:  [
                      ElevatedButton(
                        onPressed: () {
                          
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))
                          )
                          
                        ), 
                        child: Container(
                          width: 400,
                          height: 60,
                          child: const Text('Criar uma conta',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 63, 62, 62),
                            height: 2.3,         
                            fontSize: 20                   
                          ),
                          ),  
                        ) 
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                       OutlinedButton( 
                        style: ButtonStyle(
                          shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
                            (states) {
                            return RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            );
                            },
                          ),
                          side: MaterialStateProperty.resolveWith<BorderSide?>(
                            (states) {
                              return const BorderSide(
                                width: 2.5,
                                color: Colors.white
                                
                              );
                          },
                          ),
                        ),
                        onPressed: () {
                          print('click');
                          
                        }, 
                        child: Container(
                          decoration:const BoxDecoration(

                          ),
                          width: 400,
                          height: 60,
                          child: const Text('Entrar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            height: 2.3,         
                            fontSize: 20                   
                          ),
                          ),  
                        ) 
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Text('Problemas para fazer login?',
                      style: TextStyle(
                        color: Colors.white
                      ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


