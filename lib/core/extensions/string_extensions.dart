import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../enums/regex_type.dart';

extension StringExtensions on String {

  String get capitalize {
    final array = split(" ");
    String returnString = array[0];
    if(array.length > 1){
      returnString = array.map((e) => "${e[0].toUpperCase()}${e.substring(1).toLowerCase()}").join(" ");
      return returnString;
    }
    returnString = "${array[0][0].toUpperCase()}${array[0].substring(1).toLowerCase()}";
    return returnString;
  }

  String get fileExtension => split(".").last;


  String get removeFirstWord{
    final array = split(" ");
    array.removeAt(0);
    return array.join(" ");
  }

  String removeNWord(int n){
    final array = split(" ");
    if(array.length -1 >= n){
      for(var i = 0; i<n; i++){
        array.removeAt(i);
      }
    }
    return array.join(" ");
  }


  String get sha256OfString {
    final bytes = utf8.encode(this);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<String?> get launchWebsite async {
    if (await canLaunch(this)) {
      await launch(this);
      return null;
    } else {

      return 'Could not launch $this';
    }
  }


  String get toCountryFlagPath{
    return "assets/png/country_flags/${toLowerCase()}.png";
  }

}

extension ValidationExtensions on String {
  String? hasMinLengthOf(int minLength) => length >= minLength
      ? null
      : "Bu alan en az $minLength karakter içermelidir";
  String? hasEqualLengthOf(int equalLength) => length == equalLength
      ? null
      : "Bu alan $equalLength karakter içermelidir";
  String? get isValidMail => RegexType.eMail.regex.hasMatch(this)
      ? null
      : "Please enter a valid email address";

  String? get isValidPassword => RegexType.password.regex.hasMatch(this)
      ? null
      : "Please enter a valid password";

  String? isEqualTo(String value) => this == value
      ? null
      : "Passwords doesn't match";

  String? hasExactLengthOf(int exactLength) => length == exactLength
      ? null
      : "Bu alan $exactLength karakterden oluşmalıdır";

  String? hasLengthBetween(int minLength, int maxLength) => length >= minLength && length <= maxLength
      ? null
      : "This field needs to have between $minLength - $maxLength characters";

  String? get hasData =>
      isNotEmpty ? null : "This field can't be empty";

  String? isInList(List<String> stringList, String? errorText) =>
      stringList.contains(this)
          ? null
          : errorText ?? "Opsiyonlardan birini seçiniz";
  String? get isValidMobilePhone => RegexType.phoneNumber.regex.hasMatch(this)
      ? null
      : 'Lütfen geçerli bir cep telefonu numarası girin';
}
