import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:haseeb_s_application/core/firebase.dart';
import 'package:haseeb_s_application/provider/auth.dart';
import 'package:haseeb_s_application/provider/patients.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

import './widgets/new_profile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class NewProfileScreen extends StatefulWidget {
  static const routeName = '/newProfileScreen';
  @override
  State<NewProfileScreen> createState() => _NewProfileScreenState();
}

class _NewProfileScreenState extends State<NewProfileScreen> {
  var genderArr = ['male', 'female', 'other'];

  var disorderArray = ['low', 'mild', 'severe'];

  final GlobalKey<FormState> _formKey = GlobalKey();

  var _addedPatient = Patient('', '', 0, '', true, '', '', '', '', '', '');
  var _genderRadio = '';
  var _disorderLevelRadio = '';
  String _imageUrl = '';
  var _uploadedFile;
  var _initValues = {
    'name': '',
    'age': '',
    'gender': '',
    'disorderLevel': '',
    'progress': '',
    'bool': '',
    'address': '',
    'contact': '',
    'profileImage': '',
    'email': ''
  };
  var _isloading = false;
  var _authData;
  var _therapistId;
  @override
  void initState() {
    FirebaseInit.prefs.then((value) {
      setState(() {
        _therapistId = value.getString('_id');
      });
    });

    print(_therapistId);
    super.initState();
  }

