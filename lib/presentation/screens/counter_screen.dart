import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counterClick = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Counter App"), centerTitle: true, actions: [
        IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                counterClick = 0;
              });
            }),
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counterClick',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.bold),
            ),
            counterClick > 1
                ? const Text(
                    "Clicks!!",
                    style: TextStyle(fontSize: 40),
                  )
                : const Text(
                    "Click!!",
                    style: TextStyle(fontSize: 40),
                  )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButtom(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                counterClick++;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButtom(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                counterClick--;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButtom({
    required this.icon,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: onPressed, child: Icon(icon));
  }
}
