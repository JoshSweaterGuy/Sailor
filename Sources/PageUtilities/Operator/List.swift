//
//  List.swift
//  
//
//  Created by Joshua Davis on 10/12/23.
//

import JavaScriptKit
import Foundation

public struct Container: Operator {
    
    public var id: UUID = UUID()

    public var children: [any Page]

    public var body: some Page {
        InternalError.recursingInPageBody(name: "container")
        return self
    }
    
    public init() {
        self.init([])
    }

    public init(_ children: [any Page]) {
        self.children = children

    }

}