//
//  CreateTeamVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 02/07/21.
//

import UIKit

class CreateTeamVC: UIViewController {

    @IBOutlet weak var team1View: UIView!
    @IBOutlet weak var team2View: UIView!
    @IBOutlet weak var captain1View: UIView!
    @IBOutlet weak var captain2View: UIView!
    @IBOutlet weak var battingTossView: UIView!
    @IBOutlet weak var bowlingTossView: UIView!
    @IBOutlet weak var chooseView: UIView!
    
    @IBOutlet weak var btnBattingTeam1: UIButton!
    @IBOutlet weak var btnBattingTeam2: UIButton!
    @IBOutlet weak var btnBowlingTeam1: UIButton!
    @IBOutlet weak var btnBowlingTeam2: UIButton!
    @IBOutlet weak var btnTeam1Batting: UIButton!
    @IBOutlet weak var btnTeam1Bowling: UIButton!
    @IBOutlet weak var btnTeam2Batting: UIButton!
    @IBOutlet weak var btnTeam2Bowling: UIButton!
    
    var isTeamSelect: Bool = false
    
    var strTeam1: String = ""
    var strTeam2: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let slTeam1View = CAShapeLayer()
        team1View.layer.cornerRadius = 10
        slTeam1View.path = UIBezierPath(roundedRect: CGRect(x: 0, y: team1View.bounds.minY, width: team1View.bounds.width - 20, height: 50),
                                      cornerRadius: team1View.layer.cornerRadius).cgPath
        slTeam1View.fillColor = UIColor.white.cgColor
        slTeam1View.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slTeam1View.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slTeam1View.shadowOpacity = 0.8
        slTeam1View.shadowRadius = 2.8
        team1View.layer.insertSublayer(slTeam1View, at: 0)
        
        let slTeam2View = CAShapeLayer()
        team2View.layer.cornerRadius = 10
        slTeam2View.path = UIBezierPath(roundedRect: CGRect(x: 0, y: team2View.bounds.minY, width: team2View.bounds.width - 20, height: 50),
                                      cornerRadius: team2View.layer.cornerRadius).cgPath
        slTeam2View.fillColor = UIColor.white.cgColor
        slTeam2View.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slTeam2View.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slTeam2View.shadowOpacity = 0.8
        slTeam2View.shadowRadius = 2.8
        team2View.layer.insertSublayer(slTeam2View, at: 0)
        
        let slCaptain1View = CAShapeLayer()
        captain1View.layer.cornerRadius = 10
        slCaptain1View.path = UIBezierPath(roundedRect: CGRect(x: 0, y: captain1View.bounds.minY, width: captain1View.bounds.width - 20, height: 50),
                                      cornerRadius: captain1View.layer.cornerRadius).cgPath
        slCaptain1View.fillColor = UIColor.white.cgColor
        slCaptain1View.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slCaptain1View.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slCaptain1View.shadowOpacity = 0.8
        slCaptain1View.shadowRadius = 2.8
        captain1View.layer.insertSublayer(slCaptain1View, at: 0)
        
        let slCaptain2View = CAShapeLayer()
        captain2View.layer.cornerRadius = 10
        slCaptain2View.path = UIBezierPath(roundedRect: CGRect(x: 0, y: captain2View.bounds.minY, width: captain2View.bounds.width - 20, height: 50),
                                      cornerRadius: captain2View.layer.cornerRadius).cgPath
        slCaptain2View.fillColor = UIColor.white.cgColor
        slCaptain2View.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slCaptain2View.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slCaptain2View.shadowOpacity = 0.8
        slCaptain2View.shadowRadius = 2.8
        captain2View.layer.insertSublayer(slCaptain2View, at: 0)
           
