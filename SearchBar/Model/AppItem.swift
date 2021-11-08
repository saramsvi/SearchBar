//
//  AppItem.swift
//  SearchBar
//
//  Created by MSVI on 05.04.21.
//

import SwiftUI

// Model And Sample Data...

struct AppItem: Identifiable {
    
    var id = UUID().uuidString
    // both Image And Name Are Same....
    var name: String
    // since all Are Apple Native Apps...
    var source: String = "Apple"
}

var apps = [

    AppItem(name: "AppStore"),
    AppItem(name: "Calculator"),
    AppItem(name: "Calendar"),
    AppItem(name: "Camera"),
    AppItem(name: "Clock"),
    AppItem(name: "FaceTime"),
    AppItem(name: "Health"),
    AppItem(name: "Mail"),
    AppItem(name: "Maps"),
    AppItem(name: "Messages"),
    AppItem(name: "Phone"),
    AppItem(name: "Photos"),
    AppItem(name: "Safari"),
    AppItem(name: "Settings"),
    AppItem(name: "Weather"),
]
