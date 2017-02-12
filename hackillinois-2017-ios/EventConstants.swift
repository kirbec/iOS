//
//  EventConstants.swift
//  hackillinois-2017-ios
//
//  Created by Shotaro Ikeda on 5/23/16.
//  Copyright © 2016 Shotaro Ikeda. All rights reserved.
//

/*
 * This file contains various constants to be used for the Application
 * Modify this file for various behaviorial changes such as the color of the tab bar
 */

import Foundation
import UIKit

/* UI/UX */
//let mainUIColor = 0x4d483f // Color for the TabBar and Navigation Bar
//let mainTintColor = 0xf4d6be // Tint color use for TabBar
let mainUIColor = 0x142442
let mainTintColor = 0x1c325a
let textHighlightColor = 0x5dc8db //cyan highlight text color
let pseudoWhiteColor = 0xf5fafc
let duskyBlueColor = 0x4e6094;

let timeoutIntervalSeconds: UInt64 = 10 // Timeout interval for network calls, in seconds


/* Geocoordinates */
let centerOfEventLatitude: Double = 40.1137074
let centerOfEventLongitude: Double = -88.2264893

/* Google maps stroke color */
// let activeStrokeColor = GMSStyleSpan(style: GMSStrokeStyle.solidColor(UIColor.redColor()))
// let inactiveStrokeColor = GMSStyleSpan(style: GMSStrokeStyle.solidColor(UIColor.grayColor()))
let strokeWidth: CGFloat = 6.0

let defaultHeight = 2000.0
let defaultPitch: CGFloat = 0.0
let defaultHeading = 0.0

/* Hackathon Information */
let university = "University+of+Illinois+at+Urbana+Champaign" // This will be encoded as an URL, so spaces should be delimited by +'s

/* Hackathon timestamps */
// TODO: Initialized to actual unix times for event status.
let HACKATHON_BEGIN_TIME = 0                                          //Change Me!
let HACKING_BEGIN_TIME = Int(NSDate().timeIntervalSince1970) + 1000     //Change Me!
let HACKING_END_TIME = Int(NSDate().timeIntervalSince1970) + 1000         //Change Me!
let HACKATHON_END_TIME = Int(NSDate().timeIntervalSince1970) + 1000         //Change Me!
