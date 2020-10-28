import SwiftUI

struct DetailView: View {
    @EnvironmentObject var tweetController: TweetController
    @Binding var tweet: Tweet
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack(spacing: 10) {
                    Image(uiImage: UIImage(named: tweet.image)!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160, height: 160)
                        .padding(.top)
                    
                    Text(tweet.name)
                        .font(.headline)
                    Text(tweet.comment)
                        .font(.caption)
                    HStack {
                        Spacer()
                        Text(tweetController.isFollowing(tweet.id) ? "Now Follow" : "Now Unfollow")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .frame(alignment: .trailing)
                    }
                    Spacer(minLength: 70)
                }
                .padding()
                .navigationBarTitle("Detail", displayMode: .inline)
            }
            
            VStack {
                Spacer()
                HStack {
                    Button(action: {
                        tweet.following.toggle()
                        tweetController.changeFollowing(tweet.id)
                    }) {
                        Text(tweetController.isFollowing(tweet.id) ? "Unfollow" : "Follow")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 70)
                    .background(Color.blue)
                }
            }
        }
    }
}
