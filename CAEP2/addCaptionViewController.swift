//  ViewController.swift
//  CAEP2

//  Created by Kode With Klossy on 8/6/18.
//  Copyright © 2018 Kode With Klossy. All rights reserved.

import UIKit

class addCaptionViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func camera(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func photoLibrary(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBOutlet var newImageView: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            newImageView.image = selectedImage
        }
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet var captionTextField: UITextField!
   
    @IBAction func save(_ sender: UIButton) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let photoToSave = Photos(entity:Photos.entity(), insertInto: context)
            photoToSave.caption = captionTextField.text
            if let userImage = newImageView.image {
                if let userImageData = UIImagePNGRepresentation(userImage) {
                    photoToSave.imageData = userImageData
                }
            }
           (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
           navigationController?.popViewController(animated: true)
        }
    }
}


