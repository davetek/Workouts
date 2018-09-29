//
//  ExercisesViewController.swift
//  Workouts
//
//  Created by David Lawrence on 9/24/18.
//  Copyright © 2018 clarity for action. All rights reserved.
//

import UIKit

class ExercisesViewController: UIViewController, UITableViewDataSource {
    
    
    var exercises: Exercises!
    
    @IBOutlet var tableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.exerciseList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create instance of UITableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExercisesPrototypeCell", for: indexPath)
        
        //Set text on cell
        let exerciseItem = exercises.exerciseList[indexPath.row]
        
        cell.textLabel?.text = exerciseItem
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // if triggered segue is the 'showExerciseDetails' segue
        switch segue.identifier {
        case "showExerciseDetails"?:
            //Figure out which row was just tapped
            if let row = tableView.indexPathForSelectedRow?.row {
                // get item associated with this row
                let exercise = exercises.exerciseList[row]
                let exerciseDetailsViewController = segue.destination as! ExerciseDetailsViewController
                exerciseDetailsViewController.exerciseName = exercise
            }
        default:
            preconditionFailure("Unexpected segue identifier")
        }
    }
}
