//
//  GenderCell.swift
//  MVVMExample
//
//  Created by Angelos Staboulis on 25/5/22.
//

import UIKit

class GenderCell: UITableViewCell {

    @IBOutlet var txtCount: UITextField!
    @IBOutlet var txtProbability: UITextField!
    @IBOutlet var txtGender: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
