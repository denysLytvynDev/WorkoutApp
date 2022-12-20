//
//  UIView + extenscsn.swift
//  WorkoutApp
//
//  Created by Денис Литвин on 19.12.2022.
//

import UIKit

extension UIView {
    func addBottomBorder(with color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        
        addSubview(separator)
    }
    
    func makeSystem(_ button: UIButton) {
        button.addTarget(self, action: #selector(handelOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
        
        button.addTarget(self, action: #selector(handelIn), for: [
            .touchDown,
            .touchDragInside
        ])
    }
    
    @objc func handelIn() {
        UIView.animate(withDuration: 0.15) { self.alpha = 0.55}
    }
    
    @objc func handelOut() {
        UIView.animate(withDuration: 0.15) { self.alpha = 1}
    }
}
