import 'package:flutter/material.dart';

class TopUI extends StatelessWidget {
  const TopUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 280,
        decoration: BoxDecoration(
          color: Color(0xff6C60E0),
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.blur_on_sharp, color: Colors.white),
                  Icon(Icons.notifications, color: Colors.white),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                "Hi Sonia",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                children: const [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(Icons.waves, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffA7A0EC),
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    fillColor: Colors.white,
                    hintText: 'What category are you searching for?',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
