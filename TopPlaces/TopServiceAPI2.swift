//
//  TopServiceAPI2.swift
//  TopPlaces
//
//  Created by Polina on 04.04.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import Foundation

class TopPlaceSerAPI {
    
    func showPlace(){
        let url = buildUrl()
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                return
            }
            
            guard let serverResponse = response as? HTTPURLResponse,
                serverResponse.statusCode == 200,
                let jsonData = data else {
                    return
            }
            guard let jsonObject = try? JSONSerialization.jsonObject(with: jsonData, options: []),
                let dictionary = jsonObject as? [String:Any] else {
                    return
            }
            let place = self.buildTopPlace(from: dictionary)
            print("a vot i place \(place)")
            
            guard place.count > 0 else {
                return
            }
        }
        task.resume()
        
        
    }
    
    func buildTopPlace(from dictionary: [String:Any]) -> [PlaceInfo] {
        guard let placeS = dictionary["places"] as? [String:Any] else {
            return []
        }
        guard let placeJsonS = placeS["place"] as? [[String:Any]] else {
            return []
        }
        var result = [PlaceInfo]()
        
        for placeJson in placeJsonS {
            if let info = PlaceInfo(json: placeJson) {
                result.append(info)
            }
        }
        print(result)
        return result
    }
    ///////////////////////////
    
    
    
    struct Constrans {
        static let serviceURL = "https://api.flickr.com/services/rest/"
        static let method = "method"
        static let apiKey = "2b2c9f8abc28afe8d7749aee246d951c"
        static let placeTypeID = "12"
        static let date1 = "2017-04-02"
        
        
        static func buildWithURL() -> String {
            return serviceURL + "?" + method + "=" + "flickr.places.getTopPlacesList" + "&api_key=" + apiKey + "&place_type_id=" + placeTypeID + "&date=" + date1 + "&place_id=1" + "&format=json&nojsoncallback=1"
        }
        
    }
    
    private func buildUrl() -> URL {
        var urlString = Constrans.buildWithURL()
        urlString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        return URL(string: urlString)!
    }
    
}










