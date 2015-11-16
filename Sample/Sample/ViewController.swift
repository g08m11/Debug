//
//  ViewController.swift
//  Sample
//
//  Created by 具志堅 雅 on 2015/10/05.
//  Copyright (c) 2015年 Bloc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    Debug.log("ここまできてる")
    // Do any additional setup after loading the view, typically from a nib.
  }
    
    @IBAction func tappedButton(sender: UIButton) {
        
        Debug.log("タップされた")
    }
    

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

