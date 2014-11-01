//
//  ViewController.swift
//  HelloWord
//
//  Created by 徐 彦栋 on 14-10-3.
//  Copyright (c) 2014年 徐 彦栋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myHelloButton:UIButton!
    	
    var mylable:UILabel = UILabel(frame:CGRect(x:0,y:0,width:300,height:60))
    var resetbutton :UIButton = UIButton(frame:CGRect(x:0,y:0,width:250,height:60))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mylable.text="say hello"
        mylable.textAlignment = NSTextAlignment.Center
        mylable.textColor = UIColor.blueColor()
        mylable.center = CGPointMake(160,100)
        view.addSubview(mylable)
        
        resetbutton.setTitle("Reset", forState:UIControlState.Normal)
        resetbutton.backgroundColor = UIColor.redColor()
        resetbutton.addTarget(self, action: "ResMeg", forControlEvents: UIControlEvents.TouchUpInside)
        resetbutton.center = CGPointMake(160,300)
        view.addSubview(resetbutton)
        
        myHelloButton.backgroundColor = UIColor.greenColor()
        myHelloButton.center = CGPointMake(160, 200)
    }

    @IBAction func sayhello(){
        mylable.text = "Hello World"
        mylable.textColor = UIColor.redColor()
    }
    
    func ResMeg(){
        mylable.text = "Say Hello"
        mylable.textColor = UIColor.blueColor()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

