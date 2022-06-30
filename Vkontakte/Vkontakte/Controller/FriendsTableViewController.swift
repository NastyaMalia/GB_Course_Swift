//
//  FriendsTableViewController.swift
//  Vkontakte
//
//  Created by Nastya Kazakova on 27.06.22.
//

import UIKit

class FriendsTableViewController: UITableViewController {

    let myFriend = [
        Friend(name:"Stasy", image: UIImage(named: "monkey7"), photos: monkeyprofilePhpto),
        Friend(name:"Sasha", image: UIImage(named: "monkey3"), photos: monkeyprofilePhpto),
        Friend(name:"Jonh", image: UIImage(named: "chiken"), photos: chikenprofilePhpto),
        Friend(name:"Robert", image: UIImage(named: "monkey"), photos: monkeyprofilePhpto),
        Friend(name:"Sergey", image: UIImage(named: "monkey5"), photos: monkeyprofilePhpto),
        Friend(name:"Ivan", image: UIImage(named: "monkey4"), photos: monkeyprofilePhpto),
        Friend(name:"Skyler", image: UIImage(named: "chiken2"), photos: chikenprofilePhpto),
        Friend(name:"Volha", image: UIImage(named: "monkey8"), photos: monkeyprofilePhpto),
        Friend(name:"Timur", image: UIImage(named: "monkey6"), photos: monkeyprofilePhpto),
        Friend(name:"Vitalii", image: UIImage(named: "monkey2"), photos: monkeyprofilePhpto),
        Friend(name:"Malia", image: UIImage(named: "monkey7"), photos: monkeyprofilePhpto),
        Friend(name:"Hizuki", image: UIImage(named: "monkey8"), photos: monkeyprofilePhpto),
        Friend(name:"Eugenii", image: UIImage(named: "monkey9"), photos: monkeyprofilePhpto),
        Friend(name:"Masha", image: UIImage(named: "chiken3"), photos: chikenprofilePhpto),

    
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myFriend.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as? FriendsCell else{
            preconditionFailure("Error")
        }
        
        cell.LabelFriends.text = myFriend[indexPath.row].name
       cell.ImageFriends.image = myFriend[indexPath.row].image
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "showProfile",
           let destinationVC = segue.destination as? FriendsProfileCollectionViewController,
           let indexPath = tableView.indexPathForSelectedRow {
            let friendName = myFriend[indexPath.row].name
            destinationVC.title = friendName
            destinationVC.arrayProfilePhotos = myFriend[indexPath.row].photos
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
