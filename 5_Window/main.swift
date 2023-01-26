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

        // Quit btn
        let quitBtn = NSButton (frame:NSMakeRect( _wndW - 50, 10, 40, 40 ))
        quitBtn.bezelStyle = .circular
        quitBtn.autoresizingMask = [.minXMargin, .maxYMargin]
        quitBtn.title = "Quit"
        quitBtn.action = #selector(NSApplication.terminate)
        window.contentView!.addSubview(quitBtn)
    }
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        buildWnd()
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}
let appDelegate = AppDelegate()

// **** main.swift **** //
let app = NSApplication.shared
app.delegate = appDelegate
app.setActivationPolicy(.regular)
app.activate(ignoringOtherApps: true)
app.run()