import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});
  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  void _takePicture() {
    // Logic to take a picture will go here
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 200,
      width: double.infinity,
      alignment: Alignment.center,
      child: TextButton.icon(
        icon: Icon(Icons.camera),
        label: Text("Take Picture"),
        onPressed: _takePicture,
      ),
    );
  }
}
