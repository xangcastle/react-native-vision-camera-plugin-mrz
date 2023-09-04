import VisionCamera

@objc(MrzFrameProcessorPlugin)
public class MrzFrameProcessorPlugin: FrameProcessorPlugin {
  @objc public init(withOptions options: [AnyHashable : Any]) {
    super.init()
  }

  @objc override public func callback(_ frame: Frame, withArguments arguments: [AnyHashable : Any]?) -> Any {
    let buffer = frame.buffer
    let orientation = frame.orientation
    // code goes here
    return nil
  }
}