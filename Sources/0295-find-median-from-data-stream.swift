import Collections

class MedianFinder {
  private(set) var smallHeap: Heap<Double> = []
  private(set) var largeHeap: Heap<Double> = []
  private var smallMax: Double { smallHeap.max() ?? -.infinity }
  private var largeMin: Double { largeHeap.min() ?? +.infinity }
  private var areCountsBalanced: Bool { abs(smallHeap.count-largeHeap.count) < 2 }
  private var areValuesBalanced: Bool { smallMax <= largeMin }

  init() {}

  func addNum(_ num: Int) {
    smallHeap.insert(Double(num))
    while !areCountsBalanced || !areValuesBalanced {
      if !areCountsBalanced {
        largeHeap.insert(smallHeap.removeMax())
      } else {
        smallHeap.insert(largeHeap.removeMin())
      }
    }
  }

  func findMedian() -> Double {
    if smallHeap.count > largeHeap.count {
      smallMax
    } else if smallHeap.count < largeHeap.count {
      largeMin
    } else {
      (smallMax+largeMin)/2
    }
  }
}
