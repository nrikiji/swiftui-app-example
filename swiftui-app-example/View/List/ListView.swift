import SwiftUI

struct ListView: View {
    @ObservedObject var controller: ListController
    
    var body: some View {
        NavigationView {
            List {
                ForEach(controller.tweets, id: \.id) { tweet in
                    NavigationLink(
                        destination: DetailView(tweet: .constant(tweet)),
                        label: {
                            ListRowView(tweet: .constant(tweet))
                        })
                }
            }
            .navigationBarTitle("List", displayMode: .inline)
        }
    }
}
