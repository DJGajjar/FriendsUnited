//
//  RunOutVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 05/07/21.
//

import UIKit

class RunOutVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var batsman1Img: UIImageView!
    @IBOutlet weak var selectB1Img: UIImageView!
    @IBOutlet weak var batsman2Img: UIImageView!
    @IBOutlet weak var selectB2Img: UIImageView!
    
    @IBOutlet weak var lblB1Name: UILabel!
    @IBOutlet weak var lblB2Name: UILabel!
    @IBOutlet weak var lblBatsman: UILabel!
    @IBOutlet weak var lblFielder: UILabel!
    
    @IBOutlet var collectionField: UICollectionView!
    
    @IBOutlet weak var btnBrilient: UIButton!
    
    var selectedFielderIndex:IndexPath?
    
    var arrPlayerList = ["Ankit", "Bhomik", "Darshan", "Dabhi", "Dhaval_A", "Dhaval_R", "Dipak", "Divish", "Jay_J", "Jay_K", "Kapil"]
        
    var arrPlayerImgList = ["ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.collectionField.register(UINib(nibName: "OutOPTCell", bundle: nil), forCellWithReuseIdentifier: "OutOPTCell")
    }
    
    @IBAction func onClickFirstBatsmanBtn(_ sender: Any) {
        selectB1Img.isHidden = false
        selectB2Img.isHidden = true
        
        lblBatsman.text = "Darshan"
    }
    
    @IBAction func onClickSecondBatsmanBtn(_ sender: Any) {
        selectB1Img.isHidden = true
        selectB2Img.isHidden = false
        
        lblBatsman.text = "kapil"
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPlayerList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
                        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OutOPTCell", for: indexPath) as! OutOPTCell
        
        if selectedFielderIndex == indexPath {
            cell.selectOutImg.isHidden = false
        }else {
            cell.selectOutImg.isHidden = true
        }
        
        cell.lblOutOPT.text = arrPlayerList[indexPath.row]
        cell.outOPTImg.image = UIImage(named: arrPlayerImgList[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        print("Index>>>\(indexPath.row)")
        
        selectedFielderIndex = indexPath
        
        lblFielder.text = arrPlayerList[indexPath.row]
        
        collectionField.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        //UIScreen.main.bounds.width/3
        return CGSize(width: 80.0, height: 112.0)
    }
    
    @IBAction func onClickBrilientBtn(_ sender: Any) {
        if btnBrilient.isSelected {
            btnBrilient.isSelected = false
        }else{
            btnBrilient.isSelected = true
        }
    }
    
    @IBAction func onClickOutBtn(_ sender: Any) {
        let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController]
        self.navigationController!.popToViewController(viewControllers[viewControllers.count - 3], animated: true)
    }
}
