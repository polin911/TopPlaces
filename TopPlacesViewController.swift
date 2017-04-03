//
//  TopPlacesViewController.swift
//  TopPlaces
//
//  Created by Polina on 03.04.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import UIKit

class TopPlacesViewController: UIViewController {

    var topPlaceAPI = TopServiceAPISer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       let x = TopServiceAPISer.buildWithURL(methodName: "flickr.places.getTopPlacesList")
        print(x)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
