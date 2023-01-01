import 'package:flutter/material.dart';
import 'package:login_firebase/singup_page.dart';
import 'package:login_firebase/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            'Assalamualaikum...',
            style: poppinsTextStyle.copyWith(
              fontSize: 25,
              fontWeight: semiBold,
              color: secondaryColor,
            ),
          ),
          Text(
            'Yuk log in dulu',
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

  Widget emailButton() {
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

  Widget lupaPassword() {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(
        top: 15,
        left: alignmentStyle,
        right: alignmentStyle,
      ),
      child: Text(
        'Lupa Password',
        style: poppinsTextStyle.copyWith(
          fontSize: 13,
          fontWeight: medium,
          color: thirdColor,
        ),
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
            'Masuk',
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
            'Belum punya akun?',
            style: poppinsTextStyle.copyWith(
              fontSize: 13,
              fontWeight: medium,
              color: thirdColor,
            ),
          ),
          const SizedBox(width: 3),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SingupPage()));
            },
            child: Text(
              'Daftar',
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

  Widget fbButton() {
    return Padding(
      padding:
          EdgeInsets.only(left: alignmentStyle, right: alignmentStyle, top: 50),
      child: SizedBox(
        height: 56,
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: fourthColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          icon: const Icon(Icons.facebook_outlined, size: 18),
          label: Text(
            'Continue With Facebook',
            style: poppinsTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget googleButton() {
    return Container(
      margin:
          EdgeInsets.only(left: alignmentStyle, right: alignmentStyle, top: 15),
      height: 56,
      decoration: BoxDecoration(
        boxShadow: [defaultShadow],
      ),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logos_google-icon.png', height: 15),
            const SizedBox(width: 12),
            Text(
              'Continue With Google',
              style: poppinsTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
                color: thirdColor,
              ),
            ),
          ],
        ),
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
            emailButton(),
            passwordButton(),
            lupaPassword(),
            masukButton(),
            textDaftar(),
            fbButton(),
            googleButton(),
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
