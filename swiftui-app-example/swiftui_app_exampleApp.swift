import SwiftUI

@main
struct swiftui_app_exampleApp: App {
    var body: some Scene {
        
        let tweetController = TweetController()
        
        WindowGroup {
            HomeView(controller: HomeController(tweetController: tweetController))
                .environmentObject(tweetController)
        }
    }
}
