import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem!
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        debugPrint("hello")
        statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
        statusItem.title = "Notify"
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "Action 1", action: #selector(AppDelegate.action1(sender:)), keyEquivalent: "e"))
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(AppDelegate.action2(sender:)), keyEquivalent: "k"))
        statusItem.menu = menu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func action1(sender: AnyObject) {
        debugPrint("action1")
    }

    @IBAction func action2(sender: AnyObject) {
        debugPrint("Quit")
        NSApplication.shared().terminate(nil)

    }
}

