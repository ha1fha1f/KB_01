//
//  Spot.swift
//  jphacks
//
//  Created by 内村祐之 on 2015/11/28.
//  Copyright © 2015年 at. All rights reserved.
//

import MapKit

class Spot {
    let name: String
    let address: String
    let detail : String
    let location: CLLocationCoordinate2D
    var latitude: Double {
        return Double(location.latitude)
    }
    var longitude: Double {
        return Double(location.longitude)
    }
    
    init(name: String, address: String, detail: String, latitude: Double, longitude: Double) {
        self.name = name
        self.address = address
        self.detail = detail
        self.location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
