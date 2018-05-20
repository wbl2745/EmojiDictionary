//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by William Lund on 5/17/18.
//  Copyright © 2018 Bill Lund. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    //let emojis = ["😄", "🐻", "🌈", "🍔", "🎂", "🎹", "🌋", "🇩🇪", "⛪️"]
    
    let emojisAndLabels : [( String, String )] = [
         ( "😄", "Smiley Face" )
        ,( "🐻", "Happy Bear")
        ,( "🌈", "Rainbow" )
        ,( "🍔", "Cheeseburger" )
        ,( "🎂", "Birthday Cake" )
        ,( "🎹", "Keyboard" )
        ,( "🌋", "Volcano" )
        ,( "🇩🇪", "German Flag" )
        ,( "⛪️", "Church" )
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    /*
     Return the number of rows in the table.
     Here we are giving the number of lows in the array holding the emojis.
    */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojisAndLabels.count
    }

    /*
     Return an individual cell in the table view.
    */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a cell. Link it to the identifier "myCell" which is the name of the cell defined in
        // the Storyboard of the TableView.
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        // Set the text of the cell to be an emoji indexed by the indexPath.row
        cell.textLabel?.text = emojisAndLabels[indexPath.row].0 + " " + emojisAndLabels[indexPath.row].1
        return cell
    }
    
    /*
     Code for when a row of the table view is selected (clicked). Will trigger a segue to the
     BigEmojiViewController. Note that the segue's name is "ourSegue".
    */
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Trigger the segue named "ourSegue" and send the tuple at indexPath.row
        performSegue(withIdentifier: "ourSegue", sender: emojisAndLabels[indexPath.row])
    } // tableView()
    
    /*
     Called right before the segue.
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
         seque.destination is type UIViewController, which is a super class of BigEmojiViewController.
         This means that emojiDefVC is an instance of BigEmojiViewController.
         
         Above in performSegue( withIdentifier: "ourSegue"... the "ourSegue identified in the Storyboard
         links EmojiTableViewController to BigEmojiViewController, which is how segue.destination understands
         that it is linking to BigEmojiViewController.
        */
        let emojiDefVC = segue.destination as! BigEmojiViewController
        
        /*
         Since emojiDefVC is now tied to BigEmojiViewController we can reference data elements inside it.
         emojiTuple is defined to be a (String, String) which is what we sent in the tableView() call above.
        */
        emojiDefVC.emojiTuple = sender as! (String, String)
    } // prepare()
    
} // class EmojiTableViewController
