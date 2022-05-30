import "package:flutter/material.dart";
import "package:dashboard/constants.dart";

class StudentInfo {
  final String? svgSrc, title, totalStudents;
  final int? no_of_students, percentage;
  final Color? color;

  StudentInfo({
    this.svgSrc,
    this.title,
    this.totalStudents,
    this.no_of_students,
    this.percentage,
    this.color,
  });
}

List myStudents = [
  StudentInfo(
      title: "5-7 years",
      no_of_students: 23,
      svgSrc: "assets/images/profile.png",
      totalStudents: "50",
      color: primaryColor,
      percentage: 35),
  StudentInfo(
      title: "8-10 years",
      no_of_students: 23,
      svgSrc: "assets/images/profile.png",
      totalStudents: "",
      color: primaryColor,
      percentage: 35),
  StudentInfo(
      title: "11-13 years",
      no_of_students: 23,
      svgSrc: "assets/icons/profile.svg",
      totalStudents: "",
      color: primaryColor,
      percentage: 35),
];
