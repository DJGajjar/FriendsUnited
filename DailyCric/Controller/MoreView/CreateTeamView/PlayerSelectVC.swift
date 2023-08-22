//
//  PlayerSelectVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 03/07/21.
//

import UIKit

class PlayerSelectVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet var collectionPBatsman: UICollectionView!
    @IBOutlet var collectionPBowler: UICollectionView!
    
    @IBOutlet var lblBastmanName: UILabel!
    @IBOutlet var lblBowlerName: UILabel!
    @IBOutlet var lblBatsmanNote: UILabel!
    @IBOutlet var lblBowlerNote: UILabel!
    
    var arrT1SPlayerList = [String]()
    var arrT1SPlayerTypeList = [String]()
    var arrT1SPlayerImgList = [String]()
    
    var arrT2SPlayerList = [String]()
    var arrT2SPlayerTypeList = [String]()
    var arrT2SPlayerImgList = [String]()
    
    var arrSBatsmanList = [String]()
    var arrSBatsmanType = [String]()
    var arrSBatsmanImgList = [String]()
    
    var arrSBowlerList = [String]()
    var arrSBowlerType = [String]()
    var arrSBowlerImgList = [String]()
    
    var strTeam1OPT: String!
    var strTeam2OPT: String!
    
    var selectedBatsman_1Index:IndexPath?
    var selectedBatsman_2Index:IndexPath?
    
    var selectedBowler_1Index:IndexPath?
    var selectedBowler_2Index:IndexPath?
    
    var strBatsman_1: String = ""
    var strBatsman_2: String = ""
    var strBowler_1: String = ""
    var strBowler_2: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.collectionPBatsman.register(UINib(nibName: "SelectPlayerCell", bundle: nil), forCellWithReuseIdentifier: "SelectPlayerCell")
        
        self.collectionPBowler.register(UINib(nibName: "SelectPlayerCell", bundle: nil), forCellWithReuseIdentifier: "SelectPlayerCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == collectionPBatsman {
            return arrT1SPlayerList.count
        }else {
            return arrT2SPlayerList.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SelectPlayerCell", for: indexPath) as! SelectPlayerCell
        
        if collectionView == collectionPBatsman {
            
            if selectedBatsman_1Index == indexPath {
                cell.lblPlayerName.textColor = UIColor.appIconColor
                cell.lblPlayerType.textColor = UIColor.appIconColor
            }else if selectedBatsman_2Index == indexPath && selectedBatsman_2Index != nil {
                cell.lblPlayerName.textColor = UIColor.appIconColor
                cell.lblPlayerType.textColor = UIColor.appIconColor
            }else {
                cell.lblPlayerName.textColor = UIColor.appNavColor
                cell.lblPlayerType.textColor = UIColor.appNavColor
            }
            
            cell.lblPlayerName.text = arrT1SPlayerList[indexPath.row]
            cell.lblPlayerType.text = arrT1SPlayerTypeList[indexPath.row]
            cell.playerImg.image = UIImage(named: arrT1SPlayerImgList[indexPath.row])
        }else {
            
            if selectedBowler_1Index == indexPath {
                cell.lblPlayerName.textColor = UIColor.appIconColor
                cell.lblPlayerType.textColor = UIColor.appIconColor
            }else if selectedBowler_2Index == indexPath && selectedBowler_2Index != nil {
                cell.lblPlayerName.textColor = UIColor.appIconColor
                cell.lblPlayerType.textColor = UIColor.appIconColor
            }else {
                cell.lblPlayerName.textColor = UIColor.appNavColor
                cell.lblPlayerType.textColor = UIColor.appNavColor
            }
            
            cell.lblPlayerName.text = arrT2SPlayerList[indexPath.row]
            cell.lblPlayerType.text = arrT2SPlayerTypeList[indexPath.row]
            cell.playerImg.image = UIImage(named: arrT2SPlayerImgList[indexPath.row])
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        
        if collectionView == collectionPBatsman {
            print("Index>>> Batsman>>>\(indexPath.row)")
                 
            lblBatsmanNote.isHidden = true
            
            if selectedBatsman_1Index == nil {
                selectedBatsman_1Index = indexPath
                
                lblBastmanName.text = arrT1SPlayerList[indexPath.row]
                strBatsman_1 = arrT1SPlayerList[indexPath.row]
                
                arrSBatsmanList.append(arrT1SPlayerList[indexPath.row])
                arrSBatsmanType.append(arrT1SPlayerTypeList[indexPath.row])
                arrSBatsmanImgList.append(arrT1SPlayerImgList[indexPath.row])
            }else if selectedBatsman_2Index == nil {
                selectedBatsman_2Index = indexPath
                
                strBatsman_2 = arrT1SPlayerList[indexPath.row]
                
                lblBastmanName.text = strBatsman_1 + ", " + strBatsman_2
                
                arrSBatsmanList.append(arrT1SPlayerList[indexPath.row])
                arrSBatsmanType.append(arrT1SPlayerTypeList[indexPath.row])
                arrSBatsmanImgList.append(arrT1SPlayerImgList[indexPath.row])
            }else {
                if selectedBatsman_1Index == indexPath {
                    selectedBatsman_1Index = nil
                    
                    lblBastmanName.text = strBatsman_2
                    strBatsman_1 = ""
                    
                    arrSBatsmanList.remove(at: indexPath.row)
                    arrSBatsmanType.remove(at: indexPath.row)
                    arrSBatsmanImgList.remove(at: indexPath.row)
                }else if selectedBatsman_2Index == indexPath {
                    selectedBatsman_2Index = nil
                    
                    lblBastmanName.text = strBatsman_1
                    strBatsman_2 = ""
                    
                    arrSBatsmanList.remove(at: indexPath.row)
                    arrSBatsmanType.remove(at: indexPath.row)
                    arrSBatsmanImgList.remove(at: indexPath.row)
                }else {
                    if arrSBatsmanList.count == 2 {
                        lblBatsmanNote.text = "Select Two Batsman Only."
                        lblBatsmanNote.isHidden = false
                        return
                    }
                }
            }
                        
//            arrSBatsmanList.append(contentsOf: arrT1SPlayerList)
//            arrSBatsmanType.append(contentsOf: arrT1SPlayerTypeList)
//            arrSBatsmanImgList.append(contentsOf: arrT1SPlayerImgList)
            
            collectionPBatsman.reloadData()
        }else {
            print("Index>>> Bowler>>>\(indexPath.row)")
                    
            lblBowlerNote.isHidden = true
            
            if selectedBowler_1Index == nil {
                selectedBowler_1Index = indexPath
                
                lblBowlerName.text = arrT2SPlayerList[indexPath.row]
                
                strBowler_1 = arrT2SPlayerList[indexPath.row]
                
                arrSBowlerList.append(arrT2SPlayerList[indexPath.row])
                arrSBowlerType.append(arrT2SPlayerTypeList[indexPath.row])
                arrSBowlerImgList.append(arrT2SPlayerImgList[indexPath.row])
            }else if selectedBowler_2Index == nil {
                selectedBowler_2Index = indexPath
                
                strBowler_2 = arrT2SPlayerList[indexPath.row]
                lblBowlerName.text = strBowler_1 + ", " + strBowler_2
                
                arrSBowlerList.append(arrT2SPlayerList[indexPath.row])
                arrSBowlerType.append(arrT2SPlayerTypeList[indexPath.row])
                arrSBowlerImgList.append(arrT2SPlayerImgList[indexPath.row])
            }else {
                if selectedBowler_1Index == indexPath {
                    selectedBowler_1Index = nil
                    
                    lblBowlerName.text = strBowler_2
                    strBowler_1 = ""
                    
                    arrSBowlerList.remove(at: indexPath.row)
                    arrSBowlerType.remove(at: indexPath.row)
                    arrSBowlerImgList.remove(at: indexPath.row)
                }else if selectedBowler_2Index == indexPath {
                    selectedBowler_2Index = nil
                    
                    lblBowlerName.text = strBowler_1
                    strBowler_2 = ""
                    
                    arrSBowlerList.remove(at: indexPath.row)
                    arrSBowlerType.remove(at: indexPath.row)
                    arrSBowlerImgList.remove(at: indexPath.row)
                }else {
                    if arrSBowlerList.count == 2 {
                        lblBowlerNote.text = "Select Two Bowler Only."
                        lblBowlerNote.isHidden = false
                        return
                    }
                }
            }
                        
//            arrSBowlerList.append(contentsOf: arrT2SPlayerList)
//            arrSBowlerType.append(contentsOf: arrT2SPlayerTypeList)
//            arrSBowlerImgList.append(contentsOf: arrT2SPlayerImgList)
            
            collectionPBowler.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        //UIScreen.main.bounds.width/3
        return CGSize(width: 80.0, height: 110.0)
    }
    
    @IBAction func onClickStartMatchBtn(_ sender: Any) {
        if arrSBatsmanList.count == 0 {
            lblBatsmanNote.text = "Select Two Batsman."
            lblBatsmanNote.isHidden = false
            return
        }
        
        if arrSBowlerList.count == 0 {
            lblBowlerNote.text = "Select At List One Bowler."
            lblBowlerNote.isHidden = false
            return
        }
        
        let sb = UIStoryboard(name: "More", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "ScoreBoardVC") as! ScoreBoardVC
        
        lc.arrT1SPlayerList.append(contentsOf: arrT1SPlayerList)
        lc.arrT1SPlayerTypeList.append(contentsOf: arrT1SPlayerTypeList)
        lc.arrT1SPlayerImgList.append(contentsOf: arrT1SPlayerImgList)
        
        lc.arrT2SPlayerList.append(contentsOf: arrT2SPlayerList)
        lc.arrT2SPlayerTypeList.append(contentsOf: arrT2SPlayerTypeList)
        lc.arrT2SPlayerImgList.append(contentsOf: arrT2SPlayerImgList)
        
        lc.arrSBatsmanList.append(contentsOf:arrSBatsmanList)
        lc.arrSBatsmanType.append(contentsOf:arrSBatsmanType)
        lc.arrSBatsmanImgList.append(contentsOf:arrSBatsmanImgList)
        
        lc.arrSBowlerList.append(contentsOf:arrSBowlerList)
        lc.arrSBowlerType.append(contentsOf:arrSBowlerType)
        lc.arrSBowlerImgList.append(contentsOf:arrSBowlerImgList)
                
        lc.strTeam1OPT = strTeam1OPT
        lc.strTeam2OPT = strTeam2OPT
        
        navigationController?.pushViewController(lc, animated: true)
        
    }
}
