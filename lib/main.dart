import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:modern_form_esys_flutter_share/modern_form_esys_flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screenshot/screenshot.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:open_file/open_file.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: resume_design(),
      ),
    );

class resume_design extends StatefulWidget {
  @override
  State<resume_design> createState() => _resume_designState();
}

class _resume_designState extends State<resume_design> {
  String firstName = "Sourabh".toUpperCase();
  String lastName = "Mehndiratta".toUpperCase();
  String gender = "Male";
  DateTime dateOfBirth = DateTime(1990);
  String age = '30';
  String religion = "Hindu";
  String kundliDosh = "Manglik";
  String matrialStatus = "Unmarried";
  String diet = "Vegitarian";
  String drink = "Occassionally";
  String smoke = "No";
  String disability = "Normal";
  String height = '5.6\"';
  String aboutMe =
      "TextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextText";
  String expectations =
      "TextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextText";
  String imageUrl =
      "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=2000";
  String educaion = "Btech";
  String income = "3-5 Lakh";
  String profession = "Private Job";
  String phone = "03012985335";
  String email = "mmaazahmad24@gmail.com";
  String address = 'H/10,Lane05,DHA2';
  Uint8List? _imageFile;
  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: screenshotController,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                color: Color(0xFF38B9F4),
                child: ListView(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(58),
                                  bottomRight: Radius.circular(58))),
                          width: MediaQuery.of(context).size.width * .75,
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .45,
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(70),
                                  bottomLeft: Radius.circular(70))),
                          width: MediaQuery.of(context).size.width * .55,
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.459,
                          width: MediaQuery.of(context).size.width * .55,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(150),
                                bottomRight: Radius.circular(120),
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              ListView(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.159,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(120),
                              topLeft: Radius.circular(150),
                              bottomLeft: Radius.circular(80),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              ListView(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.095,
                      ),
                      Text(
                        "     MATRIMONIAL\n"
                        "     DATA",
                        style: TextStyle(
                            color: Color(0xFF48BAEC),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.095,
                      ),
                      Text(
                        "     $firstName\n"
                        "     $lastName",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    children: [
                      Text(
                        "        Gender: ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        gender,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Date of birth: ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        dateOfBirth.toString(),
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Age: ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        age,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Religion: ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        religion,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Kundli Dosh: ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        kundliDosh,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Matrial Status: ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        matrialStatus,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Diet: ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        diet,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Drink: ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        drink,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Smoke: ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        smoke,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Disability: ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        disability,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Height: ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        height,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  Row(
                    children: [
                      Text(
                        "     About Me",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            aboutMe,
                            softWrap: false,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "     EXPECTATION",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            expectations,
                            softWrap: false,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ListView(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            color: Color(0xFF38B9F4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: CircleAvatar(
                          radius: 48, // Image radius
                          backgroundImage: NetworkImage(imageUrl),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ListView(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .75,
                      ),
                      Text(
                        "    Education",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .75,
                      ),
                      Text(
                        "     $educaion\n\n\n",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .75,
                      ),
                      Text(
                        "         Income",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .75,
                      ),
                      Text(
                        "           $income\n\n\n",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .75,
                      ),
                      Text(
                        "   Profession",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .75,
                      ),
                      Text(
                        "    $profession\n\n",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .54,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CONTACT',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Icon(Icons.wifi_calling_3_sharp),
                              Text(
                                "  $phone",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.email_outlined),
                              Text(
                                "  $email",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.house_outlined),
                              Text(
                                "  $address",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.38,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(
                        onPressed: createPDF,
                        child: Text("Download"),
                      )),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(
                        onPressed: _takeScreenshotandShare,
                        child: Text("Share"),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _takeScreenshotandShare() async {
    _imageFile = null;
    screenshotController
        .capture(delay: Duration(milliseconds: 10), pixelRatio: 2.0)
        .then((Uint8List? image) async {
      setState(() {
        _imageFile = image;
      });
      final directory = (await getExternalStorageDirectory())!.path; // Use external storage directory
      Uint8List pngBytes = _imageFile!;
      File imgFile = File('$directory/screenshot.png');
      imgFile.writeAsBytes(pngBytes);
      print("File Saved to Gallery");
      await Share.file('Maaz', 'screenshot.png', pngBytes, 'image/png');
    }).catchError((onError) {
      print(onError);
    });
  }


  createPDF() async {
    PdfDocument document = PdfDocument();
    final page = document.pages.add();

    final imageBytes = await readImageData();
    final image = PdfBitmap(imageBytes);
    final imageSize = Size(image.width.toDouble(), image.height.toDouble());
    page.graphics.drawImage(image, Rect.fromLTWH(0, 0, imageSize.width, imageSize.height));
    List<int> bytes = await document.save();
    document.dispose();

    await saveAndLaunchFile(bytes, "Resume.pdf");
  }

  Future<void> saveAndLaunchFile(List<int> bytes, String fileName) async {
    final path = (await getExternalStorageDirectory())!.path;
    final file = File('$path/$fileName');
    await file.writeAsBytes(bytes, flush: true);
    OpenFile.open("$path/$fileName");
  }

  Future<Uint8List> readImageData() async {
    final directory = (await getApplicationDocumentsDirectory()).path;
    final file = File('$directory/screenshot.png');
    return await file.readAsBytes();
  }
}
