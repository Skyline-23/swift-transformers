#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import Foundation

#if !canImport(Darwin)
extension URLSession {
    var allTasks: [URLSessionTask] {
        get async {
            await withCheckedContinuation { continuation in
                self.getAllTasks { tasks in
                    continuation.resume(returning: tasks)
                }
            }
        }
    }
}
#endif
