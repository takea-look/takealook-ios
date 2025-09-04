import Foundation

public enum Environment {
    // MARK: - Keys
    public enum Key {
        static let baseUrl = "API_BASE_URL"
    }
    
    // MARK: - Values
    static var baseUrl: String { findValue(forKey: Key.baseUrl)! }
}

private func findValue<T>(forKey key: String) -> T? {
    return Bundle.main.infoDictionary?[key] as? T
}
