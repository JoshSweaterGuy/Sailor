//
//  HTMLElement.swift
//  
//
//  Created by Joshua Davis on 10/3/23.
//

import Foundation
import JavaScriptKit

protocol HTMLElement: Page, Hashable, Equatable {
    /// HTML tag name, all lowercased
    var name: String { get }
    
    /// text content within HTML tag
    var content: String { get set }
    
    /// attributes on HTML tag
    var attributes: Attributes { get set }
    
    /// event names and values attached to this HTMLElement
    var events: Events { get set }
    
    /// children within HTML tags
    var children: [any Page] { get set }

    // TODO: remove build from this class
    /// build and render the HTML page
//    func build(parentNode: DOMNode)
    
    ///
    func style(_ properties: Style.Property...) -> Self
    
    ///
    func style(_ style: Style) -> Self

    ///
    func attribute(_ type: Attribute, value: some AttributeValue) -> Self
    
}
