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
  // For view All student List call
  // printStudentList();

  // For add new student in List call and send data like this
  // create("Muhammad Khubaib", "MERN", 23456);

  // For delete Student call this funtion with Student Roll NO like this
  // and again call printStudentList();
  // forDeleteStudent(23456);

  // For Update Student call this funtion and again call printStudentList();
  // updateStudent(23458,"shaheer ahmed","Flutter");
  print("'Student List'");

  create("Muhammad Khubaib", "MERN Stack", 23456);
  create("Muhammad Hashir", "MEAN Stack", 23457);
  create("Muhammad Hafiz", "Flutter", 23458);
  printStudentList();

  print("After removing Student:");
  forDeleteStudent(23458);
  printStudentList();

  print("After Updating Student:");
  updateStudent(23456,"Muhammad Khubaib","Flutter");
  printStudentList();
}
