import 'package:flutter/material.dart';
import 'package:login_firebase/theme.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({super.key});

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  bool isHiddenPassword = true;
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  Widget header() {
    return Container(
      alignment: Alignment.centerLeft,
      margin:
          EdgeInsets.only(left: alignmentStyle, right: alignmentStyle, top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Belum Punya Akun..?',
            style: poppinsTextStyle.copyWith(
              fontSize: 25,
              fontWeight: semiBold,
              color: secondaryColor,
            ),
          ),
          Text(
            'Yuk daftar dulu',
            style: poppinsTextStyle.copyWith(
              fontSize: 17,
              fontWeight: medium,
              color: thirdColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget usernameButton() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(
        left: alignmentStyle,
        right: alignmentStyle,
        top: 50,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [defaultShadow],
        color: Colors.white,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.person_outline_rounded,
            size: 15,
            color: thirdColor,
          ),
          hintText: 'Username',
          hintStyle: poppinsTextStyle.copyWith(
            fontSize: 13,
            fontWeight: medium,
            color: thirdColor,
          ),
        ),
        controller: emailInput,
      ),
    );
  }

  Widget emailButton() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(
        left: alignmentStyle,
        right: alignmentStyle,
        top: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [defaultShadow],
        color: Colors.white,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.email_outlined,
            size: 15,
            color: thirdColor,
          ),
          hintText: 'Alamat email',
          hintStyle: poppinsTextStyle.copyWith(
            fontSize: 13,
            fontWeight: medium,
            color: thirdColor,
          ),
        ),
        controller: emailInput,
      ),
    );
  }

  Widget passwordButton() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(
        left: alignmentStyle,
        right: alignmentStyle,
        top: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [defaultShadow],
        color: Colors.white,
      ),
      child: TextFormField(
        obscureText: isHiddenPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.lock_outlined,
            size: 15,
            color: thirdColor,
          ),
          suffixIcon: InkWell(
              onTap: _togglePasswordView,
              child: isHiddenPassword
                  ? Icon(Icons.visibility_off_outlined,
                      size: 15, color: thirdColor)
                  : Icon(Icons.visibility_outlined,
                      size: 15, color: thirdColor)),
          hintText: 'Password ',
          hintStyle: poppinsTextStyle.copyWith(
            fontSize: 13,
            fontWeight: medium,
            color: thirdColor,
          ),
        ),
        controller: passwordInput,
      ),
    );
  }

  Widget masukButton() {
    return Padding(
      padding:
          EdgeInsets.only(left: alignmentStyle, right: alignmentStyle, top: 50),
      child: SizedBox(
        height: 56,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            'Daftar',
            style: poppinsTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget textDaftar() {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sudah punya akun?',
            style: poppinsTextStyle.copyWith(
              fontSize: 13,
              fontWeight: medium,
              color: thirdColor,
            ),
          ),
          const SizedBox(width: 3),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Log In',
              style: poppinsTextStyle.copyWith(
                fontSize: 13,
                fontWeight: semiBold,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            usernameButton(),
            emailButton(),
            passwordButton(),
            masukButton(),
            textDaftar(),
          ],
        ),
      ),
    );
  }

  void _togglePasswordView() {
    // if (isHiddenPassword == true) {
    //   isHiddenPassword = false;
    // } else {
    //   isHiddenPassword = true;
    // }

    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
