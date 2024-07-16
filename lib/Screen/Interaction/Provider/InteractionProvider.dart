import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class IntractionProvider extends ChangeNotifier
{
   void Phoneluncher()
   {
     Uri uri = Uri.parse('tel: +91 1800 144 9999');
     launchUrl(uri);
   }
   void maillauncher()
   {
     Uri uri = Uri.parse('mailto: harsh@gmail.com');
     launchUrl(uri);
   }
   void linkdinlauncher()
   {
     Uri uri = Uri.parse('https://www.linkedin.com/in/harsh-dusane-b560102a9/');
     launchUrl(uri,mode: LaunchMode.inAppWebView);
   }
   void instlauncher()
   {
     Uri uri = Uri.parse('https://www.instagram.com/dusane_harsh_');
     launchUrl(uri);
   }
   void gitlauncher()
   {
     Uri uri = Uri.parse('https://github.com/harshdusane2103');
     launchUrl(uri,mode: LaunchMode.inAppWebView);
   }
}