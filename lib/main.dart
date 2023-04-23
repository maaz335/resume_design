import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:modern_form_esys_flutter_share/modern_form_esys_flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screenshot/screenshot.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(fontFamily: "Arial"),
        debugShowCheckedModeBanner: false,
        home: resume_design(),
      ),
    );

class resume_design extends StatefulWidget {
  @override
  State<resume_design> createState() => _resume_designState();
}

class _resume_designState extends State<resume_design> {
  Permission? permission;
  String firstName = "Sourabh".toUpperCase();
  String lastName = "Mehndiratta".toUpperCase();
  String gender = "Male";
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

  String getDateTime() {
    DateTime now = DateTime(1990);
    String dateOfBirth = DateFormat('yyyy-MM-dd').format(now);
    return dateOfBirth;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Screenshot(
          controller: screenshotController,
          child: Stack(
            children: [
              Container(
                color: Color(0xFF38B9F4),
                child: Column(
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
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                      ),
                      // Container(
                      //   height: MediaQuery.of(context).size.height * 0.159,
                      //   width: MediaQuery.of(context).size.width * 0.3,
                      //   decoration: BoxDecoration(
                      //       border: Border.all(
                      //         color: Colors.white,
                      //       ),
                      //       borderRadius: BorderRadius.only(
                      //         topRight: Radius.circular(120),
                      //         topLeft: Radius.circular(150),
                      //         bottomLeft: Radius.circular(80),
                      //       )),
                      // ),
                    ],
                  ),
                ],
              ),
              Column(
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
                        "     BIODATA",
                        style: TextStyle(
                            color: Color(0xFF48BAEC),
                            fontSize: MediaQuery.of(context).size.height*0.028,
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
                            fontSize: MediaQuery.of(context).size.height*0.028,
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
                            fontSize: MediaQuery.of(context).size.height*0.017, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        gender,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.016,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Date of birth: ",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.017, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        getDateTime(),
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.016,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Age: ",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.017, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        age,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.016,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Religion: ",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.017, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        religion,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.016,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Kundli Dosh: ",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.017, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        kundliDosh,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.016,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Matrial Status: ",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.017, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        matrialStatus,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.016,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Diet: ",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.017, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        diet,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.016,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Drink: ",
                        style: TextStyle(
                            fontSize:MediaQuery.of(context).size.height*0.017, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        drink,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.016,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Smoke: ",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.017, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        smoke,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.016,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Disability: ",
                        style: TextStyle(
                            fontSize:
                            MediaQuery.of(context).size.height*0.017,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        disability,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.016,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "        Height: ",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.017, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        height,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.016,
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
                        "     ABOUT ME",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height*0.027),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          padding: EdgeInsets.symmetric(
                              horizontal:
                              MediaQuery.of(context).size.height*0.025),
                          child: Text(
                            aboutMe,
                            softWrap: false,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.017),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "    EXPECTATION",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height*0.027),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          padding: EdgeInsets.symmetric(
                              horizontal:
                              MediaQuery.of(context).size.height*0.025),
                          child: Text(
                            expectations,
                            softWrap: false,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.017),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
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
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.0512),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            color: Color(0xFF38B9F4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width *
                              0.12288, // Image radius
                          backgroundImage: NetworkImage(imageUrl),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height*0.35,
                      ),
                      Text(
                        "    Education",
                        style: TextStyle(
                            fontSize:MediaQuery.of(context).size.height*0.019, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height*0.35,
                      ),
                      Text(
                        "     $educaion\n\n\n",
                        style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.017, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height*0.35,
                      ),
                      Text(
                        "         Income",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.019, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height*0.35,
                      ),
                      Text(
                        "          $income\n\n\n",
                        style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.017, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height*0.35,
                      ),
                      Text(
                        "   Profession",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height*0.019, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height*0.35,
                      ),
                      Text(
                        "   $profession\n\n",
                        style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.017, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height*0.26,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CONTACT',
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height*0.027, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.015,
                          ),
                          Row(
                            children: [
                              Icon(Icons.wifi_calling_3_sharp),
                              Text(
                                "  $phone",
                                style: TextStyle(
                                    color: Colors.white, fontSize: MediaQuery.of(context).size.height*0.017),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.email_outlined),
                              Text(
                                "  $email",
                                style: TextStyle(
                                    color: Colors.white, fontSize: MediaQuery.of(context).size.height*0.015),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.house_outlined),
                              Text(
                                "  $address",
                                style: TextStyle(
                                    color: Colors.white, fontSize: MediaQuery.of(context).size.height*0.015),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.28,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height*0.01,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Image(
                          image: AssetImage("assets/logo.jpeg"),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Image(
                          image: AssetImage("assets/qrcoderr.png"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.005,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height*0.2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      onPressed: createPDF,
                      child: Text("Download"),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height*0.2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      onPressed: _takeScreenshotandShare,
                      child: Text("Share"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _takeScreenshotandShare([bool share = true]) async {
    _imageFile = null;
    screenshotController
        .capture(delay: Duration(milliseconds: 10), pixelRatio: 2.0)
        .then((Uint8List? image) async {
      setState(() {
        _imageFile = image;
      });
      final directory = (await getExternalStorageDirectory())!
          .path; // Use external storage directory
      print(directory);
      Uint8List pngBytes = _imageFile!;
      File imgFile = File('$directory/screenshot.png');
      imgFile.writeAsBytes(pngBytes);
      print("File Saved to Gallery");

      if (share) {
        await Share.file('Maaz', 'screenshot.png', pngBytes, 'image/png');
      }
    }).catchError((onError) {
      print(onError);
    });
  }

  createPDF() async {
    await _takeScreenshotandShare(false);

    PdfDocument document = PdfDocument();
    document.pageSettings.setMargins(0);
    final page = document.pages.add();
    final imageBytes = await readImageData();
    final imageBitmap = PdfBitmap(imageBytes);

    final imageSize = Size(imageBitmap.width.toDouble(), imageBitmap.height.toDouble());
    page.graphics.drawImage(
        imageBitmap, Rect.fromLTWH(0, 0, imageSize.width,imageSize.height ));//(page.size.width - (imageSize.width / imageSize.height * page.size.height)) /2  //imageSize.width / imageSize.height * page.size.height  //page.size.height

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
    final directory = (await getExternalStorageDirectory())!.path;
    final file = File('$directory/screenshot.png');
    return await file.readAsBytes();
  }
}
