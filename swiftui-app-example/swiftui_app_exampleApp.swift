import SwiftUI

@main
struct swiftui_app_exampleApp: App {
    var body: some Scene {
        
        let tweetController = TweetController()
        
        WindowGroup {
            ListView(controller: ListController(tweetController: tweetController))
                .environmentObject(tweetController)
        }
    }
}
