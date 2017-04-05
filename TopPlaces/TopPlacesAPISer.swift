//
//  TopPlacesAPISer.swift
//  TopPlaces
//
//  Created by Polina on 03.04.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import Foundation
import UIKit

class TopServiceAPISer {
    
    //[03.04.17, 22:07:05] Алексей: https://api.flickr.com/services/rest/?
    //method=flickr.places.getTopPlacesList&api_key=1bb7a2e40d98ebac549d9a3888d27456&place_type_id=12&date=2017-04-02&place_id=1&format=json&nojsoncallback=1&api_sig=53bbfcfc8f00832a4e3f30bfb885cc58
    
    private let session = URLSession(configuration: URLSessionConfiguration.default)
    
   struct Constrans {
        static let serviceURL = "https://api.flickr.com/services/rest/"
        static let method = "method"
        static let apiKey = "2b2c9f8abc28afe8d7749aee246d951c"
        static let placeTypeID = "12"
        static let date1 = "2017-04-02"
    
    
        static func buildWithURL(methodName: String) -> String {
            return serviceURL + "?" + method + "=" + methodName + "&api_key=" + apiKey + "&place_type_id=" + placeTypeID + "&date=" + date1 + "&place_id=1" + "&format=json&nojsoncallback=1"
    }
        
    }
    
    
}
