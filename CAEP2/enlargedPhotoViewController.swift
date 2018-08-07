//
//  enlargedPhotoViewController.swift
//  CAEP2
//
//  Created by Kode With Klossy on 8/6/18.
//  Copyright © 2018 Kode With Klossy. All rights reserved.
//

import UIKit

class enlargedPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var enlargedPhoto: UIImageView!
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            enlargedPhoto.image = selectedImage
        }
        dismiss(animated: true, completion: nil)
    }
}
