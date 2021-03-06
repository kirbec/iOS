//
//  HIUserAuth.swift
//  HackIllinois
//
//  Created by Rauhul Varma on 1/17/18.
//  Copyright © 2018 HackIllinois. All rights reserved.
//  This file is part of the Hackillinois iOS App.
//  The Hackillinois iOS App is open source software, released under the University of
//  Illinois/NCSA Open Source License. You should have received a copy of
//  this license in a file with the distribution.
//

import Foundation

struct HIAPIUserAuth: Codable {
    typealias Contained = HIAPIReturnDataContainer<HIAPIUserAuth>

    var auth: String
}
