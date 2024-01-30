// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct SparkCommon: Equatable {
    public var string: String

    public init(string: String = "Hello") {
        self.string = string.common
    }
}

public extension String {

    var common: String {
        return self + " Common"
    }
}
