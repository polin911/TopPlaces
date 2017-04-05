//
//  PlaceInfo.swift
//  TopPlaces
//
//  Created by Polina on 04.04.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import Foundation
/*
 "place_id":".skCPTpTVr.Q3WKW",
 "woeid":"2459115",
 "latitude":"40.714",
 "longitude":"-74.007",
 "place_url":"\/United+States\/New+York\/New+York",
 "place_type":"locality",
 "place_type_id":"7",
 "timezone":"America\/New_York",
 "_content":"New York, NY, United States",
 "woe_name":"New York",
 "photo_count":"398
 */
struct PlaceInfo {
    let woe_name: String
    let content : String
    
    init?(json:[String:Any]) {
        guard let woeName = json["woe_name"] as? String,
        let cont = json["_content"] as? String else {
            return nil
        }
        self.woe_name = woeName
        self.content = cont
        
    }
}
