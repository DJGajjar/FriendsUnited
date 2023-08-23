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
        
        pImgView.layer.shadowColor = #colorLiteral(red: 0.1098039216, green: 0.1215686275, blue: 0.2392156863, alpha: 1)
        pImgView.layer.shadowOpacity = 0.8
        pImgView.layer.shadowOffset = .zero
        pImgView.layer.shadowRadius = 2.8
        pImgView.layer.cornerRadius = 60.0
    }
}
