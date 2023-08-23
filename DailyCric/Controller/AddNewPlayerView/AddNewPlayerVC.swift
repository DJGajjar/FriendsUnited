//
//  AddNewPlayerVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 02/07/21.
//

import UIKit

class AddNewPlayerVC: UIViewController {

    @IBOutlet weak var pImgView: UIView!
    @IBOutlet weak var pNameView: UIView!
    @IBOutlet weak var pNickNameView: UIView!
    @IBOutlet weak var pBirthDayView: UIView!
    @IBOutlet weak var pTypeView: UIView!
    @IBOutlet weak var pBatView: UIView!
    @IBOutlet weak var pBallView: UIView!
    
    @IBOutlet weak var txtPlayerName: UITextField!
    @IBOutlet weak var txtNickPlayerName: UITextField!
    @IBOutlet weak var txtPlayerDOB: UITextField!
    
    @IBOutlet weak var imgPlayer: UIImageView!
    @IBOutlet weak var wikiSwitch: UISwitch!
    
    @IBOutlet weak var btnPBatsman: UIButton!
    @IBOutlet weak var btnPBowler: UIButton!
    @IBOutlet weak var btnPAllRounder: UIButton!
    @IBOutlet weak var btnPBatRightHand: UIButton!
    @IBOutlet weak var btnPBatLeftHand: UIButton!
    @IBOutlet weak var btnPBowRightArm: UIButton!
    @IBOutlet weak var btnPBowLeftArm: UIButton!
    
    var datePicker: UIDatePicker?
    var datePickerConstraints = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let slpImgView = CAShapeLayer()
        pImgView.layer.cornerRadius = 6
        slpImgView.path = UIBezierPath(roundedRect: pImgView.bounds,
                                      cornerRadius: pImgView.layer.cornerRadius).cgPath
        slpImgView.fillColor = UIColor.white.cgColor
        slpImgView.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slpImgView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slpImgView.shadowOpacity = 0.8
        slpImgView.shadowRadius = 2.8
        pImgView.layer.insertSublayer(slpImgView, at: 0)
        
        let slPNameView = CAShapeLayer()
        pNameView.layer.cornerRadius = 6
        slPNameView.path = UIBezierPath(roundedRect: CGRect(x: 0, y: pNameView.bounds.minY, width: pNameView.bounds.width - 20, height: 50),
                                      cornerRadius: pNameView.layer.cornerRadius).cgPath
        slPNameView.fillColor = UIColor.white.cgColor
        slPNameView.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slPNameView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slPNameView.shadowOpacity = 0.8
        slPNameView.shadowRadius = 2.8
        pNameView.layer.insertSublayer(slPNameView, at: 0)
        
        let slPNickNameView = CAShapeLayer()
        pNickNameView.layer.cornerRadius = 6
        slPNickNameView.path = UIBezierPath(roundedRect: CGRect(x: 0, y: pNameView.bounds.minY, width: pNameView.bounds.width - 20, height: 50),
                                      cornerRadius: pNickNameView.layer.cornerRadius).cgPath
        slPNickNameView.fillColor = UIColor.white.cgColor
        slPNickNameView.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slPNickNameView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slPNickNameView.shadowOpacity = 0.8
        slPNickNameView.shadowRadius = 2.8
        pNickNameView.layer.insertSublayer(slPNickNameView, at: 0)
        
        let slPBirthDayView = CAShapeLayer()
        pBirthDayView.layer.cornerRadius = 6
        slPBirthDayView.path = UIBezierPath(roundedRect: CGRect(x: 0, y: pBirthDayView.bounds.minY, width: pBirthDayView.bounds.width - 20, height: 50),
                                      cornerRadius: pBirthDayView.layer.cornerRadius).cgPath
        slPBirthDayView.fillColor = UIColor.white.cgColor
        slPBirthDayView.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slPBirthDayView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slPBirthDayView.shadowOpacity = 0.8
        slPBirthDayView.shadowRadius = 2.8
        pBirthDayView.layer.insertSublayer(slPBirthDayView, at: 0)
                                    
        let slPTypeView = CAShapeLayer()
        pTypeView.layer.cornerRadius = 6
        slPTypeView.path = UIBezierPath(roundedRect: CGRect(x: 0, y: pTypeView.bounds.minY, width: pTypeView.bounds.width - 20, height: 100),
                                      cornerRadius: pTypeView.layer.cornerRadius).cgPath
        slPTypeView.fillColor = UIColor.white.cgColor
        slPTypeView.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slPTypeView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slPTypeView.shadowOpacity = 0.8
        slPTypeView.shadowRadius = 2.8
        pTypeView.layer.insertSublayer(slPTypeView, at: 0)
        
