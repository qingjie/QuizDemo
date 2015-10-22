//
//  ViewController.swift
//  QuizDemo
//
//  Created by qingjiezhao on 9/25/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

struct Question {
    var Question : String!
    var Answers :[String]!
    var Answer : Int!
}


class ViewController: UIViewController {

    @IBOutlet weak var QLabel: UILabel!
    
    @IBOutlet var Buttons: [UIButton]!
    
    var Questions = [Question]()
    
    var QNumber = Int()
    
    var AnswerNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Questions = [Question(Question: "Q0", Answers: ["A0","B0","C0","D0"], Answer: 0),
        Question(Question: "Q1?", Answers: ["A1","B1","C1","D1"], Answer: 1),
        Question(Question: "Q2?", Answers: ["A2","B2","C2","D2"], Answer: 2),
        Question(Question: "Q3?", Answers: ["A3","B3","C3","D3"], Answer: 3)]
        pickQuesion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func pickQuesion(){
        if Questions.count > 0 {
            QNumber = random() % Questions.count
            QLabel.text = Questions[QNumber].Question
            
            AnswerNumber = Questions[QNumber].Answer
            
            for i in 0..<Buttons.count {
                Buttons[i].setTitle(Questions[QNumber].Answers[i], forState: UIControlState.Normal)
            }
            
            Questions.removeAtIndex(QNumber)
            
        }else{
            print("Done!")
        }
    }
    
    
    @IBAction func btn1Tapped(sender: AnyObject) {
        if AnswerNumber == 0 {
            pickQuesion()
        }else{
            print("Wrong!")
        }
        
    }
    
    @IBAction func btn2Tapped(sender: AnyObject) {
        if AnswerNumber == 1 {
            pickQuesion()
        }else{
            print("Wrong!")
        }

    }
    
    @IBAction func btn3Tapped(sender: AnyObject) {
        if AnswerNumber == 2 {
            pickQuesion()
        }else{
            print("Wrong!")
        }

    }
    
    @IBAction func btn4Tapped(sender: AnyObject) {
        if AnswerNumber == 3 {
            pickQuesion()
        }else{
            print("Wrong!")
        }

    }
    
    
}

