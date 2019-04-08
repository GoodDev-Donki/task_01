//
//  bindEvent.swift
//  task01
//
//  Created by Kim Jonghyuk on 07/04/2019.
//  Copyright © 2019 Donki. All rights reserved.
//

import UIKit

class bindEvent {
    
    class func btnClick(_ sender:UIButton){
        present(UIAlertController(title: "Test", message: "this is alert test", preferredStyle: UIAlertViewStyle.plainTextInput))
    }
}
