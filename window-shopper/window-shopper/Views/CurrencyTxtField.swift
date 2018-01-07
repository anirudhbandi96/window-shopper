//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Anirudh Bandi on 1/7/18.
//  Copyright © 2018 Anirudh Bandi. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: frame.size.height/2 - size/2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.8949488997, green: 0.8150049448, blue: 0.8011003733, alpha: 0.8)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        
        
        addSubview(currencyLabel)
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
    }
    
    func customizeView() {
        
    
    backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2526220034)
    layer.cornerRadius = 5.0
    textAlignment = .center
    clipsToBounds = true
    
    if let p = placeholder{
        
        let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
    }

}
