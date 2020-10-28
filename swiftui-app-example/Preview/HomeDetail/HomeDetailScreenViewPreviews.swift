import SwiftUI

struct HomeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let tweet = Tweet(id: 1, name: "user1", image: "user1", comment: "コメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメントコメント", following: false, created: "2020-01-01 00:00:00")
        
        NavigationView {
            HomeDetailView(tweet: .constant(tweet))
                .environmentObject(TweetController())
        }
    }
}
