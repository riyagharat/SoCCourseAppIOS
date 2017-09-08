//
//  Course.swift
//  SoC Course App
//
//  Created by riya on 9/8/17.
//  Copyright © 2017 riya. All rights reserved.
//

import UIKit

class Course: NSObject {
    var name:String
    var instructor:String
    
    init(name:String, instructor:String){
        self.name = name
        self.instructor = instructor
    }
}
