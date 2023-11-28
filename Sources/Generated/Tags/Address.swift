// This file was autogenerated by Mustache. DO NOT CHANGE.
//
//  Address.swift
//
//
//  Created by Joshua Davis.
//

import Foundation
import JavaScriptKit

public struct Address: HTMLElement {

    public var body: some Page {
        return self
    }
    
    public var attributes: Attributes

    var children: [any Page]
    var content: String
    var tagName: String {
        "address"
    }
    
    var element: JSValue

    private init(children: [any Page], content: String) {
        self.element = App.document.createElement("address")
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