        let slBtnPBatsman = CAShapeLayer()
        btnPBatsman.layer.cornerRadius = 6
        slBtnPBatsman.path = UIBezierPath(roundedRect: btnPBatsman.bounds,
                                      cornerRadius: btnPBatsman.layer.cornerRadius).cgPath
        slBtnPBatsman.fillColor = UIColor.white.cgColor
        slBtnPBatsman.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnPBatsman.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnPBatsman.shadowOpacity = 0.8
        slBtnPBatsman.shadowRadius = 2.8
        btnPBatsman.layer.insertSublayer(slBtnPBatsman, at: 0)
        
        let slBtnPBowler = CAShapeLayer()
        btnPBowler.layer.cornerRadius = 6
        slBtnPBowler.path = UIBezierPath(roundedRect: btnPBowler.bounds,
                                      cornerRadius: btnPBowler.layer.cornerRadius).cgPath
        slBtnPBowler.fillColor = UIColor.white.cgColor
        slBtnPBowler.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnPBowler.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnPBowler.shadowOpacity = 0.8
        slBtnPBowler.shadowRadius = 2.8
        btnPBowler.layer.insertSublayer(slBtnPBowler, at: 0)
        
        let slBtnPAllRounder = CAShapeLayer()
        btnPAllRounder.layer.cornerRadius = 6
        slBtnPAllRounder.path = UIBezierPath(roundedRect: btnPAllRounder.bounds,
                                          cornerRadius: btnPAllRounder.layer.cornerRadius).cgPath
        slBtnPAllRounder.fillColor = UIColor.white.cgColor
        slBtnPAllRounder.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnPAllRounder.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnPAllRounder.shadowOpacity = 0.8
        slBtnPAllRounder.shadowRadius = 2.8
        btnPAllRounder.layer.insertSublayer(slBtnPAllRounder, at: 0)
        
        let slPBatView = CAShapeLayer()
        pBatView.layer.cornerRadius = 6
        slPBatView.path = UIBezierPath(roundedRect: CGRect(x: 0, y: pBatView.bounds.minY, width: pBatView.bounds.width - 20, height: 80),
                                          cornerRadius: pBatView.layer.cornerRadius).cgPath
        slPBatView.fillColor = UIColor.white.cgColor
        slPBatView.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slPBatView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slPBatView.shadowOpacity = 0.8
        slPBatView.shadowRadius = 2.8
        pBatView.layer.insertSublayer(slPBatView, at: 0)
                
        let slBtnPBatRightHand = CAShapeLayer()
        btnPBatRightHand.layer.cornerRadius = 6
        slBtnPBatRightHand.path = UIBezierPath(roundedRect: btnPBatRightHand.bounds,
                                          cornerRadius: btnPBatRightHand.layer.cornerRadius).cgPath
        slBtnPBatRightHand.fillColor = UIColor.white.cgColor
        slBtnPBatRightHand.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnPBatRightHand.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnPBatRightHand.shadowOpacity = 0.8
        slBtnPBatRightHand.shadowRadius = 2.8
        btnPBatRightHand.layer.insertSublayer(slBtnPBatRightHand, at: 0)
        
        let slBtnPBatLeftHand = CAShapeLayer()
        btnPBatLeftHand.layer.cornerRadius = 6
        slBtnPBatLeftHand.path = UIBezierPath(roundedRect: btnPBatLeftHand.bounds,
                                          cornerRadius: btnPBatLeftHand.layer.cornerRadius).cgPath
        slBtnPBatLeftHand.fillColor = UIColor.white.cgColor
        slBtnPBatLeftHand.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnPBatLeftHand.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnPBatLeftHand.shadowOpacity = 0.8
        slBtnPBatLeftHand.shadowRadius = 2.8
        btnPBatLeftHand.layer.insertSublayer(slBtnPBatLeftHand, at: 0)
        
        let slPBallView = CAShapeLayer()
        pBallView.layer.cornerRadius = 6
        slPBallView.path = UIBezierPath(roundedRect: CGRect(x: 0, y: pBallView.bounds.minY, width: pBallView.bounds.width - 20, height: 80),
                                          cornerRadius: pBallView.layer.cornerRadius).cgPath
        slPBallView.fillColor = UIColor.white.cgColor
        slPBallView.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slPBallView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slPBallView.shadowOpacity = 0.8
        slPBallView.shadowRadius = 2.8
        pBallView.layer.insertSublayer(slPBallView, at: 0)
                
        let slBtnPBowRightArm = CAShapeLayer()
        btnPBowRightArm.layer.cornerRadius = 6
        slBtnPBowRightArm.path = UIBezierPath(roundedRect: btnPBowRightArm.bounds,
                                          cornerRadius: btnPBowRightArm.layer.cornerRadius).cgPath
        slBtnPBowRightArm.fillColor = UIColor.white.cgColor
        slBtnPBowRightArm.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnPBowRightArm.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnPBowRightArm.shadowOpacity = 0.8
        slBtnPBowRightArm.shadowRadius = 2.8
        btnPBowRightArm.layer.insertSublayer(slBtnPBowRightArm, at: 0)
        
