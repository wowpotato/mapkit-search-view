//
//  CLPlacemark.swift
//  MapKitSearchView
//
//  Created by Philip on 10/11/18.
//  Copyright © 2018 Next Generation. All rights reserved.
//

import MapKit

public extension CLPlacemark {
    var address: String {
        var address = ""
        if let subThoroughfare = self.subThoroughfare {
            address += subThoroughfare + " "
        }
        if let thoroughfare = self.thoroughfare {
            address += thoroughfare + ", "
        }
        if let locality = self.locality {
            address += locality + " "
        }
        if let administrativeArea = self.administrativeArea {
            address += administrativeArea
        }
        return address
    }
    
    var mkPlacemark: MKPlacemark? {
        guard let coordinate = location?.coordinate else { return nil }
        return MKPlacemark(coordinate: coordinate)
    }
}

extension CLPlacemark {
    
    var fullLocationAddress: String {
        var placemarkData: [String] = []
        
        if let area = areasOfInterest?.first { placemarkData.append(area.localizedCapitalized) }
        if let street = thoroughfare?.localizedCapitalized { placemarkData.append(street) }
        if let building = subThoroughfare?.localizedCapitalized { placemarkData.append(building)}
        if let city = locality?.localizedCapitalized { placemarkData.append(city) }
        if let subCity = subLocality?.localizedCapitalized { placemarkData.append(subCity) }
        if let state = administrativeArea?.localizedCapitalized { placemarkData.append(state) }
        if let stateArea = subAdministrativeArea?.localizedCapitalized { placemarkData.append(stateArea) }
        if let county = country?.localizedCapitalized { placemarkData.append(county) }

        var result = placemarkData.joined(separator: ",")
        result = result.trimmingCharacters(in: .whitespacesAndNewlines)
        return result
    }
}
