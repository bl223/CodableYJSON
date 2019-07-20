//
//  PhotoCollectionViewController.swift
//  Inventory
//
//  Created by BryceLigaya on 7/19/19.
//  Copyright © 2019 Bl223LabCPU. All rights reserved.
//

import UIKit

class PhotoCollectionViewController: UIViewController {
    @IBOutlet weak var TextView: UITextView!

    
    let jsonFileName = "photos"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photoCollection = PhotoCollectionLoader.load(jsonFileName: jsonFileName) {
            var displayInfo = ""
            displayInfo += "Status: \(photoCollection.status)\n"
            displayInfo += "Photos path: \(photoCollection.photosPath)\n\n"
            for photo in photoCollection.photos {
                displayInfo += "Photo:\n"
                displayInfo += "\(photo.title)\n"
                displayInfo += "\(photo.description)\n"
                displayInfo += "\(photo.date)\n"
                displayInfo += "\(photo.image)\n\n"
            }
            
            TextView.text = displayInfo
        } else {
            TextView.text = "Error."
        }
    }
}
