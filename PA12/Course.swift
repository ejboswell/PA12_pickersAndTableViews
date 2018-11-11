//
//  Course.swift
//  PA12
//
//  Created by Elizabeth Boswell on 11/9/18.
//  Copyright © 2018 Elizabeth Boswell. All rights reserved.
//

import Foundation

class Course {
    var courseName: String = ""
    var studentsIn: [Student] = []
    
    init (courseName: String) {
        self.courseName = courseName
        self.studentsIn = []
    }
    
    // This function checks to see if the student is already in the course by calling function studentIsInCourse.
    //If the student is in the course it returns false
    //and if the student is not in the course it appends the instance of Student into the studentsIn array and returns true
    func enroll(student: Student) -> Bool {
        if studentIsInCourse(student: student) {
            return false
        } else {
            self.studentsIn.append(student)
            return true
        }
    }
    
    // This function checks to see if the student is in the course
    func studentIsInCourse(student: Student) -> Bool {
       
                                    // ////// trying a protocol Equatable thingy       return self.studentsIn.contains(student)
        // Checking if the present course instance's variable studentsIn array contains the passed in student.iD and returns true if it is in the array for that courseName or false if it is not in the array.
       
        return self.studentsIn.contains(where: { (s) -> Bool in
            student.iD == s.iD
        })
    }
    func printStudentsIn() {
        for item in studentsIn {
            print("\(item.lName)")
            
        }
    }
}
