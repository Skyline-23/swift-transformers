#if os(Linux) || os(Windows)
extension String {
    /// Minimal shim so Linux builds can compile localized string initializers.
    public init(localized value: String, comment: StaticString? = nil) {
        self = value
    }
}
#endif
