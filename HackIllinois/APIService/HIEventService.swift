//
//  HIEventService.swift
//  HackIllinois
//
//  Created by Rauhul Varma on 11/19/17.
//  Copyright © 2017 HackIllinois. All rights reserved.
//

import Foundation
import APIManager

extension Data: APIReturnable {
    public init(from data: Data) {
        self = data
    }
}

class HIEventService: HIBaseService {

    override class var baseURL: String {
        return super.baseURL + "/event"
    }

    // MARK: Events
    class func create(event: Event) -> APIRequest<HIEventService, Event.Contained> {
        let eventDict = [String: Any]()
        return APIRequest<HIEventService, Event.Contained>(endpoint: "", body: eventDict, method: .POST)
    }

    class func getAllEvents(active: Bool = false) -> APIRequest<HIEventService, Event.Contained> {
        return APIRequest<HIEventService, Event.Contained>(endpoint: "", params: ["active": "\(active)"], method: .GET)
    }

    // MARK: Locations
    class func create(location: Location) -> APIRequest<HIEventService, Location.Contained> {
        let locationDict = [String: Any]()
        return APIRequest<HIEventService, Location.Contained>(endpoint: "/location", body: locationDict, method: .POST)
    }

    class func getAllLocations() -> APIRequest<HIEventService, Location.Contained> {
        return APIRequest<HIEventService, Location.Contained>(endpoint: "/location/all", method: .GET)
    }
}