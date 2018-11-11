//
//  ModelStudentCourseSchedule.swift
//  PA12
//
//  Created by Elizabeth Boswell on 11/9/18.
//  Copyright © 2018 Elizabeth Boswell. All rights reserved.
//

import Foundation

class ModelStudentCourseSchedule {
    
    static var sharedInstance = ModelStudentCourseSchedule()
    
    var masterStudentList = StudentList()
    var masterCourseList = CourseList()
    
    init() {
        // make an instance of Course
        let aCourse = Course(courseName : "CS16 Swift")
        // add an instance of Course to the array courses
        masterCourseList.addToTheArraycourses(c: aCourse)
       // masterCourseList.addCourse(c: c)
        
        // make an instance of Student
        let aStudent = Student(fName: "Trevor", lName: "Wilson", iD: 100, email: "TrevorWilson@gmail.com")
        // add an instance of Student to the array students
        masterStudentList.addToTheArraystudents(s: aStudent)
        
        // enroll student in a class (put
       aCourse.enroll(student: aStudent)
        
    }
}
