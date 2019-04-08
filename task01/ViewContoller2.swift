//
//  ViewController.swift
//  task01
//
//  Created by Kim Jonghyuk on 06/04/2019.
//  Copyright © 2019 Donki. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let obj : CommObj = CommObj()
        let btnAttr : SetAttr = SetAttr()
        let imgAttr : SetAttr = SetAttr()
        
        // set Button
        btnAttr.setBtnAttr(a: "prev", b: CGRect(x: 110, y: 400, width: 150, height: 50), c: UIColor.black)
        // set Image
        imgAttr.setImgAttr(a: "task01_img2.jpeg", b: CGSize(width: 300, height: 150), c: 50, d: 200)
        
        let btnPrev = obj.createBtn(attr: btnAttr)
        btnPrev.addTarget(self, action: #selector(btnAction(_ :)), for: .touchUpInside)
        
        self.view.addSubview(btnPrev)
        self.view.addSubview(obj.createImage(attr: imgAttr))
    }
    
    @objc func btnAction(_ sender:UIButton){
        performSegue(withIdentifier: "moveFirstScreen", sender: self)
    }
}

