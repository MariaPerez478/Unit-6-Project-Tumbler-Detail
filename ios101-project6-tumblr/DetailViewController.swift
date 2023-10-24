//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Maria Perez on 10/23/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let post = post else {
            return
        }
        
        // Set the text of the text view with HTML tags stripped
        textView.text = post.caption.trimHTMLTags()
        
        // Check if the image URL is valid and load the image using Nuke
        if let firstPhoto = post.photos.first {
            let imageURL = firstPhoto.originalSize.url
            Nuke.loadImage(with: imageURL, into: imageView)
        }
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
