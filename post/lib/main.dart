import 'dart:io';

import "package:flutter/material.dart";
import 'package:image_picker/image_picker.dart';

void main(){
  runApp(
      const MaterialApp(
    home: CreatePost(),
  ));
}

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  static const String routeName = '/CreatePost';

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  List<File> _images = [];
  TextEditingController postText = TextEditingController();
  final imagePicker = ImagePicker();

  Future getImage() async {
    final img = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _images.add(File(img!.path));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Card(
              elevation: 2.0,
              margin: const EdgeInsets.all(0),
              child: ListTile(
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                    )),
                title: const Text(
                  "New Post",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                contentPadding: const EdgeInsets.all(0),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  TextField(
                    controller: postText,
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                    minLines: 1,
                    maxLines: null,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "What do you want to talk about?",
                    ),
                  ),
                  Column(
                    children: _images
                        .map(
                          (e) => Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Stack(
                            children: [
                              Image.file(e),
                              Container(
                                color:Colors.grey.shade300.withOpacity(0.8),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _images.remove(e);
                                    });
                                  },
                                  icon: const Icon(Icons.close_rounded,),
                                ),
                              ),
                            ]),
                      ),
                    )
                        .toList(),
                  ),
                ]),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey, width: 1.0),
                ),
              ),
              padding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    IconButton(
                        onPressed: () {
                          getImage();
                        },
                        icon: const Icon(Icons.camera_alt)),
                  ]),
                  TextButton(
                    onPressed: () {
                      //_images stores all the text so export them by this variable
                      print(postText.text);
                    },
                    style: TextButton.styleFrom(
                      elevation: 2.0,
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "  Post  ",
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}