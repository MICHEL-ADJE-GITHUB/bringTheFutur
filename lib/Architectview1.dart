import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class Architectview1 extends StatefulWidget {
  const Architectview1({ Key? key }) : super(key: key);

  @override
  _Architectview1State createState() => _Architectview1State();
}

class _Architectview1State extends State<Architectview1> {
   late ArCoreController arCoreController;
  Map<int, ArCoreAugmentedImage> augmentedImagesMap = Map();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ArCoreView(
          onArCoreViewCreated: onArCoreViewCreated,
          type: ArCoreViewType.AUGMENTEDIMAGES,
        ),
      ),
    );
  }

  void onArCoreViewCreated(ArCoreController controller) async {
    arCoreController = controller;
    arCoreController.onTrackingImage = _handleOnTrackingImage;
    //loadSingleImage();
    //OR
    loadSingleImage();
  }

  void  _handleOnTrackingImage(ArCoreAugmentedImage augmentedImage) {
    if (augmentedImagesMap.containsKey(augmentedImage.index)) {
      augmentedImagesMap[augmentedImage.index] = augmentedImage;
      _add3D(augmentedImage);
    }
  }

  void loadSingleImage() async {
    final ByteData bytes =
    await rootBundle.load('assets/plan1.jpg');
    arCoreController.loadSingleAugmentedImage(
        bytes: bytes.buffer.asUint8List());
  }

  Future _add3D(ArCoreAugmentedImage augmentedImage) async {
    final ByteData textureBytes = await rootBundle.load('assets/plan3d.jpg');

    final material = ArCoreMaterial(
      color: Colors.transparent,
      textureBytes: textureBytes.buffer.asUint8List(),
    );
    final cube = ArCoreCube(
      materials: [material],
      size: vector.Vector3(0.5,0.5,0.5),
    );
    final node = ArCoreNode(
      shape: cube,
      position: vector.Vector3(0, 0, 1)
    );
    arCoreController.addArCoreNodeToAugmentedImage(node, augmentedImage.index);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}