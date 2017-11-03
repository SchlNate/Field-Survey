//
//  ObservationsJSONLoader.swift
//  Field Survey
//
//  Created by Nathan Schlechte on 11/2/17.
//  Copyright © 2017 Nathan Schlechte. All rights reserved.
//

import Foundation

class ObservationsJSONLoader {
    
    class func load(fileName: String) -> [Observations] {
        var observationEvent = [Observations]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                observationEvent = ObservationsJSONParser.parse(data)
        }
        
        return observationEvent
    }
}
