// This file was autogenerated by Mustache. DO NOT CHANGE.
//
//  Figure.swift
//
//
//  Created by Joshua Davis.
//

import Foundation
import JavaScriptKit

public struct Figure: HTMLElement {

    public var body: some Page {
        return self
    }
    
    public var attributes: Attributes

    var children: [any Page]
    var content: String
    var tagName: String {
        "figure"
    }
    
    var element: JSValue

    private init(children: [any Page], content: String) {
        self.element = App.document.createElement("figure")
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