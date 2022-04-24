//
//  ViewController.swift
//  AnimationApp
//
//  Created by Andrey Zhivotov on 24.04.2022.
//

import Spring

class MainViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    private var animationType = Animation.getAnimation()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animationType.description
    }

    @IBAction func runButtonPressed(_ sender: UIButton) {
        
        animationLabel.text = animationType.description
        
        springAnimationView.animation = animationType.name
        springAnimationView.curve = animationType.curve
        springAnimationView.force = animationType.force
        springAnimationView.duration = animationType.duration
        springAnimationView.delay = animationType.delay
        springAnimationView.animate()
        
        animationType = Animation.getAnimation()
        sender.setTitle("Run \(animationType.name)", for: .normal)
    }
    
    
}

