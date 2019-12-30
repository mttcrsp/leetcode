protocol NestedInteger {
    func isInteger() -> Bool
    func getInteger() -> Int
    func getList() -> [NestedInteger]
    func setInteger(value: Int)
    func add(elem: NestedInteger)
}
