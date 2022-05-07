import 'package:awesome_icons/awesome_icons.dart';
import 'package:bpp_shop/grocery%20shop/lib/ui/view/signIn/signIn.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import '../provider/googleSignInProvider.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ]
);

class emailLogin extends StatefulWidget {
  const emailLogin({Key? key}) : super(key: key);

  @override
  _emailLoginState createState() => _emailLoginState();
}

class _emailLoginState extends State<emailLogin> {
  bool _isLoggedIn = false;
  Map _userObj = {};
  AccessToken? _accessToken;

  Future<void> signIn() async {
    final LoginResult result = await FacebookAuth.i.login();
    if (result.status == LoginStatus.success) {
      _accessToken = result.accessToken;

      await FacebookAuth.i.getUserData();
    }
  }



  @override
  Widget build(BuildContext context) {
    //GoogleSignIn? user = _currentUser;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 25,
          ),
        ),
        title: Text(
          "Login",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child:
              Container(
        child: _isLoggedIn
            ? Column(
          children: [
            Image.network(_userObj["picture"]["data"]["url"]),
            Text(_userObj["name"]),
            Text(_userObj["email"]),
            TextButton(
                onPressed: () {
                  FacebookAuth.instance.logOut().then((value) {
                    setState(() {
                      _isLoggedIn = false;
                      _userObj = {};
                    });
                  });
                },
                child: Text("Logout"))
          ],
        )
            : Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                  primary: Color(0xff49639F),
                  onPrimary: Color(0xff49639F),
                  elevation: 3,
                  minimumSize: Size(100, 40),
                ),
            child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.facebookF,
                        size: 20, //Icon Size
                        color: Colors.white, //Color Of Icon
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Sign Up or Login with Facebook",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                      // IconButton(
                      //     onPressed: (){},
                      //     icon: Icon(Icons.facebook, size: 35,color: Colors.white),
                      // ),
                    ],
                  ),
                ),
            onPressed: () async {
              FacebookAuth.instance.login(
                  permissions: ["public_profile", "email"]).then((value) {
                FacebookAuth.instance.getUserData().then((userData) {
                  setState(() {
                    _isLoggedIn = true;
                    _userObj = userData;
                  });
                });
              });
            },
          ),
        ),
      ),
              //
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     primary: Color(0xff49639F),
              //     onPrimary: Color(0xff49639F),
              //     elevation: 3,
              //     minimumSize: Size(100, 40),
              //   ),
              //   onPressed:  () {
              //     FacebookAuth.instance.logOut().then((value) {
              //       setState(() {
              //         _isLoggedIn = false;
              //         _userObj = {};
              //       });
              //     });
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 60),
              //     child: Row(
              //       children: [
              //         Icon(
              //           FontAwesomeIcons.facebookF,
              //           size: 20, //Icon Size
              //           color: Colors.white, //Color Of Icon
              //         ),
              //         SizedBox(
              //           width: 8,
              //         ),
              //         Text(
              //           "Sign Up or Login with Facebook",
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 12,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         )
              //         // IconButton(
              //         //     onPressed: (){},
              //         //     icon: Icon(Icons.facebook, size: 35,color: Colors.white),
              //         // ),
              //       ],
              //     ),
              //   ),
              // ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.white,
                  elevation: 3,
                  minimumSize: Size(100, 40),
                ),
                onPressed: () {
                  final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.googleLogin();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.google,
                        size: 20, //Icon Size
                        color: Colors.black, //Color Of Icon
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sign Up or Login with Google",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Divider(
                    indent: 20.0,
                    endIndent: 10.0,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "or",
                  style: TextStyle(color: Colors.grey),
                ),
                Expanded(
                  child: Divider(
                    indent: 10.0,
                    endIndent: 20.0,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "PLEASE ENTER YOUR MOBILE PHONE NUMBER",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Image(image: AssetImage("images/bd flag.png")),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      //controller: myController,
                      decoration: InputDecoration(
                        labelText: '+88',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffE37D4E),
                  onPrimary: Color(0xffE37D4E),
                  elevation: 3,
                  minimumSize: Size(100, 40),
                ),
                onPressed: () {},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 120),
                  child: Row(
                    children: [
                      Text(
                        "SIGN UP / LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "This site is protected by reCAPTCHA and the Google",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 2,),
                Text(
                  "Privacy",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Policy",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 2,),
                Text("and",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 2,),
                Text(
                  "Terms of Service",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 2,),
                Text("apply",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
