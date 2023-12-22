// This file was autogenerated by Mustache. DO NOT CHANGE.

import JavaScriptKit

extension Page {

    public func onTouchEnd(_ completion: @escaping (JSObject) -> Void) -> any Page {
        guard var copy = self as? any HTMLElement else {
            return Div { self }.onTouchEnd { value in
                completion(value)
            }
        }
        copy.events["touchend"] = Event(
            name: "touchend", 
            action: { eventResult in
                if case let EventResult.object(value) = eventResult {
                    completion(value)
                }
            }
        )

        return copy
    }

}