//
//  ResultsViewController.swift
//  Combative Guide Quiz
//
//  Created by Girls Who Code on 8/2/18.
//  Copyright © 2018 Girls Who Code. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
   var noCorrect = 0
    var total = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "You got \(noCorrect) out of \(total)"
        var percentRight = (Double(noCorrect) / Double(total))*100
        var title = " "
        var results = " "
     

        if(percentRight < 40) {
            title = "Practice makes perfect.."
            results = "Mmm... Not quite a master yet... But you're getting there. Keep trying. Hint to one question: Swordion's original name begins with an S"
            
        } else if(percentRight < 95) {
            title = "(...)Feedback is the breakfast of champions."
            results = "Good start... but you still need work on mastering your PVP skills. Perhaps you can check out Swordion's Discord for some tips to improve on your techniques. Try again if you are interested. Hint to one question: What games make you bored? "
        } else {
            title = "Nothing... Is too strong for you. "
            results = "You seem to be strong in the ways you fight, as well as intelligent in terms of memorizing techniques. As your mentor, I wish you luck in becoming the most skilled player of the videogame you fight in. Since you passed, take a screenshot of this page and send it to Swordion#0141 on Discord, for you now can rank up! Tell others about this quiz if you can! :D"
        }
        // Do any additional setup after loading the view.
        titleLabel.text = title
        resultsLabel.text = results
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
