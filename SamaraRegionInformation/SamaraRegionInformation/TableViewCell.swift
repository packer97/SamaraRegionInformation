//
//  TableViewCell.swift
//  SamaraRegionInformation
//
//  Created by hiMac on 16.11.2019.
//  Copyright © 2019 XDD. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var yearOfFoundation: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(city:Cities) {
        self.yearOfFoundation.text = city.yearOfFoundation
        self.areaLabel.text = city.area
        self.numberOfPeopleLabel.text = city.numberOfPeople
    }
    
}
