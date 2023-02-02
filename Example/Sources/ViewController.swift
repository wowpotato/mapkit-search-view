//
//  ViewController.swift
//  Example
//
//  Created by Philip on 10/11/18.
//  Copyright © 2018 Next Generation. All rights reserved.
//

import MapKit
import MapKitSearchView
import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let mapKit = MapKitSearchViewController(delegate: self)
        mapKit.userLocationRequest = .authorizedWhenInUse
        present(mapKit, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: MapKitSearchDelegate {
    func mapKitSearch(_ mapKitSearchViewController: MapKitSearchViewController, mapItem: MKMapItem) {
        printAll(mapItem: mapItem)
    }
    
    func mapKitSearch(_ mapKitSearchViewController: MapKitSearchViewController, searchReturnedOneItem mapItem: MKMapItem) {
        printAll(mapItem: mapItem)
    }

    func mapKitSearch(_ mapKitSearchViewController: MapKitSearchViewController, userSelectedListItem mapItem: MKMapItem) {
        printAll(mapItem: mapItem)
    }

    func mapKitSearch(_ mapKitSearchViewController: MapKitSearchViewController, userSelectedGeocodeItem mapItem: MKMapItem) {
    }

    func mapKitSearch(_ mapKitSearchViewController: MapKitSearchViewController, userSelectedAnnotationFromMap mapItem: MKMapItem) {
        printAll(mapItem: mapItem)
    }
    
    func printAll(mapItem: MKMapItem) {
        print(mapItem.fullName)
        print(mapItem.name)
        print(mapItem.placemark.coordinate.latitude)
        print(mapItem.placemark.coordinate.longitude)
    }
    
}

