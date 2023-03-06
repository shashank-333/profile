import 'package:flutter/material.dart';
import 'package:shash/mobile/about_mobile.dart';
import 'package:shash/mobile/blog_mobile.dart';
import 'package:shash/mobile/contact_mobile.dart';
import 'package:shash/mobile/landing_page_mobile.dart';
import 'package:shash/mobile/works_mobile.dart';
import 'package:shash/web/about_web.dart';
import 'package:shash/web/blog_web.dart';
import 'package:shash/web/contact_web.dart';
import 'package:shash/web/landing_page_web.dart';
import 'package:shash/web/works_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constaints) {
            if (constaints.maxWidth > 800) {
              return LandingPageWeb();
            } else
              return LandingPageMobile();
          }),
        );
      case '/contact':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constaints) {
            if (constaints.maxWidth > 800) {
              return ContactWeb();
            } else
              return ContactMobile();
          }),
        );
      case '/about':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constaints) {
            if (constaints.maxWidth > 800) {
              return AboutWeb();
            } else
              return AboutMobile();
          }),
        );
      case '/blog':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constaints) {
            if (constaints.maxWidth > 800) {
              return BlogWeb();
            } else
              return BlogMobile();
          }),
        );
      case '/works':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constaints) {
            if (constaints.maxWidth > 800) {
              return WorksWeb();
            } else
              return WorksMobile();
          }),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constaints) {
            if (constaints.maxWidth > 800) {
              return LandingPageWeb();
            } else
              return LandingPageMobile();
          }),
        );
    }
  }
}
