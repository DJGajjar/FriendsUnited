//
//  SelectPlayerVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 03/07/21.
//

import UIKit

class SelectPlayerVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet var collectionPlayer: UICollectionView!
    
    var arrPlayerList = ["Ankit", "Bhomik", "Darshan", "Dabhi", "Dhaval_A", "Dhaval_R", "Dipak", "Divish", "Jay_J", "Jay_K", "Kapil", "Kejash", "Krunal_G", "Kunal_V", "Milan", "Mrudul", "Nayan", "Parth", "Rakshit", "Sanket", "Senjal", "Soham", "Sunil", "Umang"]
    
    var arrPlayerType = ["All-Rounder", "All-Rounder", "WK-Batsman", "Batsman", "All-Rounder", "All-Rounder", "Batsman", "All-Rounder", "Bowler", "All-Rounder", "All-Rounder", "Bowler", "All-Rounder", "Bowler", "All-Rounder", "Bowler", "All-Rounder", "Batsman", "Batsman", "Bowler", "All-Rounder", "All-Rounder", "Batsman", "WK-Batsman"]
    
    var arrPlayerImgList = ["ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon"]
    
    var strTeam1PlayOPT: String!
    var strTeam2PlayOPT: String!
    
    var isTeam1Player: Bool = false
    var isTeam2Player: Bool = false
                
    var arrT1PlayerList = [String]()
    var arrT1PlayerTypeList = [String]()
    var arrT1PlayerImgList = [String]()
    
    var arrT2PlayerList = [String]()
    var arrT2PlayerTypeList = [String]()
    var arrT2PlayerImgList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if strTeam1PlayOPT == "Bowling" {
            isTeam1Player = true
            isTeam2Player = false
        }else {
            isTeam2Player = true
            isTeam1Player = false
        }
        
        self.collectionPlayer.register(UINib(nibName: "SelectPlayerCell", bundle: nil), forCellWithReuseIdentifier: "SelectPlayerCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPlayerList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
                        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SelectPlayerCell", for: indexPath) as! SelectPlayerCell
        
        cell.lblPlayerName.text = arrPlayerList[indexPath.row]
        cell.lblPlayerType.text = arrPlayerType[indexPath.row]
        cell.playerImg.image = UIImage(named: arrPlayerImgList[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        print("Index>>>\(indexPath.row)")
        
        if isTeam1Player == true {
        
            arrT1PlayerList.append(arrPlayerList[indexPath.row])
            arrT1PlayerTypeList.append(arrPlayerType[indexPath.row])
            arrT1PlayerImgList.append(arrPlayerImgList[indexPath.row])
            
            isTeam1Player = false
            isTeam2Player = true
        }else {
            
            arrT2PlayerList.append(arrPlayerList[indexPath.row])
            arrT2PlayerTypeList.append(arrPlayerType[indexPath.row])
            arrT2PlayerImgList.append(arrPlayerImgList[indexPath.row])
            
            isTeam1Player = true
            isTeam2Player = false
        }
        
        arrPlayerList.remove(at: indexPath.row)
        arrPlayerType.remove(at: indexPath.row)
        arrPlayerImgList.remove(at: indexPath.row)
        
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        //UIScreen.main.bounds.width/3
        return CGSize(width: 80.0, height: 110.0)
    }
    
    @IBAction func onClickNextBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "More", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "TeamPlayerListVC") as! TeamPlayerListVC
        
        lc.arrT1SPlayerList.append(contentsOf: arrT1PlayerList)
        lc.arrT1SPlayerTypeList.append(contentsOf: arrT1PlayerTypeList)
        lc.arrT1SPlayerImgList.append(contentsOf: arrT1PlayerImgList)
        
        lc.arrT2SPlayerList.append(contentsOf: arrT2PlayerList)
        lc.arrT2SPlayerTypeList.append(contentsOf: arrT2PlayerTypeList)
        lc.arrT2SPlayerImgList.append(contentsOf: arrT2PlayerImgList)
        
        lc.strTeam1OPT = strTeam1PlayOPT
        lc.strTeam2OPT = strTeam2PlayOPT
        
        lc.strInfo = "No"
        
        navigationController?.pushViewController(lc, animated: true)
    }
}
