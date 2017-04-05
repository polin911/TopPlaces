//
//  TopPlacesViewController.swift
//  TopPlaces
//
//  Created by Polina on 03.04.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import UIKit

class TopPlacesViewController: UIViewController {
    
    var placeInfo = [PlaceInfo]()
    
    @IBOutlet var tableView: UITableView!
    
    var topPlaceAPI = TopPlaceSerAPI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        topPlaceAPI.showPlace()

    }
    
}

extension TopPlacesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = placeInfo[indexPath.row].woe_name
        
        return cell
    }
    
}

extension TopPlacesViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let selectedPlace = placeInfo[indexPath.row]
//    }
    
}


