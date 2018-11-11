//
//  Student.swift
//  PA12
//
//  Created by Elizabeth Boswell on 11/9/18.
//  Copyright © 2018 Elizabeth Boswell. All rights reserved.
//

import Foundation

class Student  {  // : Equatable
    var fName: String = ""
    var lName: String = ""
    var iD: Int = 100
    var email: String = ""
    
    // computed Property
    var enrolledIn: [Course] {
        get {
            var courses: [Course] = []
            for i in 0 ..< ModelStudentCourseSchedule.sharedInstance.masterCourseList.numOfCourses{
                let c = ModelStudentCourseSchedule.sharedInstance.masterCourseList.getCourse(number: i)
                if c.studentIsInCourse(student: self) {
                    courses.append(c)
                }
            }
                    // for each course
                    // for each student registered in the course
                    // then if that student is self
                    // then append that Course into enrolledIn
            return courses
        }
    }

    
    init(fName:String, lName:String, iD:Int, email: String) {
        self.fName = fName
        self.lName = lName
        self.iD = iD
        self.email = email
    }
    
//    static func == (lhs: Student, rhs: Student) -> Bool {
//        return lhs.iD == rhs.iD
//    }
    
    
    
}
