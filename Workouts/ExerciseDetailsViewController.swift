//
//  ExerciseDetailsViewController.swift
//  Workouts
//
//  Created by David Lawrence on 9/27/18.
//  Copyright © 2018 clarity for action. All rights reserved.
//

import UIKit

class ExerciseDetailsViewController: UIViewController {
    
    var exerciseName: String = "Exercise Not Selected"
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var typeTextField: UITextField!
    @IBOutlet var referenceTextField: UITextField!
    @IBOutlet var descriptionField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = exerciseName
    }
    
    
}
