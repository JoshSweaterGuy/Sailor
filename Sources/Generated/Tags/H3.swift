// This file was autogenerated by Mustache. DO NOT CHANGE.
//
//  H3.swift
//
//
//  Created by Joshua Davis.
//

import Foundation
import JavaScriptKit

public struct H3: HTMLElement {

    public var body: some Page {
        return self
    }
    
    public var attributes: Attributes

    var children: [any Page]
    var content: String
    var tagName: String {
        "h3"
    }
    
    var element: JSValue

    private init(children: [any Page], content: String) {
        self.element = App.document.createElement("h3")
        self.children = children
        self.content = content
        self.attributes = .init()
    }

    public init() {
        self.init(children: [], content: "")
    }
    
    public init(@PageBuilder _ content: () -> List) {
        self.init(children: content().children, content: "")
    }
    
    public init(_ content: String) {
        self.init(children: [], content: content)
    }
    
}