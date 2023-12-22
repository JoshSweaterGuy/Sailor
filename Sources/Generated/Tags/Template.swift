// This file was autogenerated by Mustache. DO NOT CHANGE.
//
//  Template.swift
//
//
//  Created by Joshua Davis.
//

import Foundation
import JavaScriptKit

public struct Template: HTMLElement {

    public var name: String { "template" }

    public var body: some Page {
        InternalError.recursingInPageBody(name: "template")
        return self
    }
    
    var attributes: Attributes
    var events: Events

    // var children: [any Page]
    var content: TagContent

    public init() {   
        self.init("")       
    }

    public init(@PageBuilder _ content: @escaping () -> any Operator) {
        self.content = .list(content)
        self.attributes = .init()
        self.events = [:]

    }
    
    public init(_ text: String) {
        self.content = .text(text)
        self.attributes = .init()
        self.events = [:]
    }



    //MARK- ATTRIBUTES
    public func style(_ properties: Style.Property...) -> Self {
        return style(Style(properties))
    }

    public func style(_ style: Style) -> Self {
        return attribute(.style, value: style)
    }

    public func attribute(_ type: Attribute, value: some AttributeValue) -> Self {
        if self.attributes[type]?.description == value.description { return self }
        var copy = self
        copy.attributes[type] = value
        return copy
    }
    
}