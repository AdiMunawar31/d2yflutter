//menu data list
import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/dashboard.dart';
import 'package:flutter_widgets/screens/widgets/container.dart';
import 'package:flutter_widgets/screens/widgets/expanded.dart';

List dataList = [
  //menu data item
  {
    "level": 0,
    "icon": Icons.account_circle_rounded,
    "title": "Flutter Widgets By D2Y",
  },

  //menu data item
  {
    "level": 0,
    "icon": Icons.widgets,
    "title": "Widgets",
    "children": [
      {
        "level": 1,
        "icon": Icons.check_box_outline_blank,
        "title": "Container",
        "screen": const MyContainer(),
      },
      {"level": 1, "icon": Icons.expand, "title": "Expanded", "screen": const MyExpanded()},
      {"level": 1, "icon": Icons.delete_forever, "title": "Delete Account"}
    ]
  },

  //menu data item
  {
    "level": 0,
    "icon": Icons.library_books_sharp,
    "title": "Packages",
    "children": [
      {
        "level": 1,
        "icon": Icons.paypal,
        "title": "Paypal",
      },
      {
        "level": 1,
        "icon": Icons.credit_card,
        "title": "Credit Card",
      },
      {"level": 1, "icon": Icons.credit_card, "title": "Debit Card"}
    ]
  },

  //menu data item
  {
    "level": 0,
    "icon": Icons.travel_explore,
    "title": "Trips",
    "children": [
      {
        "level": 1,
        "icon": Icons.calendar_month,
        "title": "January",
        "children": [
          {
            "icon": Icons.calendar_view_day,
            "title": "15th, 9:30 AM",
          },
          {
            "icon": Icons.calendar_view_day,
            "title": "30th, 9:30 AM",
          },
        ],
      },
      {
        "level": 1,
        "icon": Icons.calendar_month,
        "title": "June",
        "children": [
          {
            "icon": Icons.calendar_view_day,
            "title": "16th, 10:45 AM",
          },
          {
            "icon": Icons.calendar_view_day,
            "title": "29th, 10:45 AM",
          },
        ],
      },
      {
        "level": 1,
        "icon": Icons.calendar_month,
        "title": "November",
        "children": [
          {
            "icon": Icons.calendar_view_day,
            "title": "20th, 10:50 AM",
          },
        ],
      },
    ]
  },

  //menu data item
  {
    "level": 0,
    "icon": Icons.explore,
    "title": "Seminars",
    "children": [
      {
        "level": 1,
        "icon": Icons.money,
        "title": "Entrepreneurship",
      },
      {
        "level": 1,
        "icon": Icons.build,
        "title": "Self Confidence",
      },
      {"level": 1, "icon": Icons.self_improvement, "title": "Financial Management"},
    ]
  },

  //menu data item
  {
    "level": 0,
    "icon": Icons.favorite,
    "title": "Favorite",
    "children": [
      {"level": 1, "icon": Icons.water, "title": "Swimming", "screen": Dashboard()},
      {"level": 1, "icon": Icons.sports_football, "title": "Football", "screen": Dashboard()},
      {"level": 1, "icon": Icons.movie, "title": "Movie", "screen": Dashboard()},
      {"level": 1, "icon": Icons.audiotrack, "title": "Singing", "screen": Dashboard()},
      {"level": 1, "icon": Icons.run_circle_outlined, "title": "Jogging", "screen": Dashboard()},
    ]
  },
];
