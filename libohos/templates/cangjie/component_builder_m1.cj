@Memo
public func Ark%COMPONENT_NAME%(
    style: ?((attributes: Ark%COMPONENT_NAME%Component) -> Unit),
    content_: ?(() -> Unit)%FUNCTION_PARAMETERS%
): Unit {
    let receiver = remember<Ark%COMPONENT_NAME%Component>({ => 
        %COMPONENT_CLASS_NAME%()
    })
    NodeAttach<%PEER_CLASS_NAME%>(
        { => %PEER_CLASS_NAME%.create(receiver, flags: 0) },
        { => 
            style?(receiver)
            content_?()
            receiver.applyAttributesFinish()
        }
    )
}
