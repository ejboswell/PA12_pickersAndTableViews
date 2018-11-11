//
//  CourseList.swift
//  PA12
//
//  Created by Elizabeth Boswell on 11/9/18.
//  Copyright © 2018 Elizabeth Boswell. All rights reserved.
//

import Foundation

class CourseList {

    var courses:[Course] = []
    
    func addToTheArraycourses(c: Course) {
    
    courses.append(c)
    }

//     addCourse(courseName: String, studentsIn: Student) {
//        let c = Course(courseName:courseName, studentsIn: [studentsIn])
//        courses.append(c)
//    }
    func getCourse(number:Int) -> Course {
        return (courses[number])
    }
    
        var numOfCourses: Int {
        return courses.count
    }
    func printCourseList() {
        for item in courses {
            print("\(item.courseName)")
           
        }
    }
    
    
}