        let slBtnPBowLeftArm = CAShapeLayer()
        btnPBowLeftArm.layer.cornerRadius = 6
        slBtnPBowLeftArm.path = UIBezierPath(roundedRect: btnPBowLeftArm.bounds,
                                          cornerRadius: btnPBowLeftArm.layer.cornerRadius).cgPath
        slBtnPBowLeftArm.fillColor = UIColor.white.cgColor
        slBtnPBowLeftArm.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        slBtnPBowLeftArm.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slBtnPBowLeftArm.shadowOpacity = 0.8
        slBtnPBowLeftArm.shadowRadius = 2.8
        btnPBowLeftArm.layer.insertSublayer(slBtnPBowLeftArm, at: 0)
            
        wikiSwitch.isOn = false
        
        txtPlayerDOB.inputView = datePicker
        
        //self.showDatePicker()
    }
        
    func showDatePicker() {
        datePicker = UIDatePicker()
        datePicker?.date = Date()
        datePicker?.locale = .current
        datePicker?.preferredDatePickerStyle = .inline //compact
        datePicker?.addTarget(self, action: #selector(handleDateSelection), for: .valueChanged)
        addDatePickerAsSubview()
    }
    
    func addDatePickerAsSubview() {
        guard let datePicker = datePicker else { return }
        self.view.addSubview(datePicker)
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        updateDatePickerConstraints()
    }
    
    
    func updateDatePickerConstraints() {
        guard let datePicker = datePicker else { return }
        
        // Remove any previously set constraints.
        self.view.removeConstraints(datePickerConstraints)
        datePickerConstraints.removeAll()
        
        // Set new constraints depending on the date picker style.
        datePickerConstraints.append(datePicker.centerYAnchor.constraint(equalTo: self.view.centerYAnchor))
        
        if datePicker.preferredDatePickerStyle != .inline {
            datePickerConstraints.append(datePicker.centerXAnchor.constraint(equalTo: self.view.centerXAnchor))
        } else {
            datePickerConstraints.append(datePicker.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8))
            datePickerConstraints.append(datePicker.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8))
        }
        
        // Activate all constraints.
        NSLayoutConstraint.activate(datePickerConstraints)
    }
    
    
    @objc func handleDateSelection() {
        guard let picker = datePicker else { return }
        print("Selected date/time:", picker.date)
    }
    
    @IBAction func onClickBatsmanBtn(_ sender: Any) {
        btnPBatsman.backgroundColor = UIColor.white
        btnPBatsman.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnPBowler.backgroundColor = UIColor.white
        btnPBowler.setTitleColor(UIColor.appNavColor, for: .normal)
        
        btnPAllRounder.backgroundColor = UIColor.white
        btnPAllRounder.setTitleColor(UIColor.appNavColor, for: .normal)
    }
    
    @IBAction func onClickBowlerBtn(_ sender: Any) {
        btnPBowler.backgroundColor = UIColor.white
        btnPBowler.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnPBatsman.backgroundColor = UIColor.white
        btnPBatsman.setTitleColor(UIColor.appNavColor, for: .normal)
                
        btnPAllRounder.backgroundColor = UIColor.white
        btnPAllRounder.setTitleColor(UIColor.appNavColor, for: .normal)
    }
    
    @IBAction func onClickAllRounderBtn(_ sender: Any) {
        btnPAllRounder.backgroundColor = UIColor.white
        btnPAllRounder.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnPBatsman.backgroundColor = UIColor.white
        btnPBatsman.setTitleColor(UIColor.appNavColor, for: .normal)
        
        btnPBowler.backgroundColor = UIColor.white
        btnPBowler.setTitleColor(UIColor.appNavColor, for: .normal)
    }
    
    @IBAction func onClickRightHandedBatsmanBtn(_ sender: Any) {
        btnPBatRightHand.backgroundColor = UIColor.white
        btnPBatRightHand.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnPBatLeftHand.backgroundColor = UIColor.white
        btnPBatLeftHand.setTitleColor(UIColor.appNavColor, for: .normal)
    }
    
    @IBAction func onClickLeftHandedBatsmanBtn(_ sender: Any) {
        btnPBatRightHand.backgroundColor = UIColor.white
        btnPBatRightHand.setTitleColor(UIColor.appNavColor, for: .normal)
        
        btnPBatLeftHand.backgroundColor = UIColor.white
        btnPBatLeftHand.setTitleColor(UIColor.appThemeColor, for: .normal)
    }
        
    @IBAction func onClickRightArmBowlerBtn(_ sender: Any) {
        btnPBowRightArm.backgroundColor = UIColor.white
        btnPBowRightArm.setTitleColor(UIColor.appThemeColor, for: .normal)
        
        btnPBowLeftArm.backgroundColor = UIColor.white
        btnPBowLeftArm.setTitleColor(UIColor.appNavColor, for: .normal)
    }
    
    @IBAction func onClickLeftArmBowlerBtn(_ sender: Any) {
        btnPBowRightArm.backgroundColor = UIColor.white
        btnPBowRightArm.setTitleColor(UIColor.appNavColor, for: .normal)
        
        btnPBowLeftArm.backgroundColor = UIColor.white
        btnPBowLeftArm.setTitleColor(UIColor.appThemeColor, for: .normal)
    }
    
    @IBAction func onSwipeToOnSwitch(_ sender: Any) {
        if wikiSwitch.isOn {
            wikiSwitch.isOn = true
        }else {
            wikiSwitch.isOn = false
        }
    }
    
    @IBAction func onClickAddPlayerDetailBtn(_ sender: Any) {
        
    }
}

