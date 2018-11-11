//
//  StudentList.swift
//  PA12
//
//  Created by Elizabeth Boswell on 11/9/18.
//  Copyright © 2018 Elizabeth Boswell. All rights reserved.
//

import Foundation

class StudentList {
    
    var students:[Student] = []
    
    func addToTheArraystudents(s : Student) {
        students.append(s)
    }
    
//    func addStudent(fName: String, lName: String, iD: Int, email: String, enrolledIn: Course) {
//        let s = Student(fName: fName, lName: lName, iD: iD, email: email, enrolledIn: [enrolledIn])
//        students.append(s)
//    }
    
    func getStudent(number:Int) -> Student {
        return students[number]
    }
    
    func numOfStudents() -> Int {
        return students.count
    }
    
    // This function checks to see if the student is already in student (the array of Student)
    func studentIsInstudents(student: Student) -> Bool {
        
        // ////// trying a protocol Equatable thingy       return self.studentsIn.contains(student)
        // Checking if the present course instance's variable studentsIn array contains the passed in student.iD and returns true if it is in the array for that courseName or false if it is not in the array.
        
        return self.students.contains(where: { (s) -> Bool in
            student.iD == s.iD
        })
    }
    
    func printStudentList() {
        for item in students {
            print("\(item.fName), \(item.lName), \(item.email), \(item.iD)")
        }
    }
}
