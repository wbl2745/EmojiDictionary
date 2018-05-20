//
//  BigEmojiViewController.swift
//  Emoji Dictionary
//
//  Created by William Lund on 5/18/18.
//  Copyright © 2018 Bill Lund. All rights reserved.
//

import UIKit

class BigEmojiViewController: UIViewController {
    
    // This is the image of the emoji
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiTitle: UILabel!
    
    var emojiTuple = ("", "")

    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emojiTuple.0
        emojiTitle.text = emojiTuple.1
                
    } // viewDidLoad()

} // class BigEmojiViewController
