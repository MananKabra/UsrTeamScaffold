import 'package:flutter/material.dart';
import 'constants/colour_constants.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/s1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        //color: kwhite,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                height: 50,
                  onPressed: (){},
                color: kLightGreen,
                child: Text(
                  'Start Eating',
                  style: TextStyle(
                    color: kwhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 20),
              MaterialButton(
                height: 50,
                onPressed: (){},
                color: kLightGreen,
                child: Text(
                  'Start Selling',
                  style: TextStyle(
                      color: kwhite,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