        let slBattingTossView = CAShapeLayer()
        battingTossView.layer.cornerRadius = 10
        slBattingTossView.path = UIBezierPath(roundedRect: CGRect(x: 0, y: battingTossView.bounds.minY, width: battingTossView.bounds.width - 20, height: 80),
                                      cornerRadius: battingTossView.layer.cornerRadius).cgPath
        slBattingTossView.fillColor = UIColor.white.cgColor
        slBattingTossView.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBattingTossView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBattingTossView.shadowOpacity = 0.8
        slBattingTossView.shadowRadius = 2.8
        battingTossView.layer.insertSublayer(slBattingTossView, at: 0)
        
        let slBowlingTossView = CAShapeLayer()
        bowlingTossView.layer.cornerRadius = 10
        slBowlingTossView.path = UIBezierPath(roundedRect: CGRect(x: 0, y: bowlingTossView.bounds.minY, width: bowlingTossView.bounds.width - 20, height: 80),
                                      cornerRadius: bowlingTossView.layer.cornerRadius).cgPath
        slBowlingTossView.fillColor = UIColor.white.cgColor
        slBowlingTossView.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBowlingTossView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBowlingTossView.shadowOpacity = 0.8
        slBowlingTossView.shadowRadius = 2.8
        bowlingTossView.layer.insertSublayer(slBowlingTossView, at: 0)
               
        let slChooseView = CAShapeLayer()
        chooseView.layer.cornerRadius = 10
        slChooseView.path = UIBezierPath(roundedRect: CGRect(x: 0, y: chooseView.bounds.minY, width: chooseView.bounds.width - 20, height: 130),
                                      cornerRadius: chooseView.layer.cornerRadius).cgPath
        slChooseView.fillColor = UIColor.white.cgColor
        slChooseView.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slChooseView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slChooseView.shadowOpacity = 0.8
        slChooseView.shadowRadius = 2.8
        chooseView.layer.insertSublayer(slChooseView, at: 0)
        
        let slBtnBattingTeam1 = CAShapeLayer()
        btnBattingTeam1.layer.cornerRadius = 6
        slBtnBattingTeam1.path = UIBezierPath(roundedRect: btnBattingTeam1.bounds,
                                      cornerRadius: btnBattingTeam1.layer.cornerRadius).cgPath
        slBtnBattingTeam1.fillColor = UIColor.white.cgColor
        slBtnBattingTeam1.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnBattingTeam1.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnBattingTeam1.shadowOpacity = 0.8
        slBtnBattingTeam1.shadowRadius = 2.8
        btnBattingTeam1.layer.insertSublayer(slBtnBattingTeam1, at: 0)
    
        let slBtnBattingTeam2 = CAShapeLayer()
        btnBattingTeam2.layer.cornerRadius = 6
        slBtnBattingTeam2.path = UIBezierPath(roundedRect: btnBattingTeam2.bounds,
                                      cornerRadius: btnBattingTeam2.layer.cornerRadius).cgPath
        slBtnBattingTeam2.fillColor = UIColor.white.cgColor
        slBtnBattingTeam2.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnBattingTeam2.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnBattingTeam2.shadowOpacity = 0.8
        slBtnBattingTeam2.shadowRadius = 2.8
        btnBattingTeam2.layer.insertSublayer(slBtnBattingTeam2, at: 0)
        
        let slBtnBowlingTeam1 = CAShapeLayer()
        btnBowlingTeam1.layer.cornerRadius = 6
        slBtnBowlingTeam1.path = UIBezierPath(roundedRect: btnBowlingTeam1.bounds,
                                      cornerRadius: btnBowlingTeam1.layer.cornerRadius).cgPath
        slBtnBowlingTeam1.fillColor = UIColor.white.cgColor
        slBtnBowlingTeam1.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnBowlingTeam1.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnBowlingTeam1.shadowOpacity = 0.8
        slBtnBowlingTeam1.shadowRadius = 2.8
        btnBowlingTeam1.layer.insertSublayer(slBtnBowlingTeam1, at: 0)
        
