//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Денис Литвин on 20.12.2022.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "WorkoutProgress"
        
        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Details")
    }
}
