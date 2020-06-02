//
//  ViewController.swift
//  DemoUITest
//
//  Created by Ravi on 02/06/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit
import os.signpost

class ViewController: UIViewController {
    
    private let log = OSLog(subsystem: "com.demo.uitest", category: "uitest.category")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        os_signpost(.begin, log: self.log, name: "load")
        sleep(2)
        os_signpost(.end, log: self.log, name: "load")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        os_signpost(.begin, log: self.log, name: "layout_subviews")
        sleep(2)
        os_signpost(.end, log: self.log, name: "layout_subviews")
    }
}

