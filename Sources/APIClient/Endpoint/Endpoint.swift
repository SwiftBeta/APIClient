import Foundation

public enum HTTPMethod: String {
    case POST
    case GET
}

public protocol Endpoint {
    var path: String { get set }
    var method: HTTPMethod { get }
    var parameters: [String: AnyObject]? { get }
}

public extension Endpoint {
    var path: String { "" }
    var method: HTTPMethod { .GET }
    var parameters: [String: AnyObject]? { nil }
}
