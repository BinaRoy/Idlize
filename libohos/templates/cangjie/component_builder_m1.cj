class %COMPONENT_ATTRIBUTE_NAME%StyleHolder {
    var value: ?((attributes: %COMPONENT_ATTRIBUTE_NAME%Interfaces) -> Unit)
    init (value: ?((attributes: %COMPONENT_ATTRIBUTE_NAME%Interfaces) -> Unit)) {
        this.value = value
    }
}

class %COMPONENT_ATTRIBUTE_NAME%ContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo
public func Ark%COMPONENT_NAME%(
    style: ?((attributes: Ark%COMPONENT_NAME%Component) -> Unit),
    content_: ?(() -> Unit)%FUNCTION_PARAMETERS%
): Unit {
    let receiver = remember<Ark%COMPONENT_NAME%Component>({ => 
        %COMPONENT_CLASS_NAME%()
    })
    NodeAttach<%PEER_CLASS_NAME%>(
        { => %PEER_CLASS_NAME%.create(receiver, 0) },
        { => 
            style?(receiver)
            content_?()
            receiver.applyAttributesFinish()
        },
        Option.None
    )
}
