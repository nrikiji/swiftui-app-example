import SwiftUI

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let tweets = [
            Tweet(id: 1, name: "user1", image: "user1", comment: "コメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメント", following: true, created: "2020-01-01 00:00:00"),
            Tweet(id: 2, name: "user2", image: "user2", comment: "コメントコメントコメントコメントコメントコメントコメントコメントコメントコメント", following: false, created: "2020-01-01 00:00:00"),
            Tweet(id: 3, name: "user3", image: "user3", comment: "コメントコメントコメントコメントコメントコメントコメントコメントコメントコメント", following: false, created: "2020-01-01 00:00:00"),
            Tweet(id: 4, name: "user4", image: "user4", comment: "コメントコメントコメントコメントコメントコメントコメントコメントコメントコメント", following: false, created: "2020-01-01 00:00:00"),
            Tweet(id: 5, name: "user5", image: "user5", comment: "コメントコメントコメントコメントコメントコメントコメントコメントコメントコメント", following: false, created: "2020-01-01 00:00:00"),
        ]
        
        let controller = HomeController(tweets: tweets, tweetController: TweetController())
        
        HomeView(controller: controller)
            .environmentObject(TweetController())
    }
}
