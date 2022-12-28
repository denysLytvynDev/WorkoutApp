//
//  WeekView.swift
//  WorkoutApp
//
//  Created by Денис Литвин on 28.12.2022.
//

import UIKit

final class WeekView: BaseView {
    
    private let calendar = Calendar.current
    private let stackView = UIStackView()
}

extension WeekView {
    override func addViews() {
        super.addViews()
        
        addView(stackView)
    }
    
    override func layoutView() {
        super.layoutView()
        
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureView() {
        super.configureView()
        
        var weekdays = calendar.shortStandaloneWeekdaySymbols
        
        if calendar.firstWeekday == 1 {
            let sun = weekdays.remove(at: 0)
            weekdays.append(sun)
        }
        
        weekdays.enumerated().forEach { index, name in
            let view = WeekdayView()
            view.configure(with: index, and: name)
            stackView.addArrangedSubview(view)
        }
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        
        
    }

}