  Future<void> uploadImage() async {
    final _imagePicker = ImagePicker();
    XFile image;
    //Check Permissions
    var status = await Permission.photos.request();
    print(status);
    var permissionStatus = await Permission.photos.status;

    if (!permissionStatus.isGranted) {
      //Select Image
      image = (await _imagePicker.pickImage(source: ImageSource.gallery))!;
      print(image);
      if (image != null) {
        setState(() {
          _uploadedFile = File(image.path);
        });
      }
    } else {
      print('Permission not granted. Try Again with permission access');
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text('An error occured'),
              content: Text(message),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Text('ok'))
              ],
            ));
  }

  void _submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (_genderRadio == '') {
      _showErrorDialog('Please select the gender.');
      return;
    } else if (_disorderLevelRadio == '') {
      _showErrorDialog('Please select the disorder level.');
      return;
    } else if (_uploadedFile == null) {
      _showErrorDialog('Please select an image');
      return;
    } else {
      setState(() {
        _isloading = true;
      });
      try {
        _formKey.currentState?.save();

        final _firebaseStorage = FirebaseStorage.instance;

        var imageRef = await _firebaseStorage
            .ref()
            .child('images/${_uploadedFile.path.split('/').last}');
        await imageRef.putFile(_uploadedFile);

        var downloadUrl = await imageRef.getDownloadURL();
        _imageUrl = downloadUrl;
      } catch (e) {
        setState(() {
          _isloading = false;
        });
        print(e);
      }
    }

    print(_imageUrl);

    _addedPatient = Patient(
        _addedPatient.id,
        _addedPatient.name,
        _addedPatient.age,
        _disorderLevelRadio,
        _addedPatient.active,
        _addedPatient.contact,
        _imageUrl,
        _addedPatient.email,
        _addedPatient.address,
        _genderRadio,
        _therapistId);

    print(_addedPatient.id);
    print(_addedPatient.name);
    print(_addedPatient.age);
    print(_disorderLevelRadio);
    print(_addedPatient.active);
    print(_addedPatient.active);
    print(_addedPatient.contact);
    print(_imageUrl);
    print(_addedPatient.email);
    print(_addedPatient.address);
    print(_genderRadio);
    print(_therapistId);
    print(_addedPatient.therapistId);
    try {
      await Provider.of<Patients>(context, listen: false)
          .addPatient(_addedPatient);
      setState(() {
        _isloading = false;
      });
      Navigator.of(context).pop();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.blue700,
        elevation: 0,
      ),
      backgroundColor: ColorConstant.whiteA700,
      body: _isloading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: getVerticalSize(
                              10,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.blue700,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: uploadImage,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      57,
                                    ),
                                    bottom: getVerticalSize(
                                      121,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              117,
                                            ),
                                            right: getHorizontalSize(
                                              117,
                                            ),
                                            bottom: getVerticalSize(15)),
                                        child: Container(
                                          height: getVerticalSize(
                                            23,
                                          ),
                                          width: getHorizontalSize(
                                            28,
                                          ),
                                          child: _uploadedFile != null
                                              ? Icon(
                                                  Icons.check,
                                                  color: ColorConstant.green200,
                                                )
                                              : SvgPicture.asset(
                                                  ImageConstant.imgVector3,
                                                  fit: BoxFit.contain,
                                                ),
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          157,
                                        ),
                                        margin: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            117,
                                          ),
                                          right: getHorizontalSize(
                                            116,
                                          ),
                                        ),
                                        child: Text(
                                          _uploadedFile != null
                                              ? "Image has been uploaded"
                                              : "Add profile picture",
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: getVerticalSize(
                              170,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                35,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    45,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          20,
                                        ),
                                        right: getHorizontalSize(
                                          20,
                                        ),
                                      ),
                                      child: Text(
                                        "Patient Name:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getVerticalSize(
                                          45,
                                        ),
                                        width: getHorizontalSize(
                                          350,
                                        ),
                                        margin: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20,
                                          ),
                                          top: getVerticalSize(
                                            11,
                                          ),
                                          right: getHorizontalSize(
                                            20,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray200,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                        ),
                                        child: TextFormField(
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                            errorBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.only(
                                                left: getHorizontalSize(16),
                                                top: getHorizontalSize(16)),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  5,
                                                ),
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  5,
                                                ),
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                          style: TextStyle(
                                            color: ColorConstant.gray600,
                                            fontSize: getFontSize(
                                              16.0,
                                            ),
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              _showErrorDialog(
                                                  'Patient Name is required.');
                                            }
                                            return null;
                                          },
                                          onSaved: (value) {
                                            _addedPatient = Patient(
                                                _addedPatient.id,
                                                value!,
                                                _addedPatient.age,
                                                _addedPatient.disorderLevel,
                                                _addedPatient.active,
                                                _addedPatient.contact,
                                                _addedPatient.profileImage,
                                                _addedPatient.email,
                                                _addedPatient.address,
                                                _addedPatient.gender,
                                                _addedPatient.therapistId);
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(10),
                                        left: getHorizontalSize(
                                          20,
                                        ),
                                        right: getHorizontalSize(
                                          20,
                                        ),
                                      ),
                                      child: Text(
                                        "Age:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getVerticalSize(
                                          45,
                                        ),
                                        width: getHorizontalSize(
                                          350,
                                        ),
                                        margin: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20,
                                          ),
                                          top: getVerticalSize(
                                            11,
                                          ),
                                          right: getHorizontalSize(
                                            20,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray200,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                        ),
                                        child: TextFormField(
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: getHorizontalSize(16),
                                                top: getHorizontalSize(16)),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  5,
                                                ),
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  5,
                                                ),
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                          style: TextStyle(
                                            color: ColorConstant.gray600,
                                            fontSize: getFontSize(
                                              16.0,
                                            ),
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          keyboardType: TextInputType.number,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              _showErrorDialog(
                                                  'Age is required.');
                                            }
                                            return null;
                                          },
                                          onSaved: (value) {
                                            _addedPatient = Patient(
                                                _addedPatient.id,
                                                _addedPatient.name,
                                                int.parse(value!),
                                                _addedPatient.disorderLevel,
                                                _addedPatient.active,
                                                _addedPatient.contact,
                                                _addedPatient.profileImage,
                                                _addedPatient.email,
                                                _addedPatient.address,
                                                _addedPatient.gender,
                                                _addedPatient.therapistId);
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          20,
                                        ),
                                        top: getVerticalSize(
                                          10,
                                        ),
                                        right: getHorizontalSize(
                                          20,
                                        ),
                                      ),
                                      child: Text(
                                        "Email:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getVerticalSize(
                                          45,
                                        ),
                                        width: getHorizontalSize(
                                          350,
                                        ),
                                        margin: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20,
                                          ),
                                          top: getVerticalSize(
                                            10,
                                          ),
                                          right: getHorizontalSize(
                                            20,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray200,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                        ),
                                        child: TextFormField(
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: getHorizontalSize(16),
                                                top: getHorizontalSize(16)),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  5,
                                                ),
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  5,
                                                ),
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                          style: TextStyle(
                                            color: ColorConstant.gray600,
                                            fontSize: getFontSize(
                                              16.0,
                                            ),
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              _showErrorDialog(
                                                  'Email is required.');
                                            } else if (!value.contains('@')) {
                                              _showErrorDialog(
                                                  'The email is invalid.');
                                            }
                                            return null;
                                          },
                                          onSaved: (value) {
                                            _addedPatient = Patient(
                                                _addedPatient.id,
                                                _addedPatient.name,
                                                _addedPatient.age,
                                                _addedPatient.disorderLevel,
                                                _addedPatient.active,
                                                _addedPatient.contact,
                                                _addedPatient.profileImage,
                                                value.toString(),
                                                _addedPatient.address,
                                                _addedPatient.gender,
                                                _addedPatient.therapistId);
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          20,
                                        ),
                                        top: getVerticalSize(
                                          10,
                                        ),
                                        right: getHorizontalSize(
                                          20,
                                        ),
                                      ),
                                      child: Text(
                                        "Phone no.:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getVerticalSize(
                                          45,
                                        ),
                                        width: getHorizontalSize(
                                          350,
                                        ),
                                        margin: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20,
                                          ),
                                          top: getVerticalSize(
                                            10,
                                          ),
                                          right: getHorizontalSize(
                                            20,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray200,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                        ),
                                        child: TextFormField(
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: getHorizontalSize(16),
                                                top: getHorizontalSize(16)),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  5,
                                                ),
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  5,
                                                ),
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                          style: TextStyle(
                                            color: ColorConstant.gray600,
                                            fontSize: getFontSize(
                                              16.0,
                                            ),
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          keyboardType: TextInputType.number,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              _showErrorDialog(
                                                  'Phone no. is required.');
                                            }
                                            return null;
                                          },
                                          onSaved: (value) {
                                            _addedPatient = Patient(
                                                _addedPatient.id,
                                                _addedPatient.name,
                                                _addedPatient.age,
                                                _addedPatient.disorderLevel,
                                                _addedPatient.active,
                                                value.toString(),
                                                _addedPatient.profileImage,
                                                _addedPatient.email,
                                                _addedPatient.address,
                                                _addedPatient.gender,
                                                _addedPatient.therapistId);
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          20,
                                        ),
                                        top: getVerticalSize(
                                          10,
                                        ),
                                        right: getHorizontalSize(
                                          20,
                                        ),
                                      ),
                                      child: Text(
                                        "Address:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getVerticalSize(
                                          45,
                                        ),
                                        width: getHorizontalSize(
                                          350,
                                        ),
                                        margin: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20,
                                          ),
                                          top: getVerticalSize(
                                            10,
                                          ),
                                          right: getHorizontalSize(
                                            20,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray200,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                        ),
                                        child: TextFormField(
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: getHorizontalSize(16),
                                                top: getHorizontalSize(16)),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  5,
                                                ),
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  5,
                                                ),
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                          style: TextStyle(
                                            color: ColorConstant.gray600,
                                            fontSize: getFontSize(
                                              16.0,
                                            ),
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              _showErrorDialog(
                                                  'Address is required.');
                                            }
                                            return null;
                                          },
                                          onSaved: (value) {
                                            _addedPatient = Patient(
                                                _addedPatient.id,
                                                _addedPatient.name,
                                                _addedPatient.age,
                                                _addedPatient.disorderLevel,
                                                _addedPatient.active,
                                                _addedPatient.contact,
                                                _addedPatient.profileImage,
                                                _addedPatient.email,
                                                value.toString(),
                                                _addedPatient.gender,
                                                _addedPatient.therapistId);
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          23,
                                        ),
                                        top: getVerticalSize(
                                          19,
                                        ),
                                        right: getHorizontalSize(
                                          23,
                                        ),
                                      ),
                                      child: Text(
                                        "Gender:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            12,
                                          ),
                                          top: getVerticalSize(
                                            15,
                                          ),
                                          right: getHorizontalSize(
                                            25,
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              title: Text(
                                                "Male",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              leading: Radio(
                                                activeColor:
                                                    ColorConstant.amber700,
                                                value: 'male',
                                                groupValue: _genderRadio,
                                                toggleable: true,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    _genderRadio = value!;
                                                  });
                                                },
                                              ),
                                            ),
                                            ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              title: Text(
                                                "Female",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              leading: Radio(
                                                activeColor:
                                                    ColorConstant.amber700,
                                                value: 'female',
                                                groupValue: _genderRadio,
                                                toggleable: true,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    _genderRadio = value!;
                                                  });
                                                },
                                              ),
                                            ),
                                            ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              title: Text(
                                                "Other",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              leading: Radio(
                                                activeColor:
                                                    ColorConstant.amber700,
                                                value: 'other',
                                                groupValue: _genderRadio,
                                                toggleable: true,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    _genderRadio = value!;
                                                  });
                                                },
                                              ),
                                            )
                                          ],
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          23,
                                        ),
                                        top: getVerticalSize(
                                          21,
                                        ),
                                        right: getHorizontalSize(
                                          23,
                                        ),
                                      ),
                                      child: Text(
                                        "Disorder level:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            15,
                                          ),
                                          top: getVerticalSize(
                                            19,
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              title: Text(
                                                "Low",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              leading: Radio(
                                                activeColor:
                                                    ColorConstant.amber700,
                                                value: 'low',
                                                groupValue: _disorderLevelRadio,
                                                toggleable: true,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    _disorderLevelRadio =
                                                        value!;
                                                  });
                                                },
                                              ),
                                            ),
                                            ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              title: Text(
                                                "Mild",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              leading: Radio(
                                                activeColor:
                                                    ColorConstant.amber700,
                                                value: 'mild',
                                                groupValue: _disorderLevelRadio,
                                                toggleable: true,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    _disorderLevelRadio =
                                                        value!;
                                                  });
                                                },
                                              ),
                                            ),
                                            ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              title: Text(
                                                "Severe",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              leading: Radio(
                                                activeColor:
                                                    ColorConstant.amber700,
                                                value: 'severe',
                                                groupValue: _disorderLevelRadio,
                                                toggleable: true,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    _disorderLevelRadio =
                                                        value!;
                                                  });
                                                },
                                              ),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    28,
                                  ),
                                  bottom: getVerticalSize(
                                    81,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    GestureDetector(
                                      onTap: _submit,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20,
                                          ),
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(
                                            41,
                                          ),
                                          width: getHorizontalSize(
                                            158,
                                          ),
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              30,
                                            ),
                                            top: getVerticalSize(
                                              12,
                                            ),
                                            right: getHorizontalSize(
                                              30,
                                            ),
                                            bottom: getVerticalSize(
                                              12,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.amber700,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                5,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            'Save',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.whiteA700,
                                              fontSize: getFontSize(
                                                18,
                                              ),
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: getVerticalSize(
                                          41,
                                        ),
                                        width: getHorizontalSize(
                                          158,
                                        ),
                                        margin: EdgeInsets.only(
                                          right: getHorizontalSize(
                                            20,
                                          ),
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: getVerticalSize(
                                                  41,
                                                ),
                                                width: getHorizontalSize(
                                                  158,
                                                ),
                                                child: SvgPicture.asset(
                                                  ImageConstant.imgGroup36284,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    40,
                                                  ),
                                                  top: getVerticalSize(
                                                    12,
                                                  ),
                                                  right: getHorizontalSize(
                                                    40,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    12,
                                                  ),
                                                ),
                                                child: Text(
                                                  "Cancel",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    ));
  }
}
