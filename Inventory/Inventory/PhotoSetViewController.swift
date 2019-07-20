//
//  ViewController.swift
//  Inventory
//
//  Created by BryceLigaya on 7/19/19.
//  Copyright © 2019 Bl223LabCPU. All rights reserved.
//

import UIKit

class PhotoSetViewController: UIViewController {
    @IBOutlet weak var TextView: UITextView!

    let jsonFileName = "photos"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photoSet = PhotoSetLoader.load(jsonFileName: jsonFileName) {
            var displayInfo = ""
            displayInfo += "Status: \(photoSet.status)\n"
            displayInfo += "Photos path: \(photoSet.photosPath)\n\n"
            for photo in photoSet.photos {
                displayInfo += "Photo:\n"
                displayInfo += "\(photo.title)\n"
                displayInfo += "\(photo.description)\n"
                displayInfo += "\(photo.date)\n"
                displayInfo += "\(photo.imageName)\n\n"
            }
            TextView.text = displayInfo
        } else {
            TextView.text = "Error."
        }

    }

}
