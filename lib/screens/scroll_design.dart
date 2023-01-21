import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          scrollDirection: Axis.vertical, children: [Page1(), Page2()]),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [Background(), MainContent()]);
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    '11º',
                    style: TextStyle(fontSize: 70, color: Colors.white),
                  ),
                  Text(
                    'Miércoles',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  )
                ],
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30bad6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(image: AssetImage('assets/scroll-1.png')));
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30bad6),
      child: Center(
          child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098fa), shape: StadiumBorder()),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
          child: Text(
            'Bienvenido',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      )),
    );
  }
}
