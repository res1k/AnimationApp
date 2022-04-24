//
//  Animation.swift
//  AnimationApp
//
//  Created by Andrey Zhivotov on 24.04.2022.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.3...1),
            duration: Double.random(in: 1...2),
            delay: Double.random(in: 0.5...1)
        )
    }
    
}
