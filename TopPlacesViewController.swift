//
//  TopPlacesViewController.swift
//  TopPlaces
//
//  Created by Polina on 03.04.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import UIKit

class TopPlacesViewController: UIViewController {

    var topPlaceAPI = TopSerAPI2()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     let x = topPlaceAPI.showPlace()
        print(x)
       
        
        // Do any additional setup after loading the view.
    }

    
   

}
