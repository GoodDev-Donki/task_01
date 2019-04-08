//
//  commObj.swift
//  task01
//
//  Created by Kim Jonghyuk on 06/04/2019.
//  Copyright © 2019 Donki. All rights reserved.
//
import UIKit

class CommObj {
    
    func createBtn(attr:SetAttr) -> UIButton{
        let rtnBtn = UIButton(type: .system)
        rtnBtn.frame = attr.getFrame() ?? CGRect(x: 0, y: 0, width: 200, height: 100)
        rtnBtn.setTitle(attr.getName(), for: .normal)
        rtnBtn.backgroundColor = attr.getColor()
        return rtnBtn
    }
    
    func createImage(attr:SetAttr) -> UIImageView{
        let rtnImg = resizeImage(image: UIImage(named: attr.getPath() ?? "")!, targetRect: attr.getSize() ?? CGSize(width: 0, height: 0))
        let rtnImgView = UIImageView(image: rtnImg)
        rtnImgView.frame.origin.x = CGFloat(attr.getOriginX())
        rtnImgView.frame.origin.y = CGFloat(attr.getOriginY())
        return rtnImgView
    }
    
    /*
     Use Google source
     URL : https://stackoverflow.com/questions/42545955/scale-image-to-smaller-size-in-swift3
     */
    func resizeImage(image: UIImage, targetRect: CGSize) -> UIImage {
        let size = image.size
        
        let widthRatio  = targetRect.width  / size.width
        let heightRatio = targetRect.height / size.height
        
        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width:size.width * heightRatio, height:size.height * heightRatio)
        } else {
            newSize = CGSize(width:size.width * widthRatio,  height:size.height * widthRatio)
        }
        
        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x:0, y:0, width:newSize.width, height:newSize.height)
        
        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
}
