import 'package:flutter/material.dart';

class HeritageHavenConstant {}

class AppStrings {
  static const String somethingWentWrong = 'Something went wrong';
  static const String noInternetConnection = 'No Internet Connection';
  static const String serverError = "Server Error";
  static const String timeoutError = "Time Out Error";
}

class ApiConstants {
  static String appBaseUrl = 'https://api.domyheritage.com/api/v1';
  static String heritageHavenBaseUrl = 'https://api.domyheritage.com/api/v1/user';
  static String heritageHavenPaymentUrl = 'https://api.domyheritage.com/api/v1/payment/';
  static String login = '$heritageHavenBaseUrl/login';
  static String register = '$heritageHavenBaseUrl/signup';
  static String verifyEmail = "$heritageHavenBaseUrl/verify";
  static String forgotPassword = "$heritageHavenBaseUrl/forgot-password";
  static String verifyForgotPasswordOtp = "$heritageHavenBaseUrl/verify-user";
  static String resendOtp = "$heritageHavenBaseUrl/resend-otp";
  static String property = '$appBaseUrl/property';
  static String fetchProperty = '$property/fetch-property';
  static String fetchBuyProperty = '$property/fetch-property?category=buy';
  static String fetchLeaseProperty = '$property/fetch-property?category=lease';
  static String fetchRentProperty = '$property/fetch-property?category=rent';
  static String getAllPropertiesByLocation(String location) {
    return 
    "$property/fetch-property?location=$location";
    // https://api.domyheritage.com/api/v1/property/fetch-property?location=lagos
  }
  static String initailizePayment= "$heritageHavenPaymentUrl/initialize-payment";
  static String getAllPropertiesByPrice(String price) {
    return 
    "$property/fetch-property?price=$price";
  }
  static String getAllProperties(String location,String propertyType,String price,String propertyCategory) {
    return 
    "$property/search?property_category=$propertyCategory&location=$location&property_type=$propertyType&price=$price";
  }
  static String map(String address) {
    return 
    "https://maps.googleapis.com/maps/api/geocode/json?address=${Uri.encodeComponent(address)}&key=AIzaSyBKlzS2SBkZfKogS0tVaAIIyKrQJjRPQlM";
  }
  
}
//Gdi4odtpEAznu4MkzKUEU

// mnYaZEod9DfcvKVKgoZh2

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
