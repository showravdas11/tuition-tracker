import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            "-or sign in with-",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.black.withOpacity(0.5)),
          ),
        ),
        SizedBox(height: 40,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 55,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10
                  )
                ]
              ),
              alignment: Alignment.center,
              child: IconButton(
            onPressed: () {},
            icon: Image(
              width: 40.0,
              height: 40.0,
              image: AssetImage("assets/images/google-icon.png"),
            ),
                      ),
            ),
            SizedBox(width: 16,),
            Container(
              height: 55,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10
                  )
                ]
              ),
              alignment: Alignment.center,
              child: IconButton(
            onPressed: () {},
            icon: Image(
              width: 40.0,
              height: 40.0,
              image: AssetImage("assets/images/facebook-icon.png"),
            ),
                      ),
            ),
          ],
        ),
SizedBox(height: 25,),
        Text("Don't have an account? Sign Up", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black.withOpacity(0.5)), )
      ],
    );
  }
}
