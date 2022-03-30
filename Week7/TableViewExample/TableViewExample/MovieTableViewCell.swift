//
//  MovieTableViewCell.swift
//  TableViewExample
//
//  Created by zebra on 2021-10-21.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    // Outlets
    
    @IBOutlet weak var movieTitleLabel: UILabel!    
    @IBOutlet weak var movieGenreLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
