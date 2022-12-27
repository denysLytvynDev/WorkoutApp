//
//  BaseView.swift
//  WorkoutApp
//
//  Created by Денис Литвин on 21.12.2022.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutView()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    func addViews() {}
    func layoutView() {}
    func configure() {}
    
}
