//
//  PlayerListCell.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 02/07/21.
//

import UIKit

protocol PlayerListCellDelegate {
    func onClickPlayerDetailShow(index: NSInteger)
}

class PlayerListCell: UITableViewCell {

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var imgView: UIView!
    
    @IBOutlet weak var imgIcon: UIImageView!
    
    @IBOutlet weak var lblPlayerName: UILabel!
    @IBOutlet weak var lblPlayerType: UILabel!
    
    var delegate : PlayerListCellDelegate?
    var intIndex: Int!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        backView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
        backView.layer.shadowOpacity = 0.8
        backView.layer.shadowOffset = .zero
        backView.layer.shadowRadius = 2.8
        backView.layer.cornerRadius = 10.0
        
//        imgView.layer.borderWidth = 1.0
//        imgView.layer.borderColor = UIColor.appNavColor.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onClickPlayerDetailBtn(_ sender: Any) {
        delegate?.onClickPlayerDetailShow(index: intIndex)
    }
    
}
