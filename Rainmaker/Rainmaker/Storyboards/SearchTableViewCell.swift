//
//  SearchTableViewCell.swift
//  Rainmaker
//
//  Created by Eugene Enclona on 25/11/2018.
//  Copyright © 2018 Jack Soslow. All rights reserved.
//

import UIKit

protocol SearchTableViewCellDelegate : class {
    func didTapBetButton(which button: Int, on cell: SearchTableViewCell)
}

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var typeOfGame: UILabel!
    @IBOutlet weak var betQuestion: UILabel!
    @IBOutlet weak var firstBetOption: UIButton!
    @IBOutlet weak var secondBetOption: UIButton!

    var delegate: SearchTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        firstBetOption.layer.cornerRadius = 10
        secondBetOption.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func firstBetButtonTapped(_ sender: UIButton) {
        delegate?.didTapBetButton(which: 0, on: self)
    }
    
    @IBAction func secondBetButtonTapped(_ sender: UIButton) {
        delegate?.didTapBetButton(which: 1, on: self)
    }
    
    
}