        let slBtnBowlingTeam2 = CAShapeLayer()
        btnBowlingTeam2.layer.cornerRadius = 6
        slBtnBowlingTeam2.path = UIBezierPath(roundedRect: btnBowlingTeam2.bounds,
                                      cornerRadius: btnBowlingTeam2.layer.cornerRadius).cgPath
        slBtnBowlingTeam2.fillColor = UIColor.white.cgColor
        slBtnBowlingTeam2.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnBowlingTeam2.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnBowlingTeam2.shadowOpacity = 0.8
        slBtnBowlingTeam2.shadowRadius = 2.8
        btnBowlingTeam2.layer.insertSublayer(slBtnBowlingTeam2, at: 0)
        
        
        
        let slBtnTeam1Batting = CAShapeLayer()
        btnTeam1Batting.layer.cornerRadius = 6
        slBtnTeam1Batting.path = UIBezierPath(roundedRect: btnTeam1Batting.bounds,
                                      cornerRadius: btnTeam1Batting.layer.cornerRadius).cgPath
        slBtnTeam1Batting.fillColor = UIColor.white.cgColor
        slBtnTeam1Batting.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnTeam1Batting.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnTeam1Batting.shadowOpacity = 0.8
        slBtnTeam1Batting.shadowRadius = 2.8
        btnTeam1Batting.layer.insertSublayer(slBtnTeam1Batting, at: 0)

        let slBtnTeam1Bowling = CAShapeLayer()
        btnTeam1Bowling.layer.cornerRadius = 6
        slBtnTeam1Bowling.path = UIBezierPath(roundedRect: btnTeam1Bowling.bounds,
                                      cornerRadius: btnTeam1Bowling.layer.cornerRadius).cgPath
        slBtnTeam1Bowling.fillColor = UIColor.white.cgColor
        slBtnTeam1Bowling.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnTeam1Bowling.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnTeam1Bowling.shadowOpacity = 0.8
        slBtnTeam1Bowling.shadowRadius = 2.8
        btnTeam1Bowling.layer.insertSublayer(slBtnTeam1Bowling, at: 0)
                
        let slBtnTeam2Bowling = CAShapeLayer()
        btnTeam2Bowling.layer.cornerRadius = 6
        slBtnTeam2Bowling.path = UIBezierPath(roundedRect: btnTeam2Bowling.bounds,
                                      cornerRadius: btnTeam2Bowling.layer.cornerRadius).cgPath
        slBtnTeam2Bowling.fillColor = UIColor.white.cgColor
        slBtnTeam2Bowling.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnTeam2Bowling.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnTeam2Bowling.shadowOpacity = 0.8
        slBtnTeam2Bowling.shadowRadius = 2.8
        btnTeam2Bowling.layer.insertSublayer(slBtnTeam2Bowling, at: 0)
        
