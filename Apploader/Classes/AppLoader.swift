//
//  AppLoader.swift
//  Apploader
//
//  Created by Karthik on 1/23/18.
//

import Foundation
import MBProgressHUD


public protocol AppLoaderProtocol {
    func setupLoader()
}

public extension MBProgressHUD {
        
    public var tapGestureRecognizer: UITapGestureRecognizer {
        return UITapGestureRecognizer(target: self, action: #selector(hudTapped))
    }
    
    public func setupLoader(delay: TimeInterval = 0) {
        
        self.removeFromSuperViewOnHide = false
        self.dimBackground = false
        self.detailsLabelFont = self.labelFont
        
        self.accessibilityLabel = "progressHUD"
    }
    
    public func setDelay(delay: TimeInterval, tapToClose: Bool) {
        
        self.removeGestureRecognizer(tapGestureRecognizer)
        
        // for alerts
        if delay > 0 {
            
            DispatchQueue.main.async {
                self.hide(true, afterDelay: delay)
            }
            
            self.isUserInteractionEnabled = true
            
            self.addGestureRecognizer(tapGestureRecognizer)
            
        } else { // for Loaders
            
            if tapToClose {
                self.isUserInteractionEnabled = false // for bottom loader
            } else {
                self.isUserInteractionEnabled = true // Normal loader
            }
        }
    }
    
    // MARK: > Progress Loader
    public func showLoader(msg: String, detailMsg: String = "", delay: TimeInterval = 0) {
        
        self.setupLoader()
        self.setText(msg: msg, detailMsg: detailMsg)
        self.mode = .indeterminate
        self.show(true)
        self.setDelay(delay: delay, tapToClose: false)
    }
    
    // MARK: > Progress loader at the Bottom of Screen
    public func showBottomLoader(delay: TimeInterval = 0) {
        
        self.setupLoader()
        self.setText(msg: "")
        self.mode = .indeterminate
        self.yOffset = Float (self.frame.size.height/2.5)
        self.show(true)
        self.setDelay(delay: delay, tapToClose: true)
    }
    
    public func setText(msg: String, detailMsg: String = "") {
        self.labelText = msg
        self.detailsLabelText = detailMsg
    }
    
    public func showText(msg: String, detailMsg: String = "", delay: TimeInterval = 0) {
        
        self.setupLoader()
        self.mode = .text
        
        self.setText(msg: msg, detailMsg: detailMsg)
        self.show(true)
        
        self.setDelay(delay: delay, tapToClose: false)
    }
    
    public func hideHud() {
        
        guard !self.isHidden else {
            return
        }
        
        self.hide(true)
    }
    
    @objc public func hudTapped() {
        
        guard !self.isHidden else {
            return
        }
        
        self.hide(true)
    }
}

