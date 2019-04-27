//
//  ViewController.swift
//  emojional-ios-key
//
//  Created by Amy Holt on 4/27/19.
//  Copyright © 2019 Amy Holt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🤩": "starry-eyed", "😥": "sad"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text

        let alertController = UIAlertController(title: "title", message: emojis[selectedEmotion!], preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)

    }
    
}

