
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
class Contactpage extends StatefulWidget {
  const Contactpage({super.key});

  @override
  State<Contactpage> createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              "Contact Us",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              "If You any queries get in touch with\n      us we will hope to help you!",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            InkWell(
            onTap: () {
              Uri  uri =Uri.parse("tel: +91 8733833348");
              launcher.launchUrl(uri);
            },
              child: Container(
                height: 60,
                width: 250,
                child: Row(
                  children: [
                    Icon(
                      Icons.phone_android,
                      size: 40,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "+918733833348",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(onTap: () {
              Uri  uri=Uri.parse("mailto: aayushpatel01411@gmail.com");
              launcher.launchUrl(uri);

            },
              child: Container(
                height: 60,
                width: 250,
                child: Row(
                  children: [
                    Icon(
                      Icons.mail_outline_outlined,
                      size: 40,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "info@xyzmail.com",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 350,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.blue)),
              child: Column(
                children: [
                  Text(
                    "Social Media",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),Divider(color: Colors.blue,indent: 0,endIndent: 0),
                  SizedBox(height: 17),
                  InkWell(onTap: () {
                    Uri  uri=Uri.parse("https://instagram.com");
                    launcher.launchUrl(uri);

                  },
                    child: Container(
                      height: 70,
                      width: 230,
                      child: Row(
                        children: [
                         Image.asset("assets/download (1).jpg"),
                          SizedBox(width: 20),
                          Text(
                            "Instagram",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 17),
                  InkWell(onTap: () {
                    Uri  uri=Uri.parse("https://linkedin.com");
                    launcher.launchUrl(uri);

                  },
                    child: Container(
                      height: 70,
                      width: 230,
                      child: Row(
                        children: [
                          Image.asset("assets/download.png"),
                          SizedBox(width: 20),
                          Text(
                            "Linkedin",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 17),
                  InkWell(onTap: () {
                    Uri  uri=Uri.parse("https://github.com");
                    launcher.launchUrl(uri);

                  },
                    child: Container(
                      height: 60,
                      width: 230,
                      child: Row(
                        children: [
                          Image.asset("assets/download (1).png"),
                          SizedBox(width: 20),
                          Text(
                            "Git hub",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