/*
 btnPBatsman.layer.cornerRadius = 6
 shadowLayer.path = UIBezierPath(roundedRect: btnPBatsman.bounds,
                               cornerRadius: btnPBatsman.layer.cornerRadius).cgPath
 //          shadowLayer.fillColor = btnPAllRounder.backgroundColor?.cgColor
 shadowLayer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 //          shadowLayer.shadowOffset = CGSize(width: 2.0, height: 2.0)
 shadowLayer.shadowOpacity = 0.8
 shadowLayer.shadowRadius = 2.8
 btnPBatsman.layer.insertSublayer(shadowLayer, at: 0)
 
 
 //        pTypeView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 //        pTypeView.layer.shadowOpacity = 0.8
 //        pTypeView.layer.shadowOffset = .zero
 //        pTypeView.layer.shadowRadius = 2.8
         
 //        btnPBatsman.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 //        btnPBatsman.layer.shadowOpacity = 0.8
 //        btnPBatsman.layer.shadowOffset = .zero
 //        btnPBatsman.layer.shadowRadius = 2.8
 //
 //        btnPBowler.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 //        btnPBowler.layer.shadowOpacity = 0.8
 //        btnPBowler.layer.shadowOffset = .zero
 //        btnPBowler.layer.shadowRadius = 2.8
         
 //        btnPAllRounder.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 //        btnPAllRounder.layer.shadowOpacity = 0.8
 //        btnPAllRounder.layer.shadowOffset = .zero
 //        btnPAllRounder.layer.shadowRadius = 2.8
 
 pImgView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 pImgView.layer.shadowOpacity = 0.8
 pImgView.layer.shadowOffset = .zero
 pImgView.layer.shadowRadius = 2.8
 
 pNameView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 pNameView.layer.shadowOpacity = 0.8
 pNameView.layer.shadowOffset = .zero
 pNameView.layer.shadowRadius = 2.8
 
 pNickNameView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 pNickNameView.layer.shadowOpacity = 0.8
 pNickNameView.layer.shadowOffset = .zero
 pNickNameView.layer.shadowRadius = 2.8
 
 pBirthDayView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 pBirthDayView.layer.shadowOpacity = 0.8
 pBirthDayView.layer.shadowOffset = .zero
 pBirthDayView.layer.shadowRadius = 2.8
 
 pBatView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 pBatView.layer.shadowOpacity = 0.8
 pBatView.layer.shadowOffset = .zero
 pBatView.layer.shadowRadius = 2.8
 
 btnPBatRightHand.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 btnPBatRightHand.layer.shadowOpacity = 0.8
 btnPBatRightHand.layer.shadowOffset = .zero
 btnPBatRightHand.layer.shadowRadius = 2.8
 
 btnPBatLeftHand.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 btnPBatLeftHand.layer.shadowOpacity = 0.8
 btnPBatLeftHand.layer.shadowOffset = .zero
 btnPBatLeftHand.layer.shadowRadius = 2.8
 
 pBallView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 pBallView.layer.shadowOpacity = 0.8
 pBallView.layer.shadowOffset = .zero
 pBallView.layer.shadowRadius = 2.8
 
 btnPBowRightArm.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 btnPBowRightArm.layer.shadowOpacity = 0.8
 btnPBowRightArm.layer.shadowOffset = .zero
 btnPBowRightArm.layer.shadowRadius = 2.8
 
 btnPBowLeftArm.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
 btnPBowLeftArm.layer.shadowOpacity = 0.8
 btnPBowLeftArm.layer.shadowOffset = .zero
 btnPBowLeftArm.layer.shadowRadius = 2.8
 */
