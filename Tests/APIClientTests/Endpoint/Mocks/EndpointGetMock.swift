import Foundation
@testable import APIClient

struct EndpointGetMock: Endpoint {
    private let parameterOne: String
    private let parameterTwo: String
    
    init(parameterOne: String,
         parameterTwo: String) {
        self.parameterOne = parameterOne
        self.parameterTwo = parameterTwo
    }
    
    var path: String = "mock"
    
    var parameters: [String : AnyObject]? {
        ["parameter_one": parameterOne as AnyObject,
         "parameter_two": parameterTwo as AnyObject]
    }
}
