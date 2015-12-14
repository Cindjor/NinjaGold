//
//  ViewController.swift
//  NinjaGold
//
//  Created by Luke CHEUNG on 11/11/15.
//  Copyright © 2015 Luke Cheung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        farmScoreLabel.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var score = 0
    func goldScore() {
        scoreLabel.text = "Score: \(score)"
    }
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var farmScoreLabel: UIButton!
    @IBOutlet weak var caveScoreLabel: UIButton!
    @IBOutlet weak var houseScoreLabel: UIButton!
    @IBOutlet weak var casinoScoreLabel: UIButton!
        
    
    
    let caveRandom = arc4random_uniform(10) + 5
    let houseRandom = arc4random_uniform(5) + 2

    @IBAction func farmGold(sender: AnyObject) {
        let farm = Int(arc4random_uniform(20) + 15)
        score += farm
        farmScoreLabel.text = "You gained \(farm) Gold"
        farmScoreLabel.hidden = false
        caveScoreLabel.hidden = true
        houseScoreLabel.hidden = true
        casinoScoreLabel.hidden = true
    }
    @IBAction func caveGold(sender: AnyObject) {
        let cave = Int(arc4random_uniform(10) + 5)
        score += cave
        farmScoreLabel.text = "You gained \(cave) Gold"
        farmScoreLabel.hidden = true
        caveScoreLabel.hidden = false
        houseScoreLabel.hidden = true
        casinoScoreLabel.hidden = true
    }
    @IBAction func houseGold(sender: AnyObject) {
        let house = Int(arc4random_uniform(4) + 2)
        score += farm
        farmScoreLabel.text = "You gained \(farm) Gold"
        farmScoreLabel.hidden = false
        caveScoreLabel.hidden = true
        houseScoreLabel.hidden = true
        casinoScoreLabel.hidden = true
    }
    @IBAction func casinoGold(sender: AnyObject) {
        let casino = Int(arc4random_uniform(50))
        let random = Int(arc4random_uniform(2))
        score += farm
        farmScoreLabel.text = "You gained \(farm) Gold"
        farmScoreLabel.hidden = false
        caveScoreLabel.hidden = true
        houseScoreLabel.hidden = true
        casinoScoreLabel.hidden = true
    }
    
    
}