        let slBtnTeam2Batting = CAShapeLayer()
        btnTeam2Batting.layer.cornerRadius = 6
        slBtnTeam2Batting.path = UIBezierPath(roundedRect: btnTeam2Batting.bounds,
                                      cornerRadius: btnTeam2Batting.layer.cornerRadius).cgPath
        slBtnTeam2Batting.fillColor = UIColor.white.cgColor
        slBtnTeam2Batting.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnTeam2Batting.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnTeam2Batting.shadowOpacity = 0.8
        slBtnTeam2Batting.shadowRadius = 2.8
        btnTeam2Batting.layer.insertSublayer(slBtnTeam2Batting, at: 0)
    }
    
    @IBAction func onClickBattingTossTeam1Btn(_ sender: Any) {
        btnBattingTeam1.backgroundColor = UIColor.white
        btnBattingTeam1.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnBattingTeam2.backgroundColor = UIColor.white
        btnBattingTeam2.setTitleColor(UIColor.appNavColor, for: .normal)
    }
    
    @IBAction func onClickBattingTossTeam2Btn(_ sender: Any) {
        btnBattingTeam1.backgroundColor = UIColor.white
        btnBattingTeam1.setTitleColor(UIColor.appNavColor, for: .normal)
        
        btnBattingTeam2.backgroundColor = UIColor.white
        btnBattingTeam2.setTitleColor(UIColor.appThemeColor, for: .normal)
    }
    
    @IBAction func onClickBowlingTossTeam1Btn(_ sender: Any) {
        btnBowlingTeam1.backgroundColor = UIColor.white
        btnBowlingTeam1.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnBowlingTeam2.backgroundColor = UIColor.white
        btnBowlingTeam2.setTitleColor(UIColor.appNavColor, for: .normal)
    }
    
    @IBAction func onClickBowlingTossTeam2Btn(_ sender: Any) {
        btnBowlingTeam1.backgroundColor = UIColor.white
        btnBowlingTeam1.setTitleColor(UIColor.appNavColor, for: .normal)
        
        btnBowlingTeam2.backgroundColor = UIColor.white
        btnBowlingTeam2.setTitleColor(UIColor.appThemeColor, for: .normal)
    }
    
    @IBAction func onClickOTPTeam1BattingBtn(_ sender: Any) {
        btnTeam1Batting.backgroundColor = UIColor.white
        btnTeam1Batting.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnTeam1Bowling.backgroundColor = UIColor.white
        btnTeam1Bowling.setTitleColor(UIColor.appNavColor, for: .normal)
                
        btnTeam2Batting.backgroundColor = UIColor.white
        btnTeam2Batting.setTitleColor(UIColor.appNavColor, for: .normal)
        
        btnTeam2Bowling.backgroundColor = UIColor.white
        btnTeam2Bowling.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        isTeamSelect = true
        
        strTeam1 = "Batting"
        strTeam2 = "Bowling"
    }
    
    @IBAction func onClickOTPTeam1FieldBtn(_ sender: Any) {
        btnTeam1Batting.backgroundColor = UIColor.white
        btnTeam1Batting.setTitleColor(UIColor.appNavColor, for: .normal)
        
        btnTeam1Bowling.backgroundColor = UIColor.white
        btnTeam1Bowling.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnTeam2Batting.backgroundColor = UIColor.white
        btnTeam2Batting.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnTeam2Bowling.backgroundColor = UIColor.white
        btnTeam2Bowling.setTitleColor(UIColor.appNavColor, for: .normal)
        
        isTeamSelect = true
        
        strTeam1 = "Bowling"
        strTeam2 = "Batting"
    }
    
    @IBAction func onClickOTPTeam2BattingBtn(_ sender: Any) {
        btnTeam2Batting.backgroundColor = UIColor.white
        btnTeam2Batting.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnTeam2Bowling.backgroundColor = UIColor.white
        btnTeam2Bowling.setTitleColor(UIColor.appNavColor, for: .normal)
        
        btnTeam1Batting.backgroundColor = UIColor.white
        btnTeam1Batting.setTitleColor(UIColor.appNavColor, for: .normal)
        
        btnTeam1Bowling.backgroundColor = UIColor.white
        btnTeam1Bowling.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        isTeamSelect = true
        
        strTeam1 = "Bowling"
        strTeam2 = "Batting"
    }
    
    @IBAction func onClickOTPTeam2FieldBtn(_ sender: Any) {
        btnTeam2Batting.backgroundColor = UIColor.white
        btnTeam2Batting.setTitleColor(UIColor.appNavColor, for: .normal)
        
        btnTeam2Bowling.backgroundColor = UIColor.white
        btnTeam2Bowling.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnTeam1Batting.backgroundColor = UIColor.white
        btnTeam1Batting.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnTeam1Bowling.backgroundColor = UIColor.white
        btnTeam1Bowling.setTitleColor(UIColor.appNavColor, for: .normal)
        
        isTeamSelect = true
        
        strTeam1 = "Batting"
        strTeam2 = "Bowling"
    }
    
    @IBAction func onClickNextBtn(_ sender: Any) {
        
        if isTeamSelect == true {
            let sb = UIStoryboard(name: "More", bundle: nil)
            let lc = sb.instantiateViewController(withIdentifier: "SelectPlayerVC") as! SelectPlayerVC
            lc.strTeam1PlayOPT = strTeam1
            lc.strTeam2PlayOPT = strTeam2
            navigationController?.pushViewController(lc, animated: true)
        }else {
            showAlert(title: helper.shared.APP_ALERT_TITLE, message: "Please Select Playing Option", viewController: self)
        }
    }
}

