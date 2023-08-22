//
//  OutOPTVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 03/07/21.
//

import UIKit

class OutOPTVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet var collectionOutOPT: UICollectionView!
    
    var arrPlayerList = ["Bowled", "Caught Bowler", "Hit-Wk", "Retired", "Caught Behind", "Caught", "Run Out"]
        
    var arrPlayerImgList = ["ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon"]
    
    var selectedFielderIndex:IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.collectionOutOPT.register(UINib(nibName: "OutOPTCell", bundle: nil), forCellWithReuseIdentifier: "OutOPTCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPlayerList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
                        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OutOPTCell", for: indexPath) as! OutOPTCell
        
        cell.lblOutOPT.text = arrPlayerList[indexPath.row]
        cell.outOPTImg.image = UIImage(named: arrPlayerImgList[indexPath.row])
        
        if selectedFielderIndex == indexPath {
            cell.selectOutImg.isHidden = false
        }else {
            cell.selectOutImg.isHidden = true
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        print("Index>>>\(indexPath.row)")
        
        selectedFielderIndex = indexPath
        
        collectionOutOPT.reloadData()
        
        let sb = UIStoryboard(name: "More", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "RunOutVC") as! RunOutVC
        navigationController?.pushViewController(lc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        //UIScreen.main.bounds.width/3
        return CGSize(width: 80.0, height: 112.0)
    }
}
