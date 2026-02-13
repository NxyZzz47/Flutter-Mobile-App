import 'package:firstapp/src/pages/home/home_page.dart';
import 'package:firstapp/src/pages/info/info_page.dart';
import 'package:firstapp/src/pages/movie/upcoming_movie_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const homeRoute = "home";
  static const infoRoute = "info";
  static const upcomingMovieRoute = "movie";

  final _route = <String, WidgetBuilder>{
    homeRoute: (context) => HomePage(),
    infoRoute: (context) => InfoPage(),
    upcomingMovieRoute: (context) => UpcomingMoviePage(),
  };

  get getAll => _route;
}//end class