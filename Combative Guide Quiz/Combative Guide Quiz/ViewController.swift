//
//  ViewController.swift
//  Combative Guide Quiz
//
//  Created by Girls Who Code on 8/2/18.
//  Copyright © 2018 Girls Who Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answer0: UIButton!

    @IBOutlet weak var answer1: UIButton!

    @IBOutlet weak var answer2: UIButton!

    @IBOutlet weak var answer3: UIButton!

    @IBOutlet weak var progressLabel: UILabel!
    
    @IBAction func submitAnswer0(_ sender: Any) {
  
        checkAnswer(idx:0)
}
    
    @IBAction func submitAnswer1(_ sender: Any) {
        checkAnswer(idx:1)

    }
    @IBAction func submitAnswer2(_ sender: Any) {
        checkAnswer(idx:2)

    }
    
    
    @IBAction func submitAnswer3(_ sender: Any) {
        checkAnswer(idx:3)

    }
 
    
    struct Question{
        let question: String
        let answers: [String]
        let correctAnswer: Int
    }
    var questions: [Question] = [
    Question(question: "What should you NOT do when doing the False Lure technique? ",
        answers: ["Go in the corner", "Go in the air", "Jump around", "Run into a dark area"],
        correctAnswer: 0),
    Question(question: "Which of these is the most powerful technique? ",
        answers: ["The Crescendo", "Revival Switch", "Shadow Mimic", "The Vertigo"],
        correctAnswer: 2),
    Question(question: "Which of these is the most easiest technique? ",
             answers: ["Flail", "Play Dead", "Arrow", "All of the above"],
             correctAnswer: 3),
    Question(question: "Which of these is best to use against the Tidal Wave? ",
             answers: ["Mirror", "Strafe", "Aerial Crescent", "High Charge"],
             correctAnswer: 1),
    Question(question: "What arena is best for the High Charge? ",
             answers: ["The Mountains", "The Ocean", "Hills", "A Meadow"],
             correctAnswer: 0),
    Question(question: "In PvP, you must ",
             answers: ["Rage quit", "Tense up", "Make allies", "Stay calm"],
             correctAnswer: 3),
    Question(question: "How many accounts do you need to perform the Revival Switch? ",
             answers: ["None", "One", "Two", "Three"],
             correctAnswer: 2),
    
    Question(question: "How should you move doing the Encirclement? ",
             answers: ["In a circle shape", "In an oval shape", "In a square shape", "In a triangle shape"],
             correctAnswer: 0),
    Question(question: "The Cower should NOT be used.. ",
             answers: ["In the beginning of the match", "When hiding", "Against a team of opponents", "In an open arena"],
             correctAnswer: 3),
    Question(question: "Which combination is the strongest to use in the air? ",
             answers: ["Vertigo and Crescendo", "Spin Strike Combo", "Mirror Combo", "Crescent Combo"],
             correctAnswer: 0),
    Question(question: "The Assassin's counterpart is... ",
             answers: ["The Revival Switch", "The Cower", "The Flail", "The Tornado"],
             correctAnswer: 1),
    Question(question: "How many spins are in the Spin Strike (Aerial)?",
             answers: ["One", "Two", "Three", "Four"],
             correctAnswer: 0),
    Question(question: "What type of technique is a Stun?  ",
             answers: ["Chat Assassin", "Play Dead", "The Detector", "The Guardian"],
             correctAnswer: 3),
    Question(question: "How do you do the Play Dead Technique? ",
             answers: ["Be silent", "Stand still", "Pretend to be AFK", "Roleplay"],
             correctAnswer: 2),
    Question(question: "What is the most safe way to be able to Rapid Fire Click ",
             answers: ["Download from a website", "Get a computer mouse", "Download from a safe website", "Use a gaming mouse simulator"],
             correctAnswer: 1),
    Question(question: "How do you dodge a Spectral Guillotine? ",
             answers: ["Revival Switch", "Strafe", "Cower", "Vertigo"],
             correctAnswer: 0),
    Question(question: "Can anything counter the Flail Technique? ",
             answers: ["No", "Yes", "Depends", "Unsure"],
             correctAnswer: 2),
    Question(question: "Which of these are not a pair? ",
             answers: ["Crescendo and Vertigo", "Melee and Ranged Mirror", "Tornado and Spin Strike", "Assassin and Chat Assassin"],
             correctAnswer: 2),
    Question(question: "What was Swordion's original name before being altered? ",
             answers: ["Swordactyl", "Iron Blade", "Swordragon", "Swordily"],
             correctAnswer: 0),
    Question(question: "What game should this guide NOT be used for?",
             answers: ["Sword Fighting", "Roleplay", "Board Games", "Games like Slither io"],
             correctAnswer: 2),]
    
    var currentQuestion: Question?
    var currentQuestionPosition: Int = 0
    var noCorrect: Int = 0
    
    func setQuestion() {
        questionLabel.text = currentQuestion!.question
        answer0.setTitle(currentQuestion!.answers[0], for: .normal)
        answer1.setTitle(currentQuestion!.answers[1], for: .normal)
        answer2.setTitle(currentQuestion!.answers[2], for: .normal)
        answer3.setTitle(currentQuestion!.answers[3], for: .normal)
        progressLabel.text = "Question: \(currentQuestionPosition + 1)/ \(questions.count)"
    }
    func loadNextQuestion(){
        if( currentQuestionPosition + 1 < questions.count){
            
            currentQuestionPosition += 1
            currentQuestion = questions[currentQuestionPosition]
            setQuestion()
        }else{
            performSegue(withIdentifier: "sgShowResults", sender: nil)
        }
    }


func checkAnswer(idx: Int){
    if( idx == currentQuestion!.correctAnswer){
        noCorrect += 1
        loadNextQuestion()
    }else{
        loadNextQuestion()
    }
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "sgShowResults") {
            let vc = segue.destination as! ResultsViewController
            vc.noCorrect = noCorrect
            vc.total = questions.count
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion = questions[0]
        setQuestion()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

