// This file was autogenerated by Mustache. DO NOT CHANGE.

extension HTMLElement {

    public func onBlur(_ completion: @escaping () -> Void) -> Self {
        var copy = self

        copy.events["blur"] = Event(name: "blur", action: { _ in
            completion()
        })

        return copy
    }

}