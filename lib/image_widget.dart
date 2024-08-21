import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/stop kontak.jpeg'),
          ),
          Image(
            image: AssetImage('assets/usb hub.jpg'),
          ),
        ],
      ),
    );
  }
}
