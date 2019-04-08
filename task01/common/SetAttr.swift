//
//  SetAttr.swift
//  task01
//
//  Created by Kim Jonghyuk on 08/04/2019.
//  Copyright © 2019 Donki. All rights reserved.
//

import Foundation
import UIKit

class SetAttr{
    
    var name : String? = nil
    var frame : CGRect? = nil
    var color : UIColor? = nil
    var path : String? = nil
    var size : CGSize? = nil
    var originX : Int = 0
    var originY : Int = 0
    
    
    func setBtnAttr(a:String?, b:CGRect?, c:UIColor?){
        if a != nil && b != nil && c != nil {
            self.name = a
            self.frame = b
            self.color = c
        }else{
            self.name = "no title"
            self.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
            self.color = UIColor.black
        }
    }
    
    func setImgAttr(a:String?, b:CGSize?, c:Int, d:Int){
        if a != nil && b != nil {
            self.path = a
            self.size = b
        }
        self.originX = c
        self.originY = d
    }
    
    func getName() -> String? {
        return self.name
    }
    
    func getFrame() -> CGRect? {
        return self.frame
    }
    
    func getColor() -> UIColor? {
        return self.color
    }
    
    func getPath() -> String? {
        return self.path
    }
    
    func getSize() -> CGSize? {
        return self.size
    }
    
    func getOriginX() -> Int {
        return self.originX
    }
    
    func getOriginY() -> Int {
        return self.originY
    }
    
}
