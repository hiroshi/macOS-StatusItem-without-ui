import Cocoa

let delegate = AppDelegate() //alloc main app's delegate class
NSApplication.shared().delegate = delegate //set as app's delegate

let ret = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
