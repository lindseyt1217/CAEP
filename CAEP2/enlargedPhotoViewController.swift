//
//  enlargedPhotoViewController.swift
//  CAEP2
//
//  Created by Kode With Klossy on 8/6/18.
//  Copyright © 2018 Kode With Klossy. All rights reserved.
//

import UIKit

class enlargedPhotoViewController: UIViewController {

    @IBOutlet weak var enlargedPhoto: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var photos : Photos?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let realPhoto = photos {
            label.text = realPhoto.caption
            if let cellPhotoImageData = realPhoto.imageData {
                if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                    enlargedPhoto.image = cellPhotoImage
                }
        }
    }

    }
}
