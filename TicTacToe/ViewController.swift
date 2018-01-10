//
//  ViewController.swift
//  TicTacToe
//
//  Created by Edward de la Fuente on 11/1/17.
//  Copyright © 2017 Edward de la Fuente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLeft: UIButton!
    @IBOutlet weak var topCenter: UIButton!
    @IBOutlet weak var topRight: UIButton!
    @IBOutlet weak var middleLeft: UIButton!
    @IBOutlet weak var middleCenter: UIButton!
    @IBOutlet weak var middleRight: UIButton!
    @IBOutlet weak var bottomLeft: UIButton!
    @IBOutlet weak var bottomCenter: UIButton!
    @IBOutlet weak var bottomRight: UIButton!
    @IBOutlet weak var declareWinner: UILabel!
    @IBOutlet weak var reset: UIButton!
    
    var count = 0
    var colors = ["A", "B", "C", "D", "E", "F", "G", "H", "I"]
    
    @IBAction func topLeftPressed(_ sender: Any) {
        count = count + 1
        if(count % 2 == 1){
            topLeft.backgroundColor = UIColor.red
            colors[0] = "Red"
            checkGame(color: "Red")
        }
        if(count % 2 == 0){
            topLeft.backgroundColor = UIColor.blue
            colors[0] = "Blue"
            checkGame(color: "Blue")
        }
        (sender as? UIButton)?.isEnabled = false
    }
    
    @IBAction func topCenterPressed(_ sender: Any) {
        count = count + 1
        if(count % 2 == 1){
            topCenter.backgroundColor = UIColor.red
            colors[1] = "Red"
            checkGame(color: "Red")
        }
        if(count % 2 == 0){
            topCenter.backgroundColor = UIColor.blue
            colors[1] = "Blue"
            checkGame(color: "Blue")
        }
        (sender as? UIButton)?.isEnabled = false
    }
    
    @IBAction func topRightPressed(_ sender: Any) {
        count = count + 1
        if(count % 2 == 1){
            topRight.backgroundColor = UIColor.red
            colors[2] = "Red"
            checkGame(color: "Red")
        }
        if(count % 2 == 0){
            topRight.backgroundColor = UIColor.blue
            colors[2] = "Blue"
            checkGame(color: "Blue")
        }
        (sender as? UIButton)?.isEnabled = false
    }
    
    @IBAction func middleLeftPressed(_ sender: Any) {
        count = count + 1
        if(count % 2 == 1){
            middleLeft.backgroundColor = UIColor.red
            colors[3] = "Red"
            checkGame(color: "Red")
        }
        if(count % 2 == 0){
            middleLeft.backgroundColor = UIColor.blue
            colors[3] = "Blue"
            checkGame(color: "Blue")
        }
        (sender as? UIButton)?.isEnabled = false
    }
    
    @IBAction func middleCenterPressed(_ sender: Any) {
        count = count + 1
        if(count % 2 == 1){
            middleCenter.backgroundColor = UIColor.red
            colors[4] = "Red"
            checkGame(color: "Red")
        }
        if(count % 2 == 0){
            middleCenter.backgroundColor = UIColor.blue
            colors[4] = "Blue"
            checkGame(color: "Blue")
        }
        (sender as? UIButton)?.isEnabled = false
    }
    
    @IBAction func middleRightPressed(_ sender: Any) {
        count = count + 1
        if(count % 2 == 1){
            middleRight.backgroundColor = UIColor.red
            colors[5] = "Red"
            checkGame(color: "Red")
        }
        if(count % 2 == 0){
            middleRight.backgroundColor = UIColor.blue
            colors[5] = "Blue"
            checkGame(color: "Blue")
        }
        (sender as? UIButton)?.isEnabled = false
    }
    
    @IBAction func bottomLeftPressed(_ sender: Any) {
        count = count + 1
        if(count % 2 == 1){
            bottomLeft.backgroundColor = UIColor.red
            colors[6] = "Red"
            checkGame(color: "Red")
        }
        if(count % 2 == 0){
            bottomLeft.backgroundColor = UIColor.blue
            colors[6] = "Blue"
            checkGame(color: "Blue")
        }
        (sender as? UIButton)?.isEnabled = false
    }
    
    @IBAction func bottomCenterPressed(_ sender: Any) {
        count = count + 1
        if(count % 2 == 1){
            bottomCenter.backgroundColor = UIColor.red
            colors[7] = "Red"
            checkGame(color: "Red")
        }
        if(count % 2 == 0){
            bottomCenter.backgroundColor = UIColor.blue
            colors[7] = "Blue"
            checkGame(color: "Blue")
        }
        (sender as? UIButton)?.isEnabled = false
    }
    
    @IBAction func bottomRightPressed(_ sender: Any) {
        count = count + 1
        if(count % 2 == 1){
            bottomRight.backgroundColor = UIColor.red
            colors[8] = "Red"
            checkGame(color: "Red")
        }
        if(count % 2 == 0){
            bottomRight.backgroundColor = UIColor.blue
            colors[8] = "Blue"
            checkGame(color: "Blue")
        }
        (sender as? UIButton)?.isEnabled = false
    }
    
    func checkGame(color: String) {
        if(colors[0] == colors[1] && colors[0] == colors[2]) {
            declareWinner.text = "Congrats! \(color) wins!"
        }
        else if(colors[3] == colors[4] && colors[3] == colors[5]) {
            declareWinner.text = "Congrats! \(color) wins!"
        }
        else if(colors[6] == colors[7] && colors[6] == colors[8]) {
            declareWinner.text = "Congrats! \(color) wins!"
        }
        else if(colors[0] == colors[3] && colors[3] == colors[6]) {
            declareWinner.text = "Congrats! \(color) wins!"
        }
        else if(colors[1] == colors[4] && colors[4] == colors[7]) {
            declareWinner.text = "Congrats! \(color) wins!"
        }
        else if(colors[2] == colors[5] && colors[5] == colors[8]) {
            declareWinner.text = "Congrats! \(color) wins!"
        }
        else if(colors[0] == colors[4] && colors[0] == colors[8]) {
            declareWinner.text = "Congrats! \(color) wins!"
        }
        else if(colors[2] == colors[4] && colors[2] == colors[6]) {
            declareWinner.text = "Congrats! \(color) wins!"
        }
        else{
            declareWinner.text = ""
        }
    
    }
   
    @IBAction func reset(_ sender: UIButton) {
        count = 0
        colors = ["A", "B", "C", "D", "E", "F", "G", "H", "I"]
        topLeft.backgroundColor = UIColor.lightGray
        topCenter.backgroundColor = UIColor.lightGray
        topRight.backgroundColor = UIColor.lightGray
        middleLeft.backgroundColor = UIColor.lightGray
        middleCenter.backgroundColor = UIColor.lightGray
        middleRight.backgroundColor = UIColor.lightGray
        bottomLeft.backgroundColor = UIColor.lightGray
        bottomCenter.backgroundColor = UIColor.lightGray
        bottomRight.backgroundColor = UIColor.lightGray
        declareWinner.text = ""
        (sender as? UIButton)?.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

