// This file was autogenerated by Mustache. DO NOT CHANGE.

import JavaScriptKit

extension HTMLElement {

    public func onDrop(_ completion: @escaping (JSObject) -> Void) -> any Page {
        _ = self.element.addEventListener(
            "drop",
            JSClosure { event in
                guard let dataTransfer = event.first?.dataTransfer.object else {
                    return .undefined
                }
                completion(dataTransfer)

                return .undefined
            }
        )

        return self
    }

}