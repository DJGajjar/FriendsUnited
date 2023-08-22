//
//  ScoreBoardVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 03/07/21.
//

import UIKit

class ScoreBoardVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var scoreBoardView: UIView!
    @IBOutlet weak var batsmanView: UIView!
    
    @IBOutlet weak var bowlerView: UIView!
    @IBOutlet weak var runBoardView: UIView!
    
    @IBOutlet var collectionB1: UICollectionView!
    @IBOutlet var collectionB2: UICollectionView!
    
    @IBOutlet var lblTeamScore: UILabel!
    @IBOutlet var lblTeamInfo: UILabel!
    
    @IBOutlet var lblBatsman1Name: UILabel!
    @IBOutlet var lblBatsman2Name: UILabel!
    @IBOutlet var lblBatsman1Run: UILabel!
    @IBOutlet var lblBatsman2Run: UILabel!
    
    @IBOutlet var lblBowler1Name: UILabel!
    @IBOutlet var lblBowler2Name: UILabel!
    @IBOutlet var lblBowler1Over: UILabel!
    @IBOutlet var lblBowler2Over: UILabel!
    
    var arrT1SPlayerList = [String]()
    var arrT1SPlayerTypeList = [String]()
    var arrT1SPlayerImgList = [String]()
    
    var arrT2SPlayerList = [String]()
    var arrT2SPlayerTypeList = [String]()
    var arrT2SPlayerImgList = [String]()
    
    var strTeam1OPT: String!
    var strTeam2OPT: String!
    
    var arrSBatsmanList = [String]()
    var arrSBatsmanType = [String]()
    var arrSBatsmanImgList = [String]()
    
    var arrSBowlerList = [String]()
    var arrSBowlerType = [String]()
    var arrSBowlerImgList = [String]()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scoreBoardView.layer.shadowColor = #colorLiteral(red: 0.0431372549, green: 0.007843137255, blue: 0.1843137255, alpha: 1)
        scoreBoardView.layer.shadowOpacity = 0.8
        scoreBoardView.layer.shadowOffset = .zero
        scoreBoardView.layer.shadowRadius = 2.8
        
        batsmanView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
        batsmanView.layer.shadowOpacity = 0.8
        batsmanView.layer.shadowOffset = .zero
        batsmanView.layer.shadowRadius = 2.8
        batsmanView.layer.cornerRadius = 10.0
        
        bowlerView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
        bowlerView.layer.shadowOpacity = 0.8
        bowlerView.layer.shadowOffset = .zero
        bowlerView.layer.shadowRadius = 2.8
        bowlerView.layer.cornerRadius = 10.0
        
        runBoardView.layer.shadowColor = #colorLiteral(red: 0.0431372549, green: 0.007843137255, blue: 0.1843137255, alpha: 1)
        runBoardView.layer.shadowOpacity = 0.8
        runBoardView.layer.shadowOffset = .zero
        runBoardView.layer.shadowRadius = 2.8
        runBoardView.layer.cornerRadius = 10.0
                
        let strOverCount = String(format: "(14.5/16)")
        let atbStringOne = [NSAttributedString.Key.font : UIFont(name: "OpenSans-Regular", size: 40), NSAttributedString.Key.foregroundColor : UIColor.appNavColor]
        let atbStringTwo = [NSAttributedString.Key.font : UIFont(name: "OpenSans-SemiBold", size: 14), NSAttributedString.Key.foregroundColor : UIColor.appNavColor]
        let attributedStringOne = NSMutableAttributedString(string: "85/5", attributes:atbStringOne as [NSAttributedString.Key : Any])
        let attributedStringTwo = NSMutableAttributedString(string: strOverCount, attributes:atbStringTwo as [NSAttributedString.Key : Any])

        attributedStringOne.append(attributedStringTwo)
        
        lblTeamScore.attributedText = attributedStringOne
        
        self.collectionB1.register(UINib(nibName: "BowlerRunCell", bundle: nil), forCellWithReuseIdentifier: "BowlerRunCell")
        self.collectionB2.register(UINib(nibName: "BowlerRunCell", bundle: nil), forCellWithReuseIdentifier: "BowlerRunCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
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
    
    @IBAction func onClickMatchInfoBtn(_ sender: Any) {
//        let sb = UIStoryboard(name: "Home", bundle: nil)
//        let lc = sb.instantiateViewController(withIdentifier: "MatchInfoVC") as! MatchInfoVC
//        navigationController?.pushViewController(lc, animated: false)
    }
    
    @IBAction func onClickZeroBtn(_ sender: Any) {
        
    }
    
    @IBAction func onClickOneBtn(_ sender: Any) {
        
    }
    
    @IBAction func onClickTwoBtn(_ sender: Any) {
        
    }
    
    @IBAction func onClickThreeBtn(_ sender: Any) {
        
    }
    
    @IBAction func onClickFourBtn(_ sender: Any) {
        
    }
    
    @IBAction func onClickFiveBtn(_ sender: Any) {
        
    }
    
    @IBAction func onClickSixBtn(_ sender: Any) {
        
    }
    
    @IBAction func onClickSevenBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "More", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "InningsCompletedVC") as! InningsCompletedVC
        navigationController?.pushViewController(lc, animated: false)
    }
    
    @IBAction func onClickUndoBtn(_ sender: Any) {
        
    }
    
    @IBAction func onClickOutBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "More", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "OutOPTVC") as! OutOPTVC
        navigationController?.pushViewController(lc, animated: true)
    }
    
    @IBAction func onClickWideBtn(_ sender: Any) {
        
    }
    
    @IBAction func onClickNoBallBtn(_ sender: Any) {
        
    }
}
