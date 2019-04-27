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
    let customMessages = [
        "starry-eyed": ["you go girl", "heck yeah", "YAS"],
        "sad": ["Do you want to talk?", "Want to eat some mac and cheese?", "I love you"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        let emotionArray = customMessages[emojis[selectedEmotion!]!]
        let random = Int.random(in: 0 ..< emotionArray!.count)
        let emojiMessage = emotionArray?[random]

        let alertController = UIAlertController(title: "title", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)

    }
    
}

