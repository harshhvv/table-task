//
//  Stage3ViewController.swift
//  Table task
//
//  Created by Harsh  on 07/05/21.
//

import UIKit

class Stage3ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let images = [UIImage(named: "dog.jpg"), UIImage(named: "hamster.jpg")]
    let people = ["Jack Daniel", "John Walker"]
    let followers = ["12.6k", "128.6k"]
    let posts = ["330", "150"]
    let following = ["1211", "90"]
    let bio = ["Director, Cinematographer", "Photographer, Artist"]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell3 = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! Stage3TableViewCell
        cell3.profilePic.image = images[indexPath.row]
        cell3.nameLabel.text = people[indexPath.row]
        cell3.noOfFollowers.text = followers[indexPath.row]
        cell3.noOfPosts.text = posts[indexPath.row]
        cell3.noOfFollowing.text = following[indexPath.row]
        cell3.bioLabel.text = bio[indexPath.row]
        return cell3
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
