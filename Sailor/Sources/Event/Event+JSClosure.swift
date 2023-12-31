//
//  File.swift
//  
//
//  Created by Joshua Davis on 12/17/23.
//

import JavaScriptKit
import Sailboat

extension Event {
    
    // TODO: return the values needed by which events as EventResults, nil if error?
    func getResultValue(_ eventJSValue: JSValue) -> EventResult {
        
        //TODO: make event map
        
//        print("GETTING RESULT VALUE", self.name, eventJSValue.target.value.string)
        if self.name == "input",
           let inputValue = eventJSValue.target.value.string {
            return EventResult.string(inputValue)
        }

        return EventResult.none
    }
    
    func getClosure() -> JSClosure {
        JSClosure { event in

            guard let firstEvent = event.first else {
                // TODO error better
                print("EVENT UPDATE FAILED")
                return .undefined
            }
            
            let resultValue = self.getResultValue(firstEvent)
            
            self.action(resultValue)

            return .undefined
        }
    }
    
    
}
