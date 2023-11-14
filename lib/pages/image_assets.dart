import 'package:flutter/material.dart';
import 'package:projeto_flutter/shared/app_images.dart';

class ImageAssets extends StatefulWidget {
  const ImageAssets({super.key});

  @override
  State<ImageAssets> createState() => _ImageAssetsState();
}

class _ImageAssetsState extends State<ImageAssets> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Flutter Logo", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              const SizedBox(width: 30,),
              Image.asset(AppImages.flutterLogo, height: 300,),
            ],
          ),
          const Divider(height: 30, color: Colors.black, thickness: 3,),
          Column(
            children: [
              const Text("Senai Logo", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              Image.asset(AppImages.senaiLogo, height: 150,),
            ],
          )
        ],
      ),
    );
  }
}
