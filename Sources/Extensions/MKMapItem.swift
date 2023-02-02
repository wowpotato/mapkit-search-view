//
//  MKMapItem.swift
//  
//
//  Created by mykim on 2023/02/02.
//

import MapKit

extension MKMapItem {
    public var fullName: String {
        guard let name = name, !placemark.fullLocationAddress.contains(name) else {
            return placemark.fullLocationAddress
        }
        return (name + ", ") + placemark.fullLocationAddress
    }
}
