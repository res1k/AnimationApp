//
//  DataManager.swift
//  AnimationApp
//
//  Created by Andrey Zhivotov on 24.04.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
