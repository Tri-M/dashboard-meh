import 'package:dashboard/models/recent_student.dart';
import 'package:dashboard/responsiveness.dart';
import 'package:dashboard/screens/dashboard/components/my_student_fields.dart';
import 'package:dashboard/screens/dashboard/components/my_students.dart';
import 'package:flutter/material.dart';
import "package:dashboard/screens/dashboard/components/recent_student_performance.dart";
import '../../constants.dart';
import 'components/header.dart';

import 'components/recent_student_performance.dart';
import 'components/student_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyStudents(),
                      SizedBox(height: defaultPadding),
                      RecentStudentPerformance(),
                      if (Responsiveness.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsiveness.isMobile(context)) StudentDetails(),
                    ],
                  ),
                ),
                if (!Responsiveness.isMobile(context))
                  SizedBox(width: defaultPadding),
                
                if (!Responsiveness.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StudentDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
