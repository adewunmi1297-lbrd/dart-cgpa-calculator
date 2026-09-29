import 'dart:io';

class Course {
  String courseName;
  double courseCredit;
  double courseGrade;

  Course({
    required this.courseCredit,
    required this.courseGrade,
    required this.courseName,
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
  List<Course> courses = [];

  print('How many courses are you offering?');
  int numberOfCourses = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < numberOfCourses; i++) {
    print('\nCourse ${i + 1}:');
    print('Enter course name: ');
    String courseName = stdin.readLineSync()!;
    print('Enter credit unit: ');
    double courseCredit = double.parse(stdin.readLineSync()!);
    print('Enter score: ');
    double courseGrade = double.parse(stdin.readLineSync()!);

    Course course = Course(
      courseName: courseName,
      courseCredit: courseCredit,
      courseGrade: courseGrade,
    );

    courses.add(course);
  }

  double totalQualityPoints = 0;
  double totalCreditUnits = 0;

  for (Course course in courses) {
    totalQualityPoints += course.getQualityPoint();
    totalCreditUnits += course.courseCredit;
  }

  double gpa = totalQualityPoints / totalCreditUnits;

  for (Course course in courses) {
    print('\nCourse: ${course.courseName}');
    print('Credit: ${course.courseCredit}');
    print('Letter Grade: ${course.getLetterGrade()}');
    print('Remark: ${course.getRemark()}');
    print('-----------------------------');
  }

  print('\nTotal Quality Points: $totalQualityPoints');
  print('Total Credit Units: $totalCreditUnits');
  print('GPA: ${cgpa.toStringAsFixed(2)}');

  if (gpa >= 4.5) {
    print('Congratulations! You have an excellent GPA.');
  } else if (gpa >= 3.5) {
    print('Good job! You have a very good GPA.');
  } else if (gpa >= 2.5) {
    print('You have a good GPA.');
  } else if (gpa >= 1.5) {
    print('You have a fair GPA.');
  } else if (gpa >= 1.0) {
    print('You have a passable GPA.');
  } else {
    print('Unfortunately, you have failed.');
  }
}
