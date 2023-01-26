import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!
    
    func buildWnd() {
        let _wndW: CGFloat = 400
        let _wndH: CGFloat = 300

        window = NSWindow(
            contentRect: NSMakeRect(0,0,_wndW,_wndH),
            styleMask: [.titled, .closable, .miniaturizable, .resizable],
            backing: .buffered,
            defer: false)
        window.center()
        window.title = "Swift Test Window"
        window.makeKeyAndOrderFront(window)
    }
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        buildWnd()
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}


@_cdecl("RunNSApp")
public func RunNSApp() {
    let appDelegate = AppDelegate()
    let app = NSApplication.shared
    app.delegate = appDelegate
    app.setActivationPolicy(.regular)
    app.activate(ignoringOtherApps: true)
    app.run()
}