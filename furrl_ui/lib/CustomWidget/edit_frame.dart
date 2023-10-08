import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:furrl_ui/Constants/named_routes.dart';
import 'package:furrl_ui/CustomWidget/buttons.dart';
import 'package:furrl_ui/UI/Colors/custom_colors.dart';
import 'package:image_picker/image_picker.dart';

class EditFrameWidget extends StatefulWidget {
  const EditFrameWidget({Key? key}) : super(key: key);

  @override
  State<EditFrameWidget> createState() => _EditFrameWidgetState();
}

class _EditFrameWidgetState extends State<EditFrameWidget> {
  final List<XFile> _imageList = [];
  final ImagePicker _picker = ImagePicker();
  final List<Offset> _offset = List<Offset>.generate(10, (i) => Offset.zero);
  final List<Offset> _initialFocalPoint =
      List<Offset>.generate(10, (i) => Offset.zero);
  final List<Offset> _sessionOffset =
      List<Offset>.generate(10, (i) => Offset.zero);
  final List<double> _scale = List<double>.generate(10, (i) => 1.0);
  final List<double> _initialScale = List<double>.generate(10, (i) => 1.0);
  final GlobalKey globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return _imageList.isNotEmpty
        ? Column(
            children: [
              Container(
                  clipBehavior: Clip.antiAlias,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height - 300,
                  decoration:
                      const BoxDecoration(color: CustomColors.mediumGrey),
                  child: RepaintBoundary(
                    key: globalKey,
                    child: Stack(
                        fit: StackFit.expand,
                        clipBehavior: Clip.antiAlias,
                        children: topMost()),
                  )),
              const SizedBox(height: 10),
              SolidButton(
                title: 'Save',
                onPress: () async {
                  Uint8List? image = await captureWidget();
                  _didPushButton(image);

                },
              ),
              const SizedBox(height: 10),
              HollowButton(
                  title: 'Cancel',
                  onPress: () {
                    Navigator.pop(context);
                  })
            ],
          )
        : SizedBox(
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: GestureDetector(
                  onTap: () {
                    selectImages();
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundColor: CustomColors.grey,
                          radius: 70,
                          child: Icon(Icons.photo_library_outlined ,size: 60,color: Colors.white,)),
                      SizedBox(height: 20),
                      Text('Upload Photos from Device')
                    ],
                  )),
            ),
          );
  }
void _didPushButton(image){
  Navigator.pushNamed(context, NamedRoutes.profile,
      arguments: image);
}
  void selectImages() async {
    final List<XFile> selectedImages = await _picker.pickMultiImage();
    if (selectedImages.isNotEmpty) {
      _imageList.addAll(selectedImages);
    }
    setState(() {});
  }

  void reOrderList(i) {
    final temp = _imageList[i];
    setState(() {
      _imageList[i] = _imageList[0];
      _imageList[0] = temp;
    });
  }

  Future<Uint8List?> captureWidget() async {
    final RenderRepaintBoundary boundary =
        globalKey.currentContext?.findRenderObject() as RenderRepaintBoundary;

    final ui.Image image = await boundary.toImage();

    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);

    final Uint8List? pngBytes = byteData?.buffer.asUint8List();

    return pngBytes;
  }

  List<Widget> topMost() {
    return List.generate(_imageList.length, (index) {
      return GestureDetector(
        onScaleStart: (details) {
          _initialFocalPoint[index] = details.focalPoint;
          _initialScale[index] = _scale[index];
        },
        onScaleUpdate: (details) {
          setState(() {
            _sessionOffset[index] =
                details.focalPoint - _initialFocalPoint[index];
            _scale[index] = _initialScale[index] * details.scale;
          });
        },
        onScaleEnd: (details) {
          setState(() {
            _offset[index] += _sessionOffset[index];
            _sessionOffset[index] = Offset.zero;
            // reOrderList(index);
          });
        },
        child: Transform.translate(
          offset: _offset[index] + _sessionOffset[index],
          child: Transform.scale(
            scale: _scale[index],
            child: Image.file(
              File(_imageList[index].path),
            ),
          ),
        ),
      );
    });
  }
}
