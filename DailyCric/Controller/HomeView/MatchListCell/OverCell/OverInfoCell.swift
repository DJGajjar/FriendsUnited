//
//  OverInfoCell.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 10/07/21.
//

import UIKit

class OverInfoCell: UITableViewCell {

    @IBOutlet var collectionBowler: UICollectionView!
    
    @IBOutlet weak var lblOVS: UILabel!
    @IBOutlet weak var lblORuns: UILabel!
    @IBOutlet weak var lblTScore: UILabel!
    @IBOutlet weak var lblTName: UILabel!
    @IBOutlet weak var lblBPlayerName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.collectionBowler.register(UINib(nibName: "BowlerRunCell", bundle: nil), forCellWithReuseIdentifier: "BowlerRunCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//MARK:- Tableview Delegate Datasource
extension OverInfoCell : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BowlerRunCell", for: indexPath) as! BowlerRunCell
        
        if (indexPath.row % 2) == 0 {
            cell.lblRun.text = "2"
        }else if (indexPath.row % 3) == 0 {
            cell.lblRun.text = "4"
        }else {
            cell.lblRun.text = "0"
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 30.0, height: 30.0)
    }
}
