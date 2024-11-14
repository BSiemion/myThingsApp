import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_things_app/pages/login.dart';
import 'package:my_things_app/pages/register.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('assets/start.json'),
          const SizedBox(
            height: 88,
          ),
          SizedBox(
            width: 200, // stała szerokość
            height: 50, // stała wysokość
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOut;
                      
                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      
                      var offsetAnimation = animation.drive(tween);
                      
                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 500),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF1CBAE),
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                elevation: 3,
              ),
              child: Text('Zaloguj się'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200, // stała szerokość
            height: 50, // stała wysokość
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => RegisterPage(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOut;
                      
                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      
                      var offsetAnimation = animation.drive(tween);
                      
                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 500),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF1CBAE),
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                elevation: 3,
              ),
              child: Text('Zarejestruj się'),
            ),
          ),
        ],
      ),
    );
  }
}
