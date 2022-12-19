//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Денис Литвин on 20.12.2022.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "High Intensity Cardio"
        
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")

    }
}
