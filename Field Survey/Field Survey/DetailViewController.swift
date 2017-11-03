//
//  DetailViewController.swift
//  Field Survey
//
//  Created by Nathan Schlechte on 11/2/17.
//  Copyright © 2017 Nathan Schlechte. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var observation: Observations?
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        dateFormatter.dateFormat = "LLL dd, YYYY, hh:mm:ss a"
        
        self.title = "Observation"
        
        imageLabel.image = observation?.classification.image
        titleLabel.text = observation?.title
        descriptionLabel.text = observation?.description
        
        if let date = observation?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
