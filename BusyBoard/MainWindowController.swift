//
//  MainWindowController.swift
//  BusyBoard
//
//  Created by Akshat Jain on 06/06/16.
//  Copyright © 2016 Akshat Jain. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var slider: NSSlider!
    @IBOutlet weak var sliderGoesUp: NSTextField!
    @IBOutlet weak var secretText: NSSecureTextField!
    @IBOutlet weak var secretTextReveal: NSTextField!
    @IBOutlet weak var checkbox: NSButton!
    
    var oldValue: Double = 0.0
    var sliderValue: Double = 0.0
    
    override func windowDidLoad() {
        secretTextReveal.editable = false
    }
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    @IBAction func revealText(sender: AnyObject) {
        secretTextReveal.stringValue = secretText.stringValue
    }
    
    @IBAction func showTicks(sender: NSButton) {
        if sender.tag == 1 {
            slider.numberOfTickMarks = 10
        } else {
            slider.numberOfTickMarks = 0
        }
    }
    
    @IBAction func checkBoxticked(sender: NSButton) {
        if sender.state == 1 {
            checkbox.title = "Uncheck Me"
        } else {
            checkbox.title = "Check Me"
        }
    }
    
    @IBAction func sliderGoesUpOrDown(sender: NSSlider) {
        
        sliderValue = slider.doubleValue
        sliderGoesUp.stringValue = sliderUpOrDown(sliderValue)
        oldValue = sliderValue
    }
    
    func sliderUpOrDown(value: Double) -> String {
        if value > oldValue {
            return "Slider goes Up!"
        } else {
            return "Slider goes down!"
        }
    }
}


