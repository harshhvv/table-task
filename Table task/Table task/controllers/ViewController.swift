//
//  ViewController.swift
//  Table task
//
//  Created by Harsh  on 07/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    let titles = ["Stage 1", "Stage 2", "Stage 3"]
    let segues = ["toStage1", "toStage2", "toStage3"]
    let a : String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        performSegue(withIdentifier: segues[indexPath.row], sender: nil)
       // performSegue(withIdentifier: "toStage2", sender: nil)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Table View"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! StageViewCell
        cell.stageLabelCell.text = titles[indexPath.row]
        return cell
    }

}

