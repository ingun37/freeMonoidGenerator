private func cartesian(xs:[String], ys:[String])-> [String] {
    return xs.flatMap { (x) in
        ys.map { (y) in
            x + y
        }
    }
}
func lexiFreeMonoid(generator: [String])-> FlattenSequence<LazyMapSequence<(PartialRangeFrom<Int>), [String]>>.Iterator {
    return (1...).lazy.map { (n) -> [String] in
        var initial = [""]
        for _ in 0..<n {
            initial = cartesian(xs: generator, ys: initial)
        }
        return initial
        }.joined().makeIterator()
}
