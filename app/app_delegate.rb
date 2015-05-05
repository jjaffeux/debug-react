class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'debug-react'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    js = NSURL.URLWithString("http://localhost:8081/index.ios.bundle?dev=true")
    rootViewController.view = RCTRootView.alloc.initWithBundleURL(js,
                                                                  moduleName: "DebugReact",
                                                                  launchOptions: launchOptions)

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
