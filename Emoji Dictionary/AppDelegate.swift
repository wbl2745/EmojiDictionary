//
//  AppDelegate.swift
//  Emoji Dictionary
//
//  Created by William Lund on 5/17/18.
//  Copyright © 2018 Bill Lund. All rights reserved.
//

/*
    Instructions
 
    0. This app replaces the standard ViewController with a TableViewController.
        0.0 First task is in the Storyboard to find the TableViewController and move it to the
            storyboard. At this point you now have two ViewControllers.
        0.1 The standard ViewController has an arrow pointing at it, which means it will be the entry
            point screen and code. Move the arrow from the standard ViewController to the new
            TableViewController. Alternately select the TableViewController, select Attributes Inspector
            and click on "Is Initial ViewController".
        0.2 Since we're not going to use the standard ViewController, delete it by deleting it from
            the Storyboard hierarchy.
        0.3 At this point Nick ran the code just to see the empty TableViewController and make sure
            everything was working.
    1. Get the TableViewController.swift code and link it to the TableViewController in the Storyboard
        1.0 Delete the "ViewController.swift". Be sure to move to trash.
        1.1 Add a new file.
            1.1.0 Select Cocoa Touch Class.
            1.1.1 Select SubClass of "UITableViewController"
            1.1.2 Class name is "EmojiTableViewController"
            1.1.3 May need to move it into the "Emoji Dictionary" folder.
        1.2 There's a lot of stuff to be deleted.
            1.2.1 Get rid of everything except
                1.2.1.0 override func viewDidLoad()
                1.2.1.1 override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
                1.2.1.2 override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
                    Note that this one needs to be uncommented to become active.
        1.3 In the Storyboard select the TableViewController, open the "Identity Inspector" and type in the name
            of the class "EmojiTableViewController.swift". Now the visual is tied to the code.
        1.4 In the hierarchy of the Storyboard, select "Table View Cell" under "Table View" and click on
            "Attributes Inspector". Under "Identifier" type in a name, such as "myCell".
        1.5 In following code of EmojiTableViewController.swift, enter "myCell" in...
            override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
    2. Populate the TableView
        2.0 In EmojiTableViewController.swift...
            2.0.0 override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                    return 20 // change from 0
                  }
            2.0.1 override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
                    cell.textLabel?.text = "Hello World"  // Add this line.
                    return cell
                  }
        2.1 Create a class data element var emoji = [ "😄", <more emojis]. You can get the Emoji menu with
            <cntl><command><space>.
        2.2 Change tableView to return emoji.count
        2.3 Change cell.textLabel?.text = emoji[indexPath.row]
        2.4 This is now populating the table with the emojis from the array.
    3. Create another ViewController to show the emoji and its name.
 
 
 */



import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

