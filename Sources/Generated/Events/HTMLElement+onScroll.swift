import JavaScriptKit

extension HTMLElement {

    public func onScroll(_ completion: @escaping () -> Void) -> any Page {
        _ = self.element.addEventListener(
            "scroll",
            JSClosure { event in
                completion()

                return .undefined
            }
        )

        return self
    }

}