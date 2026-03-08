#if os(Linux) || os(Windows) || canImport(Android)
extension String {
    /// Minimal shim so non-Apple builds can compile localized string initializers.
    public init(localized value: String, comment: StaticString? = nil) {
        self = value
    }
}
#endif