/*
 team1View.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 team1View.layer.shadowOpacity = 0.8
 team1View.layer.shadowOffset = .zero
 team1View.layer.shadowRadius = 2.8
 
 team2View.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 team2View.layer.shadowOpacity = 0.8
 team2View.layer.shadowOffset = .zero
 team2View.layer.shadowRadius = 2.8
 
 captain1View.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 captain1View.layer.shadowOpacity = 0.8
 captain1View.layer.shadowOffset = .zero
 captain1View.layer.shadowRadius = 2.8
 
 captain2View.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 captain2View.layer.shadowOpacity = 0.8
 captain2View.layer.shadowOffset = .zero
 captain2View.layer.shadowRadius = 2.8
 
 battingTossView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 battingTossView.layer.shadowOpacity = 0.8
 battingTossView.layer.shadowOffset = .zero
 battingTossView.layer.shadowRadius = 2.8
 
 bowlingTossView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 bowlingTossView.layer.shadowOpacity = 0.8
 bowlingTossView.layer.shadowOffset = .zero
 bowlingTossView.layer.shadowRadius = 2.8
 
 chooseView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 chooseView.layer.shadowOpacity = 0.8
 chooseView.layer.shadowOffset = .zero
 chooseView.layer.shadowRadius = 2.8
 
 btnBattingTeam1.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 btnBattingTeam1.layer.shadowOpacity = 0.8
 btnBattingTeam1.layer.shadowOffset = .zero
 btnBattingTeam1.layer.shadowRadius = 2.8
 
 btnBattingTeam2.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 btnBattingTeam2.layer.shadowOpacity = 0.8
 btnBattingTeam2.layer.shadowOffset = .zero
 btnBattingTeam2.layer.shadowRadius = 2.8
 
 btnBowlingTeam1.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 btnBowlingTeam1.layer.shadowOpacity = 0.8
 btnBowlingTeam1.layer.shadowOffset = .zero
 btnBowlingTeam1.layer.shadowRadius = 2.8

 btnBowlingTeam2.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 btnBowlingTeam2.layer.shadowOpacity = 0.8
 btnBowlingTeam2.layer.shadowOffset = .zero
 btnBowlingTeam2.layer.shadowRadius = 2.8
 
 btnTeam1Batting.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 btnTeam1Batting.layer.shadowOpacity = 0.8
 btnTeam1Batting.layer.shadowOffset = .zero
 btnTeam1Batting.layer.shadowRadius = 2.8
         
 btnTeam1Bowling.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 btnTeam1Bowling.layer.shadowOpacity = 0.8
 btnTeam1Bowling.layer.shadowOffset = .zero
 btnTeam1Bowling.layer.shadowRadius = 2.8
 
 btnTeam2Batting.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 btnTeam2Batting.layer.shadowOpacity = 0.8
 btnTeam2Batting.layer.shadowOffset = .zero
 btnTeam2Batting.layer.shadowRadius = 2.8
 
 btnTeam2Bowling.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 btnTeam2Bowling.layer.shadowOpacity = 0.8
 btnTeam2Bowling.layer.shadowOffset = .zero
 btnTeam2Bowling.layer.shadowRadius = 2.8
 */
