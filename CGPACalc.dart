class Course {
  String courseName;
  double courseCredit;
  double courseGrade;

  Course({
    required this.courseName,
    required this.courseCredit,
    required this.courseGrade,
  });
  double getGradePoint() {
    if (courseGrade >= 70) {
      return 5.0;
    } else if (courseGrade >= 60) {
      return 4.0;
    } else if (courseGrade >= 50) {
      return 3.0;
    } else if (courseGrade >= 45) {
      return 2.0;
    } else if (courseGrade >= 40) {
      return 1.0;
    } else {
      return 0.0;
    }
  }

  String getLetterGrade() {
    if (courseGrade >= 70) {
      return 'A';
    } else if (courseGrade >= 60) {
      return 'B';
    } else if (courseGrade >= 50) {
      return 'C';
    } else if (courseGrade >= 45) {
      return 'D';
    } else if (courseGrade >= 40) {
      return 'E';
    } else {
      return 'F';
    }
  }

  String getRemark() {
    if (courseGrade >= 70) {
      return 'Excellent';
    } else if (courseGrade >= 60) {
      return 'Very Good';
    } else if (courseGrade >= 50) {
      return 'Good';
    } else if (courseGrade >= 45) {
      return 'Fair';
    } else if (courseGrade >= 40) {
      return 'Pass';
    } else {
      return 'Fail';
    }
  }

  double getQualityPoint() {
    return getGradePoint() * courseCredit;
  }
}

void main() {
  List<Course> courses = [
    Course(courseName: 'MTH201', courseCredit: 3.0, courseGrade: 97),
    Course(courseName: 'PHY201', courseCredit: 3.0, courseGrade: 85),
    Course(courseName: 'GST201', courseCredit: 3.0, courseGrade: 65),
    Course(courseName: 'EET211', courseCredit: 3.0, courseGrade: 70),
    Course(courseName: 'MCE201', courseCredit: 2.0, courseGrade: 69),
    Course(courseName: 'CSE201', courseCredit: 2.0, courseGrade: 85),
    Course(courseName: 'EET212', courseCredit: 2.0, courseGrade: 90),
    Course(courseName: 'CSE202', courseCredit: 2.0, courseGrade: 65),
  ];

  double totalQualityPoints = 0.0;
  double totalCredits = 0.0;

  for (Course course in courses) {
    totalQualityPoints += course.getQualityPoint();
    totalCredits += course.courseCredit;
  }

  double cgpa = totalQualityPoints / totalCredits;

  for (Course course in courses) {
    print('Course: ${course.courseName}');
    print('Credit: ${course.courseCredit}');
    print('Letter Grade: ${course.getLetterGrade()}');
    print('Remark: ${course.getRemark()}');
    print('-----------------------------');
  }

  print('CGPA Details:');
  print("Total Quality Points: $totalQualityPoints");
  print("Total Credits: $totalCredits");
  print("CGPA: ${cgpa.toStringAsFixed(2)}");

  if (cgpa >= 4.5) {
    print('First Class!');
  } else if (cgpa >= 3.5) {
    print('Second Class Upper!');
  } else if (cgpa >= 2.40) {
    print('Second Class Lower!');
  } else if (cgpa >= 1.50) {
    print('Third Class!');
  } else if (cgpa >= 1.0) {
    print('Pass');
  } else {
    print('Fail');
  }
}
