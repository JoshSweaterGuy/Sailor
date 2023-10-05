// This file was autogenerated by Mustache. Do not change.
//
//  Meta.swift
//
//
//  Created by Joshua Davis.
//

import Foundation
import SwiftSoup

public struct Meta: HTMLElement {
    var element = Element(Tag("meta"), "")

    public var body: some Page {
        return self
    }
    
    public var style: Style

    var children: [any Page]
    var content: String
    
    public init(style: Style = .none()) {
        self.children = []
        self.style = style
        self.content = ""
    }
    

    private init(children: [any Page], content: String, style: Style) {
        self.children = children
        self.style = style
        self.content = content

    }
    
}