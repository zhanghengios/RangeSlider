//
//  Demo.swift
//  RangeSlider
//
//  Created by Matt Reagan on 10/29/16.
//  Copyright © 2016 Matt Reagan. All rights reserved.
//

import Foundation
import Cocoa

class Demo: NSObject {
    @IBOutlet weak var slider1Label1: NSTextField!
    @IBOutlet weak var slider1Label2: NSTextField!
    @IBOutlet weak var slider1Label3: NSTextField!
    @IBOutlet weak var slider2Label1: NSTextField!
    @IBOutlet weak var slider2Label2: NSTextField!
    @IBOutlet weak var slider2Label3: NSTextField!
    @IBOutlet weak var slider3Label1: NSTextField!
    @IBOutlet weak var slider3Label2: NSTextField!
    @IBOutlet weak var slider3Label3: NSTextField!
    @IBOutlet weak var slider1: RangeSlider!
    @IBOutlet weak var slider2: RangeSlider!
    @IBOutlet weak var slider3: RangeSlider!
    
    override func awakeFromNib() {
        
        //********** Slider Demo ************//
        
        slider1.start = 0.25
        slider1.end = 0.75
        slider2.start = 0.5
        slider3.start = 0.2
        slider3.end = 0.8
        
        slider1Label1.bind("doubleValue", to: slider1, withKeyPath: "start", options: nil)
        slider1Label2.bind("doubleValue", to: slider1, withKeyPath: "end", options: nil)
        slider1Label3.bind("doubleValue", to: slider1, withKeyPath: "length", options: nil)
        
        slider2Label1.bind("doubleValue", to: slider2, withKeyPath: "start", options: nil)
        slider2Label2.bind("doubleValue", to: slider2, withKeyPath: "end", options: nil)
        slider2Label3.bind("doubleValue", to: slider2, withKeyPath: "length", options: nil)
        
        slider3Label1.bind("doubleValue", to: slider3, withKeyPath: "start", options: nil)
        slider3Label2.bind("doubleValue", to: slider3, withKeyPath: "end", options: nil)
        slider3Label3.bind("doubleValue", to: slider3, withKeyPath: "length", options: nil)
    }
}
