//
//  Stage2ViewController.swift
//  Table task
//
//  Created by Harsh  on 07/05/21.
//

import UIKit

class Stage2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    let animals = ["Cats", "Dogs", "Hamsters", "Parrots", "Goldfish"]
    let pics = [UIImage(named: "cat.jpeg"), UIImage(named: "dog.jpg"), UIImage(named: "hamster.jpg"), UIImage(named: "parrot.jpg"), UIImage(named: "goldie.jpeg")]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pets"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! Stage2TableViewCell
        cell2.stage2LabelCell.text = animals[indexPath.row]
        cell2.stage2ImageCell.image = pics[indexPath.row]
        return cell2
    }
}
