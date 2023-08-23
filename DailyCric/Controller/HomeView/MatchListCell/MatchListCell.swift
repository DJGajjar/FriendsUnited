//
//  MatchListCell.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 24/06/21.
//

import UIKit

protocol MatchListCellDelegate {
    func onClickMatchInfo(index: NSInteger)
}

class MatchListCell: UITableViewCell {

    @IBOutlet weak var line_1View: UIView!
    @IBOutlet weak var line_2View: UIView!
    @IBOutlet weak var backView: UIView!
    
    @IBDesignable class ThreeColorsGradientView: UIView {
        @IBInspectable var firstColor: UIColor = UIColor.red
        @IBInspectable var secondColor: UIColor = UIColor.green
        @IBInspectable var thirdColor: UIColor = UIColor.blue

        @IBInspectable var vertical: Bool = true {
            didSet {
                updateGradientDirection()
            }
        }

        lazy var gradientLayer: CAGradientLayer = {
            let layer = CAGradientLayer()
            layer.colors = [firstColor.cgColor, secondColor.cgColor, thirdColor.cgColor]
            layer.startPoint = CGPoint.zero
            return layer
        }()

        //MARK: -

        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)

            applyGradient()
        }

        override init(frame: CGRect) {
            super.init(frame: frame)

            applyGradient()
        }

        override func prepareForInterfaceBuilder() {
            super.prepareForInterfaceBuilder()
            applyGradient()
        }

        override func layoutSubviews() {
            super.layoutSubviews()
            updateGradientFrame()
        }

        //MARK: -

        func applyGradient() {
            updateGradientDirection()
            layer.sublayers = [gradientLayer]
        }

        func updateGradientFrame() {
            gradientLayer.frame = bounds
        }

        func updateGradientDirection() {
            gradientLayer.endPoint = vertical ? CGPoint(x: 0, y: 1) : CGPoint(x: 1, y: 0)
        }
    }

    @IBOutlet weak var lblMatchInfo: UILabel!
    @IBOutlet weak var lblTeam_1: UILabel!
    @IBOutlet weak var lblTeam_2: UILabel!
    @IBOutlet weak var lblTeam_1Score: UILabel!
    @IBOutlet weak var lblTeam_2Score: UILabel!
    @IBOutlet weak var lblWon: UILabel!
    
    var attributedString: NSMutableAttributedString!
    
    var delegate : MatchListCellDelegate?
    var intIndex: Int!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        line_1View.layer.shadowColor = #colorLiteral(red: 0.0431372549, green: 0.007843137255, blue: 0.1843137255, alpha: 1)
        line_1View.layer.shadowOpacity = 0.8
        line_1View.layer.shadowOffset = .zero
        line_1View.layer.shadowRadius = 2.8
        
        line_2View.layer.shadowColor = #colorLiteral(red: 0.0431372549, green: 0.007843137255, blue: 0.1843137255, alpha: 1)
        line_2View.layer.shadowOpacity = 0.8
        line_2View.layer.shadowOffset = .zero
        line_2View.layer.shadowRadius = 2.8
                
        backView.layer.borderWidth = 0.5
        backView.layer.borderColor = #colorLiteral(red: 0.337254902, green: 0.6117647059, blue: 0.8470588235, alpha: 1)
            
        let strOverCount = String(format: "(16.0 ov)")
        let atbStringOne = [NSAttributedString.Key.font : UIFont(name: "OpenSans-Regular", size: 14), NSAttributedString.Key.foregroundColor : UIColor.black]
        let atbStringTwo = [NSAttributedString.Key.font : UIFont(name: "OpenSans-SemiBold", size: 10), NSAttributedString.Key.foregroundColor : UIColor.TabBarBGColor]
        let attributedStringOne = NSMutableAttributedString(string: "120/2 ", attributes:atbStringOne as [NSAttributedString.Key : Any])
        let attributedStringTwo = NSMutableAttributedString(string: strOverCount, attributes:atbStringTwo as [NSAttributedString.Key : Any])

        attributedStringOne.append(attributedStringTwo)
        
        lblTeam_1Score.attributedText = attributedStringOne
        
        let strOverCount1 = String(format: "(16.0 ov)")
        let atbStringOne_1 = [NSAttributedString.Key.font : UIFont(name: "OpenSans-Regular", size: 14), NSAttributedString.Key.foregroundColor : UIColor.black]
        let atbStringTwo_1 = [NSAttributedString.Key.font : UIFont(name: "OpenSans-SemiBold", size: 10), NSAttributedString.Key.foregroundColor : UIColor.TabBarBGColor]
        let attributedStringOne_1 = NSMutableAttributedString(string: "99/8 ", attributes:atbStringOne_1 as [NSAttributedString.Key : Any])
        let attributedStringTwo_1 = NSMutableAttributedString(string: strOverCount1, attributes:atbStringTwo_1 as [NSAttributedString.Key : Any])

        attributedStringOne_1.append(attributedStringTwo_1)
        
        lblTeam_2Score.attributedText = attributedStringOne_1

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onClickMatchInfoBtn(_ sender: Any) {
        delegate?.onClickMatchInfo(index: intIndex)
    }
    
}
