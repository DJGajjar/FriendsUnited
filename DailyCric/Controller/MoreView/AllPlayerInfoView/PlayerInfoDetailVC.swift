//
//  PlayerInfoDetailVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 05/07/21.
//

import UIKit

class PlayerInfoDetailVC: UIViewController {

    @IBOutlet weak var pImgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        pImgView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
        pImgView.layer.shadowOpacity = 0.8
        pImgView.layer.shadowOffset = .zero
        pImgView.layer.shadowRadius = 2.8
        pImgView.layer.cornerRadius = 60.0
    }
}
