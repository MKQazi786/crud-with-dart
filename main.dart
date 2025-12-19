import 'dart:io';

List<Student> schoolStudentName = [];

class Student {
  String fullName;
  String field;
  num rollNo;

  Student(this.fullName, this.field, this.rollNo);

  void function() {
    print("Name: $fullName");
    print("field: $field");
    print("rollNo: $rollNo");
    print('');
  }
}

void create(fullName, field, rollNo) {
  Student newStudent = Student(fullName, field, rollNo);
  schoolStudentName.add(newStudent);
}

void forDeleteStudent(num rollNo) {
  schoolStudentName.removeWhere((student) => student.rollNo == rollNo);
}

void printStudentList() {
  for (var fullName in schoolStudentName) {
    fullName.function();
  }
}

void updateStudent(num rollNo, String newName, String field) {
  for (var fullName in schoolStudentName) {
    if (fullName.rollNo == rollNo) {
      fullName.fullName = newName;
      fullName.field = field;
    }
  }
  ;
}

void main() {
  print(
      "For add new student in List Enter 1 and send data like this Name: Muhammad Khubaib, field: MERN Stack, rollNo: 23456");
  print('');
  print("For view All student List enter: 2");
  print('');
  print("For delete Student enter 3 and enter Student Roll");
  print('');
  print(
      "For Update Student enter 4 then enter roll number then enter name and field");
  String prompt = stdin.readLineSync()!;

  if (prompt == "1") {
    print("Enter Name:");
    String fullName = stdin.readLineSync()!;
    print("Enter Field:");
    String field = stdin.readLineSync()!;
    print("Enter Roll No:");
    num rollNo = num.parse(stdin.readLineSync()!);

    create(fullName, field, rollNo);
  } else if (prompt == "2") {
    printStudentList();
  } else if (prompt == "3") {
  } else if (prompt == "4") {
  } else {
    print("Enter correct number for perform action");
  }
}
