#if !canImport(ObjectiveC)
@inlinable
func autoreleasepool<Result>(invoking body: () throws -> Result) rethrows -> Result {
    try body()
}
#endif
