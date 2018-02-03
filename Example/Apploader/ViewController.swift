//
//  ViewController.swift
//  Apploader
//
//  Created by karthikAdaptavant on 01/23/2018.
//  Copyright (c) 2018 karthikAdaptavant. All rights reserved.
//

import UIKit
import Apploader

class ViewController: UIViewController, AppLoaderProtocol {
    
    var alertHud: MBProgressHUD!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLoader()
        
        alertHud.showLoader(msg: "loading...")
    }
    
    func setupLoader() {
        self.alertHud = self.getAlertHUD(srcView: self.view)
        self.view.addSubview(self.alertHud)
    }
}

