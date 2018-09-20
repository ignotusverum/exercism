//Solution goes in Sources

extension Array {
    func accumulate<T>(_ input: (Element) -> T)-> [T] {
        var acc = [T]()
        for e in self { acc.append(input(e)) }
        return acc
    }
}
