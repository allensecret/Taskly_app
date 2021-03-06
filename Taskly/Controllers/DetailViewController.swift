//
//  DetailViewController.swift
//  Taskly
//
//  Created by 張駿彥 on 2019/5/16.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var TaskLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    
    var getTask:String?
    var getDate:String?
    var getSection:Int?
    var getRow:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let getTask = getTask,let getDate = getDate{
            TaskLabel.text = getTask
            DateLabel.text = getDate
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toModifySegue"{
            let Dvc:CreateTaskController = segue.destination as! CreateTaskController
            Dvc.getTask = TaskLabel.text!
            Dvc.getDate = DateLabel.text!
            Dvc.getSection = getSection
            Dvc.getRow = getRow
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
