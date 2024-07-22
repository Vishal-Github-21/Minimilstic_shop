import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/mybutton.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo

            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            //title
            Text(
              "Minimal Shop",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            //subtitle
            Text(
              "Premium quality products",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            const SizedBox(height: 15),

            //button to navigate to next page
            
             Mybutton(
      
                  child: Icon(Icons.arrow_forward,),
                  ontap: () {
                    Navigator.pushNamed(context, "/home_page");
                  }),
            
          ],
        ),
      ),
    );
  }
}
