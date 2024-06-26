import '/utils/const.dart';
import 'package:flutter/material.dart';

class Next extends StatelessWidget {
  final VoidCallback onNext;

  const Next({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: onNext,
      style: ElevatedButton.styleFrom(
        // Set height and width
        fixedSize: Size(200, 50), backgroundColor: btncolor,
      ),
      child: Text(
        'Next',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ));
  }
}

class btn_screen4 extends StatelessWidget {
  final String text;
  final Icon icon;
  final Future<void> Function()? onpress; // Adjusted the type here
  const btn_screen4({
    Key? key, // Fixed super.key to Key? key
    required this.text,
    required this.icon,
    this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          // Changed to an async function
          if (onpress != null) {
            await onpress!(); // Execute the function if it's not null
          }
        },
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(Size(
              MediaQuery.of(context).size.width * 0.74,
              MediaQuery.of(context).size.height * 0.06)),
          backgroundColor: MaterialStateProperty.all(Color(0xffe4eaf0)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: icon,
            ),
            Text(
              text,
              style: TextStyle(
                color: Color(0xff4a5b67),
                fontSize: MediaQuery.of(context).size.height * 0.022,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class btn_screen41 extends StatelessWidget {
  final String text;
  final Icon icon;
  final Future<void> Function()? onpress; // Adjusted the type here
  const btn_screen41({
    Key? key, // Fixed super.key to Key? key
    required this.text,
    required this.icon,
    this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          // Changed to an async function
          if (onpress != null) {
            await onpress!(); // Execute the function if it's not null
          }
        },
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(Size(
              MediaQuery.of(context).size.width * 0.74,
              MediaQuery.of(context).size.height * 0.06)),
          backgroundColor: MaterialStateProperty.all(Color(0xffe4eaf0)),
        ),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.025,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: icon,
            ),
            Text(
              text,
              style: TextStyle(
                color: Color(0xff4a5b67),
                fontSize: MediaQuery.of(context).size.height * 0.022,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
