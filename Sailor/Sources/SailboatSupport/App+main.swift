//
//  File.swift
//  
//
//  Created by Joshua Davis on 12/30/23.
//

import Sailboat

extension App {
    
    public static func main() {
        SailboatGlobal.initialize(SailorManager())
        SailboatGlobal.shared.build(app: Self())
    }
}
