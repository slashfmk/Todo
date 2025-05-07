
/*
 * We are waiting
 */


import Foundation

struct Human: Identifiable, Equatable {
    
    var id: UUID
    var name: String
    var age: Int
    let PIX: Double  = 3.2
}

extension Human {
    
    /// Compare the 2 elements as Equatable
    /// - Parameters:
    ///   - h1: first instance
    ///   - h2: Second Instance
    /// - Returns: Bool
    public static func == (h1: Human, h2: Human) -> Bool {
        return h1.age == h2.age
    }
    
    
    /// Nothing special
    /// - Returns: String
    private func wonders() -> String {
        let iSCool: Bool  = age > 18
        self.incredible()
        return "My name is \(name) and age is \(age) \(iSCool)"
    }
    
    func incredible() -> Void {
        print("We are the world \(name)")
    }
}
