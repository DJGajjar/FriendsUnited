//
//  LoginViewController.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 02/07/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var pImgView: UIView!
    @IBOutlet weak var pEmailView: UIView!
    @IBOutlet weak var pPasswordView: UIView!
    
    @IBOutlet weak var txtEmailID: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        pImgView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
        pImgView.layer.shadowOpacity = 0.8
        pImgView.layer.shadowOffset = .zero
        pImgView.layer.shadowRadius = 2.8
        
        pEmailView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
        pEmailView.layer.shadowOpacity = 0.8
        pEmailView.layer.shadowOffset = .zero
        pEmailView.layer.shadowRadius = 2.8
        
        pPasswordView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
        pPasswordView.layer.shadowOpacity = 0.8
        pPasswordView.layer.shadowOffset = .zero
        pPasswordView.layer.shadowRadius = 2.8
        
        let slpImgView = CAShapeLayer()
        pImgView.layer.cornerRadius = 6
        slpImgView.path = UIBezierPath(roundedRect: pImgView.bounds,
                                      cornerRadius: pImgView.layer.cornerRadius).cgPath
        slpImgView.fillColor = UIColor.white.cgColor
        slpImgView.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
        slpImgView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slpImgView.shadowOpacity = 0.8
        slpImgView.shadowRadius = 2.8
        pImgView.layer.insertSublayer(slpImgView, at: 0)
        
        let slPEmailView = CAShapeLayer()
        pEmailView.layer.cornerRadius = 6
        slPEmailView.path = UIBezierPath(roundedRect: pEmailView.bounds,
                                      cornerRadius: pEmailView.layer.cornerRadius).cgPath
        slPEmailView.fillColor = UIColor.white.cgColor
        slPEmailView.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
        slPEmailView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slPEmailView.shadowOpacity = 0.8
        slPEmailView.shadowRadius = 2.8
        pEmailView.layer.insertSublayer(slPEmailView, at: 0)
        
        let slPPasswordView = CAShapeLayer()
        pPasswordView.layer.cornerRadius = 6
        slPPasswordView.path = UIBezierPath(roundedRect: pPasswordView.bounds,
                                      cornerRadius: pPasswordView.layer.cornerRadius).cgPath
        slPPasswordView.fillColor = UIColor.white.cgColor
        slPPasswordView.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
        slPPasswordView.shadowOffset = CGSize(width: 2.0, height: 2.0)
        slPPasswordView.shadowOpacity = 0.8
        slPPasswordView.shadowRadius = 2.8
        pPasswordView.layer.insertSublayer(slPPasswordView, at: 0)
    }
    
    @IBAction func onClickPlayerLoginBtn(_ sender: Any) {
        
        if let root = UIApplication.topViewController() {
            //do sth with root view controller
            
            if(txtEmailID.text?.isEmpty == true && txtPassword.text?.isEmpty == true) {
                showAlert(title: helper.shared.APP_ALERT_TITLE, message: "Please enter your username and password.", viewController: root)
            }
            else if txtEmailID.text == "" {
                showAlert(title: helper.shared.APP_ALERT_TITLE, message: "Please enter your email address.", viewController: root)
            }
            else if txtPassword.text == "" {
                showAlert(title: helper.shared.APP_ALERT_TITLE, message: "Please enter your password.", viewController: root)
            }
            else if helper.shared.isValidEmail(emailID: txtEmailID.text!) == false {
                showAlert(title: helper.shared.APP_ALERT_TITLE, message: "Please enter valid email address.", viewController: root)
            }
            else {
                txtEmailID.resignFirstResponder()
                txtPassword.resignFirstResponder()
                
                txtEmailID.textRect(forBounds: CGRect(x:0, y: 0, width:10, height:10))
                txtPassword.textRect(forBounds: CGRect(x:0, y: 0, width:10, height:10))
                                
                let emailID : String = txtEmailID!.text!
                let password : String = txtPassword!.text!
                
                print("\(emailID) \(password)")
            }
        }
        
        UserDefaults.standard.set("Yes", forKey: ISLOGIN)
        
        let vc = UIStoryboard.init(name: "More", bundle: Bundle.main).instantiateViewController(withIdentifier: "MoreView") as! MoreViewController
        UIApplication.topViewController()?.navigationController?.pushViewController(vc, animated: true)
    }
}
