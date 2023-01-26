import Cocoa

class AppWindow: NSWindow {
    override func keyDown(with event: NSEvent) {
        super.keyDown(with: event)
        if (event.isARepeat) {
            return
        }
        if (event.characters != nil) {
            print("keyDown: " + event.characters!)
        } else {
            print(String(format: "keyDown: %d", event.keyCode))
        }
    }

    override func keyUp(with event: NSEvent) {
        super.keyUp(with: event)
        if (event.characters != nil) {
            print("keyUp: " + event.characters!)
        } else {
            print(String(format: "keyUp: %d", event.keyCode))
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: AppWindow!
    
    func buildWnd() {
        let _wndW: CGFloat = 400
        let _wndH: CGFloat = 300

        window = AppWindow(
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
    print("RunNSApp")
    let appDelegate = AppDelegate()
    let app = NSApplication.shared
    app.delegate = appDelegate
    app.setActivationPolicy(.regular)
    app.activate(ignoringOtherApps: true)
    app.run()
}