import SwiftUI

struct HomeView: View {
    @ObservedObject var controller: HomeController
    
    var body: some View {
        NavigationView {
            List {
                ForEach(controller.tweets, id: \.id) { tweet in
                    NavigationLink(
                        destination: HomeDetailView(tweet: .constant(tweet)),
                        label: {
                            HomeRowView(tweet: .constant(tweet))
                        })
                }
            }
            .navigationBarTitle("List", displayMode: .inline)
        }
    }
}
