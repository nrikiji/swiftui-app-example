import SwiftUI

class TweetController : ObservableObject {
    @Published var followingIds: [Int] = []
    
    func changeFollowing(_ id: Int) {
        if isFollowing(id) {
            removeFollowing(id)
        } else {
            appendFollowing(id)
        }
    }
    
    func appendFollowing(_ id: Int) {
        if !followingIds.contains(id) {
            followingIds.append(id)
        }
    }
    
    func removeFollowing(_ id: Int) {
        if let i = followingIds.firstIndex(of: id) {
            followingIds.remove(at: i)
        }
    }
    
    func updateFollowing(_ ids: [Int]) {
        self.followingIds = ids
    }
    
    func isFollowing(_ id: Int) -> Bool {
        return followingIds.contains(id)
    }
}
