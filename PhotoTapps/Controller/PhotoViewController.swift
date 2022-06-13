//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Дмитрий Шульгин on 13.06.2022.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
   
    var image: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareAction(_ sender: Any) {
    
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
       
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool{
                print("succeed")
            }
            
        }
        
        present(shareController, animated: true, completion: nil)
        
    }
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
