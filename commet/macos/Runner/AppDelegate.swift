import Cocoa
import FlutterMacOS

@main
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }

  override func applicationShouldTerminate(_ sender: NSApplication) -> NSApplication.TerminateReply {
    // Route Cmd+Q through the window close path so window_manager's
    // setPreventClose handler can perform cleanup before exiting.
    if let window = sender.mainWindow ?? sender.windows.first {
      window.performClose(nil)
      return .terminateCancel
    }
    return .terminateNow
  }

  override func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
    return true
  }
}
