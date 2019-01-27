import PlaygroundSupport
import UIKit

PlaygroundController.scale = 0.5

PlaygroundPage.current.liveView = playgroundController(
    for: MyViewController(),
    device: .pad12_9inch,
    orientation: .portrait,
    traits: .init(preferredContentSizeCategory: .medium)
)
