import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
import 'package:flutter/material.dart';

class Architectview extends StatefulWidget {
  const Architectview({Key? key}) : super(key: key);

  @override
  _ArchitectviewState createState() => _ArchitectviewState();
}

class _ArchitectviewState extends State<Architectview> {
  late ArCoreController arCoreController;
  Map<int, ArCoreAugmentedImage> augmentedImagesMap = Map();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ArCoreView(
          onArCoreViewCreated: _onArCoreViewCreated,
          type: ArCoreViewType.AUGMENTEDIMAGES,
        ),
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) async {
    arCoreController = controller;
    arCoreController.onTrackingImage = _handleOnTrackingImage;
    //loadSingleImage();
    //OR
    loadSingleImage();
  }

  loadSingleImage() async {
    final ByteData bytes =
    await rootBundle.load('assets/plan.jpg');
    arCoreController.loadSingleAugmentedImage(
        bytes: bytes.buffer.asUint8List());
  }


  _handleOnTrackingImage(ArCoreAugmentedImage augmentedImage) {
    if (!augmentedImagesMap.containsKey(augmentedImage.index)) {
      augmentedImagesMap[augmentedImage.index] = augmentedImage;
      _add3D(augmentedImage);
    }
  }

  Future _add3D(ArCoreAugmentedImage augmentedImage) async {
    final ByteData textureBytes = await rootBundle.load('assets/uploads_files_2160787_glb.glb');

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
