import SwiftUI

struct HomeRowView: View {
    @EnvironmentObject var tweetController: TweetController
    @Binding var tweet: Tweet
    
    var body: some View {
        HStack(alignment: .top) {
            Image(uiImage: UIImage(named: tweet.image)!)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text(tweet.name)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text(tweet.comment)
                    .lineLimit(3)
                    .font(.caption)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Text(tweet.created)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .frame(alignment: .trailing)
                    
                    Text(tweetController.isFollowing(tweet.id) ? "Follow" : "Unfollow")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .frame(alignment: .trailing)
                }
            }
        }
    }
}
