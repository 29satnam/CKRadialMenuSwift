//
//  ViewController.swift
//  CKRadialMenuSwift
//
//  Created by candy on 02/03/18.
//  Copyright © 2018 Silver Seahog. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CKRadialMenuDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var radialView = CKRadialMenu(frame: CGRect(x: view.center.x - 25, y: view.frame.size.height - 120, width: 50, height: 50))
        radialView.delegate = self
        radialView.centerView.backgroundColor = UIColor.gray
        radialView.addPopoutView(nil, withIndentifier: "ONE")
        radialView.addPopoutView(nil, withIndentifier: "TWO")
        radialView.addPopoutView(nil, withIndentifier: "THREE")
        //[radialView addPopoutView:nil withIndentifier:@"FOUR"];
        view.addSubview(radialView)
        radialView.enableDevelopmentMode()

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let instructions = UILabel()
        instructions.text = "Drag popup views to adjust angle and distance."
        let height: CGFloat = instructions.intrinsicContentSize.height
        let width: CGFloat = instructions.intrinsicContentSize.width
        view.addSubview(instructions)
        instructions.frame = CGRect(x: 8, y: view.frame.size.height - 8 - height, width: width, height: height)
        if let aSize = UIFont(name: "AvenirNext-Regular", size: 11) {
            instructions.font = aSize
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

