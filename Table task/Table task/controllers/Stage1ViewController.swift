//
//  Stage1ViewController.swift
//  Table task
//
//  Created by Harsh  on 07/05/21.
//

import UIKit

class Stage1ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //let titles = ["IMportant","files", "others"]
    let important = ["Degree", "Assignments", "Photos"," lol "]
    let files = ["PNG images", "JPG images", "Word docs", "PDF docs"]
    let others = ["Other settings"]
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    @IBOutlet weak var tableView3: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //for the first tableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableView1{
            return 3
        }
        else if(tableView == tableView2){
            return 4
        }
        else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableView1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! Stage1ViewCell
            cell.stage1LabelCell.text = important[indexPath.row]
            //cell.stage1LabelCell.text = important[indexPath.row]
            return cell
        }
        
        else if tableView == tableView2 {
            let cell = tableView2.dequeueReusableCell(withIdentifier: "cell1_2", for: indexPath) as! Stage1_2TableViewCell
            cell.labelCell.text = files[indexPath.row]
            return cell
        }
        
        else {
            let cell = tableView3.dequeueReusableCell(withIdentifier: "cell1_3", for: indexPath) as! Stage1_3TableViewCell
            cell.labelCell.text = others[indexPath.row]
            return cell
        }
        //return
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if tableView == tableView1{
            return "Important"
        }
        else if(tableView == tableView2){
            return "Files"
        }
        else{
            return "Other files"
        }
    }
    
    
    
    //for the second tableView:
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
