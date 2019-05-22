//
//  TableViewController.swift
//  SegundoParcial
//
//  Created by Hugo Cruz on 5/22/19.
//  Copyright © 2019 UK. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var songNames : [String] = []
    var recordTitle : String = ""
    var info : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        recordTitle = self.navigationItem.title!
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 600
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0{
            return 1
        }else{
            return (songNames.count)
        }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellTitle = tableView.dequeueReusableCell(withIdentifier: "cellTitle", for: indexPath)
        if indexPath.section == 0{
            cellTitle.imageView?.image = UIImage(named: recordTitle)
            switch (recordTitle){
            case "Red":
                info += "\tRed\t\n Release Date : October 22, 2012"
                break
            case "1989":
                info += "\t1989\t\n Release Date : October 27, 2014 "
                break
            case "reputation":
                info += "\treputation\t\n Release Date :November 10, 2017"
                break
            default:
                print("Error magistral")
            break
                
            }
            cellTitle.textLabel?.text = info
            //cellTitle.textLabel?.text = self.navigationItem.title!
            return cellTitle
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.section == 1{
            cell.textLabel?.text = songNames[indexPath.row]
            cell.detailTextLabel?.text = "$15.00"
            return cell
        }
        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
