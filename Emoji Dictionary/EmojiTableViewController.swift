//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by William Lund on 5/17/18.
//  Copyright © 2018 Bill Lund. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["😄", "🐻", "🌈", "🍔", "🎂", "🎹", "🌋", "🇩🇪", "⛪️"]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // print( "Tapped! \(indexPath.row)")
        
        performSegue(withIdentifier: "ourSegue", sender: nil)
        
        
    }
    
    

} // class EmojiTableViewController
