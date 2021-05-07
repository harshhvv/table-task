//
//  Stage3TableViewCell.swift
//  Table task
//
//  Created by Harsh  on 07/05/21.
//

import UIKit

class Stage3TableViewCell: UITableViewCell {

    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    @IBOutlet weak var noOfFollowers: UILabel!
    @IBOutlet weak var noOfPosts: UILabel!
    @IBOutlet weak var noOfFollowing: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        profilePic.
        profilePic.layer.cornerRadius = 100
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
