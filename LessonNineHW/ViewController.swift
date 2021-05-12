//
//  ViewController.swift
//  LessonNineHW
//
//  Created by admin on 13.05.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animatedView: SpringView!
    
    @IBOutlet var viewLabel: UILabel!
    
    @IBOutlet var animationButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewLabel.text = "No active animations"
        animationButton.setTitle("First animation", for: .normal)
        
    }
    
    @IBAction func animationActivated(_ sender: SpringButton) {
        
        let numberOfAnimation = Int.random(in: 1...4)
        
        switch numberOfAnimation {
        case 1:
            animatedView.animation = "shake"
            animatedView.curve = "easeIn"
            animatedView.duration = 2
            viewLabel.text = "Shake animation active"
        case 2:
            animatedView.animation = "wobble"
            animatedView.curve = "easeIn"
            animatedView.duration = 2
            viewLabel.text = "Wobble animation active"
        case 3:
            animatedView.animation = "swing"
            animatedView.curve = "easeIn"
            animatedView.duration = 2
            viewLabel.text = "Swing animation active"
        case 4:
            animatedView.animation = "squeeze"
            animatedView.curve = "easeIn"
            animatedView.duration = 2
            viewLabel.text = "Squeeze animation active"
        default:
            break
        }
        
        animationButton.animation = "pop"
        animationButton.curve = "easeIn"
        animationButton.duration = 2
        animationButton.setTitle("Next animation", for: .normal)
        
        animatedView.animate()
        animationButton.animate()
    }
    
}

