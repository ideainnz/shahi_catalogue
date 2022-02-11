import 'package:flutter/material.dart';
import 'package:shahi_catalogue/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // String name = '';
  // String email = '';
  // String subject = '';
  // String message = '';

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  // final Map<String, dynamic> formData = {
  //   'name': null,
  //   'email': null,
  //   'subject': null,
  //   'message': null,
  // };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: size.width < Constants.iphoneLimit
              ? Constants.iphoneLimit.toDouble()
              : Constants.ipadLimit.toDouble(),
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(Constants.appColor),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Contact Us'),
                Image.asset('assets/shahi_app_logo_white.png',
                    height: 25, width: 60),
              ],
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: initContactUs(context, size, _formKey),
            ),
          ),
          // floatingActionButton: FloatingActionButton.extended(
          //   onPressed: () {},
          //   label: Text('Submit'),
          //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          // ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          bottomNavigationBar: BottomAppBar(
            color: Colors.red.shade50,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width < Constants.ipadLimit ? 20 : 80,
                  vertical: 10),
              child: Container(
                width: size.width < Constants.ipadLimit
                    ? size.width - 50
                    : size.width - 800,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(Constants.appColor),
                    ),
                  ),
                  child: const Text('Submit'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // _formKey.currentState!.save(); //onSaved is called!
                      // print('VALIDATED' + name + email + subject + message);
                      print('VALIDATED' +
                          nameController.value.text +
                          emailController.value.text +
                          subjectController.value.text +
                          messageController.value.text);

                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: Constants.SUPPORT_EMAIL,
                        query: encodeQueryParameters(
                          <String, String>{
                            'subject': subjectController.value.text,
                            'body': messageController.value.text +
                                '\n\n\nFrom\nName: ' +
                                nameController.value.text +
                                '\nEmail: ' +
                                emailController.value.text,
                          },
                        ),
                      );

                      _launchEmail(emailLaunchUri.toString());
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  Widget initContactUs(
      BuildContext context, Size size, GlobalKey<FormState> _formKey) {
    double fontSizeHeading = size.width < Constants.iphoneLimit ? 17 : 19;
    double fontSizeText = size.width < Constants.iphoneLimit ? 14 : 15;
    double padding = size.width < Constants.ipadLimit ? 10 : 80;

    return Padding(
      padding: EdgeInsets.fromLTRB(padding, 30, padding, 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _initTextFormFieldWidget(nameController,
                hintText: 'Please enter your Name',
                labelText: 'Your Name',
                errorText: 'Please enter your Name',
                textInputType: TextInputType.name,
                size: size),
            _initTextFormFieldWidget(emailController,
                hintText: 'Please enter your Email',
                labelText: 'Your Email',
                errorText: 'Please enter your Email',
                textInputType: TextInputType.emailAddress,
                size: size,
                regex: emailRegex),
            _initTextFormFieldWidget(subjectController,
                hintText: 'Please enter Subject',
                labelText: 'Subject',
                errorText: 'Please enter Subject',
                maxLength: 100,
                textInputType: TextInputType.text,
                size: size),
            _initTextFormFieldWidget(messageController,
                hintText: 'Please enter your Message',
                labelText: 'Your Message',
                errorText: 'Please enter your Message',
                maxLength: 350,
                isMultiline: true,
                textInputType: TextInputType.multiline,
                size: size),
            SizedBox(
              height: 30,
            ),
            // Container(
            //   width: size.width < Constants.ipadLimit
            //       ? size.width - 50
            //       : size.width - 800,
            //   height: 45,
            //   child: ElevatedButton(
            //     style: ButtonStyle(
            //       backgroundColor: MaterialStateProperty.all(
            //         Color(Constants.appColor),
            //       ),
            //     ),
            //     child: const Text('Submit'),
            //     onPressed: () {
            //       if (_formKey.currentState!.validate()) {
            //         print('VALIDATED');
            //       }
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _initTextFormFieldWidget(TextEditingController fieldController,
      {String? hintText,
      String? labelText,
      String? errorText,
      int? maxLength = 80,
      bool isMultiline = false,
      TextInputType? textInputType = TextInputType.text,
      Size? size,
      RegExp? regex}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      // padding: EdgeInsets.all(0),
      child: Container(
        width: size!.width < Constants.ipadLimit
            ? size.width - 30
            : size.width - 500,
        child: TextFormField(
          textInputAction:
              isMultiline ? TextInputAction.done : TextInputAction.next,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            labelStyle: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black54,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black54,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black54,
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(
                  Constants.appColor,
                ),
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: TextStyle(
              // color: Color(Constants.appColor),
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          controller: fieldController,
          // onSaved: (value) {
          //   fieldValue = value!;
          // },
          validator: (value) {
            if (value == null || value.isEmpty) return errorText;
            if (textInputType == TextInputType.emailAddress &&
                !regex!.hasMatch(value)) {
              return 'Please insert a valid Email';
            }
            return null;
          },

          cursorColor: Color(Constants.appColor),
          maxLines: isMultiline ? 5 : 1,
          maxLength: maxLength,
          keyboardType: textInputType,
        ),
      ),
    );
  }

  Future<void> _launchEmail(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        // forceSafariVC: false,
        // forceWebView: false,
        // headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    subjectController.dispose();
    messageController.dispose();
  }
}
