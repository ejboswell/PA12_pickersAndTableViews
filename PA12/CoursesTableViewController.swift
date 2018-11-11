//
//  CoursesTableViewController.swift
//  PA12
//
//  Created by Elizabeth Boswell on 11/10/18.
//  Copyright © 2018 Elizabeth Boswell. All rights reserved.
//


import UIKit

class CoursesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return ModelStudentCourseSchedule.sharedInstance.masterCourseList.numOfCourses
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        ModelStudentCourseSchedule.sharedInstance.masterCourseList.getCourse(number: row).courseName
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
}
