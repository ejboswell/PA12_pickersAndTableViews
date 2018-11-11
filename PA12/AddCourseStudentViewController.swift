//
//  ViewController.swift
//  PA12
//
//  Created by Elizabeth Boswell on 11/9/18.
//  Copyright © 2018 Elizabeth Boswell. All rights reserved.
//

import UIKit

class AddCourseStudentViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ModelStudentCourseSchedule.sharedInstance.masterCourseList.numOfCourses
    }
    
   
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

        return ModelStudentCourseSchedule.sharedInstance.masterCourseList.courses[row].courseName
    }
    
    
    @IBOutlet weak var thePicker: UIPickerView!
    
    @IBOutlet weak var courseTextField: UITextField!
    
    @IBOutlet weak var FirstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var iDTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    

    @IBAction func addCourseTapped(_ sender: UIButton) {
        courseTextField.resignFirstResponder()
        print(ModelStudentCourseSchedule.sharedInstance.masterCourseList.courses.count)
        // Making an instance of Course with what the user entered
        let entry = Course(courseName: courseTextField.text!)
        
        // Adding a Course instance to the array courses
        ModelStudentCourseSchedule.sharedInstance.masterCourseList.addToTheArraycourses(c: entry)
        print(ModelStudentCourseSchedule.sharedInstance.masterCourseList.courses.count)
        print("num of courses")
        print(ModelStudentCourseSchedule.sharedInstance.masterCourseList.numOfCourses)
        print(ModelStudentCourseSchedule.sharedInstance.masterCourseList.getCourse(number: 1).courseName)
        courseTextField.text = ""
        // Update the picker on the screen
        thePicker.reloadComponent(0)
        print("hello")
        print(ModelStudentCourseSchedule.sharedInstance.masterCourseList.getCourse(number: 0).courseName)
    }
    
    
    
    @IBAction func addStudentTapped(_ sender: UIButton) {
        
        if ifAnyTextFieldsAreEmpty() == false {
        
        let newID:Int? = Int(iDTextField.text!)
        print(newID!)
        let newStudent = Student(fName: FirstNameTextField.text!, lName: lastNameTextField.text!, iD: newID!, email: emailTextField.text!)

    
        let theCourse = ModelStudentCourseSchedule.sharedInstance.masterCourseList.getCourse(number: thePicker.selectedRow(inComponent: 0))
//        let theCourse = ModelStudentCourseSchedule.sharedInstance.masterCourseList.courses[thePicker.selectedRow(inComponent: 0)]
        print("the Course is")
        print("\(theCourse.courseName)")
        // check if the course instance in the selected picker row is enrolled in the
        if theCourse.enroll(student: newStudent) == false {
            let alert = UIAlertController(title: "Error", message: "Student is already enrolled in \(theCourse.courseName) try again", preferredStyle: .actionSheet)
            print(" im in the alert")
            alert.addAction(UIAlertAction(title: "Cancel Request", style: .destructive, handler: { (action) in
                print("You didn't put the student in the course again. Hurray!")
            }))
            
            present(alert, animated: true){
            }
        } else {
            let k = ModelStudentCourseSchedule.sharedInstance.masterStudentList.studentIsInstudents(student: newStudent)
            if k != true {
                ModelStudentCourseSchedule.sharedInstance.masterStudentList.addToTheArraystudents(s: newStudent)
            }
        ModelStudentCourseSchedule.sharedInstance.masterStudentList.printStudentList()
        ModelStudentCourseSchedule.sharedInstance.masterCourseList.printCourseList()
        ModelStudentCourseSchedule.sharedInstance.masterCourseList.
        }
        FirstNameTextField.text = ""
        lastNameTextField.text = ""
        emailTextField.text = ""
        iDTextField.text = ""
    }
    
    }
    func ifAnyTextFieldsAreEmpty() -> Bool{
        if FirstNameTextField.text == "" ||
        lastNameTextField.text == "" ||
        emailTextField.text == "" ||
            iDTextField.text == "" {
            let alert = UIAlertController(title: "Empty TextField", message: "Please fill all text fields", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
            present(alert, animated: true)
            return true
        } else {
            return false
        }
        
    }
  
    
    
    
    
}

