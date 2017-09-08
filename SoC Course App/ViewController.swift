//
//  ViewController.swift
//  SoC Course App
//
//  Created by riya on 9/8/17.
//  Copyright © 2017 riya. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var CAP = [Course(name: "CAP4630 Artificial Intelligence", instructor: "Chuan"), Course(name: "CAP6671 Intelligent Systems", instructor: "Chuan")]
    
    var CEN = [Course(name: "CEN4535C Dev Game and Mob App", instructor: "Chuan"), Course(name: "CEN6016 Engineering of Software I", instructor: "Roggio")]
    
    var CIS = [Course(name: "CIS4327 Information Sys Sr Project I", instructor: "Umapathy"), Course(name: "CIS4850C Spatial Information Systems", instructor: "Lambert"), Course(name: "CIS6320 Distributed/Internet Systems", instructor: "Ahuja")]
    
    var COP = [Course(name: "COP2220 Computer Science I", instructor: "Martin"), Course(name: "COP3530 Data Structures", instructor: "Martin"), Course(name: "COP5716 Data Modeling and Performance", instructor: "Seyed-Abbassi")]
    
    // data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return CAP.count
        }else if(section == 1){
            return CEN.count
        }else if(section == 2){
            return CIS.count
        }else{
            return COP.count
        }
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if(section == 0){
            return "CAP Courses"
        }else if(section == 1){
            return "CEN Courses"
        }else if(section == 2){
            return "CIS Courses"
        }else{
            return "COP Courses"
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        if (indexPath.section == 0){
            let currentCourse = CAP[indexPath.row]
            cell.textLabel?.text = currentCourse.name
            cell.detailTextLabel?.text = currentCourse.instructor
        }else if (indexPath.section == 1){
            let currentCourse = CEN[indexPath.row]
            cell.textLabel?.text = currentCourse.name
            cell.detailTextLabel?.text = currentCourse.instructor
        }else if (indexPath.section == 2){
            let currentCourse = CIS[indexPath.row]
            cell.textLabel?.text = currentCourse.name
            cell.detailTextLabel?.text = currentCourse.instructor
        }else if (indexPath.section == 3){
            let currentCourse = COP[indexPath.row]
            cell.textLabel?.text = currentCourse.name
            cell.detailTextLabel?.text = currentCourse.instructor
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

