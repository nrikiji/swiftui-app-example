import SwiftUI

class HomeController : ObservableObject {
    var tweetController: TweetController
    @Published var tweets: [Tweet]
    
    init(tweets: [Tweet] = [], tweetController: TweetController) {
        
        self.tweets = tweets
        self.tweetController = tweetController
        
        TweetRepository.get { (tweets) in
            self.tweets = tweets
            
            let ids = tweets
                .filter { (x) -> Bool in
                    return x.following
                }
                .map { (x) -> Int in
                    x.id
                }
            tweetController.updateFollowing(ids)
        }
    }
}
