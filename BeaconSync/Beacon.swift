//
//  Beacon.swift
//  BeaconSync
//
//  Created by Sam Gross on 6/19/16.
//  Copyright © 2016 Atlas One Two Six. All rights reserved.
//

import UIKit

class Beacon: NSObject {
    init(identifier: BeaconGroup, major: Int64, minor: Int64, beaconName: String) {
        let group = identifier
        let UUID = identifier.getUUID()
        var maj = major
        var min = minor
        var name = beaconName
    }
    
    func setValues(major: Int64?, minor: Int64?){
        if(major != nil){ maj = major }
        if(minor != nil){ min = minor }
    }
    
    func getValues() {
        
    }

}

class BeaconGroup: NSObject {
    init(groupName: String, groupUUID: String? = NSUUID().uuidString) {
        var name = groupName
        let UUID = groupUUID
    }
    
    func getUUID() -> String {
        return UUID
    }
    
    func setName(newName: String){
        name = newName
    }
    
    func getName() -> String {
        return name
    }
}

