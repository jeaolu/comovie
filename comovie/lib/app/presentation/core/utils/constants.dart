import 'package:flutter/material.dart';

class HeritageHavenConstant {}

class AppStrings {
  static const String somethingWentWrong = 'Something went wrong';
  static const String noInternetConnection = 'No Internet Connection';
  static const String serverError = "Server Error";
  static const String timeoutError = "Time Out Error";
}

class ApiConstants {
  static String appBaseUrl = 'https://moviesdatabase.p.rapidapi.com';
  static String getMovies = '$appBaseUrl/titles/x/upcoming';
  
}

class ColorManager {
  static const Color primary = Color(0xFF00A1EA);
  static const Color primaryLight = Color(0xFFA4D4EA);
  static const Color primaryVibrantBlue = Color(0xFF001119);
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color mediumGrey = Color(0xFFA6A6A6);
  static const Color dimGrey = Color(0xFFD9D9D9);
  static const Color darkGrey = Color(0xFF333333);
  static const Color white = Color(0xFFFFFFFF);
  static const Color success = Color(0xFF27AE60);
  static const Color warning = Color(0xFFF2C94C);
  static const Color error = Color(0xFFEB5757);
  static const Color black = Color(0xFF333333);
  static const Color blackPrimary = Color(0xFF001119);
  static const Color lightBackgroundColor = Color(0xFFF5F5F5);
  static const Color transparent = Color(0x00FFFFFF);
}
