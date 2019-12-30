class Solution {
    func pancakeSort(_ numbers: [Int]) -> [Int] {
        var values = numbers
        var result: [Int] = []

        // Single element is already sorted so no need to go down to 0
        for i in (1 ..< values.count).reversed() {
            // Determine index of maximum element in unsorted portion
            var indexOfMax = 0
            for j in 0 ... i where values[j] > values[indexOfMax] {
                indexOfMax = j
            }

            // The currently selected element is already sorted
            if indexOfMax == i {
                continue
            }

            // The element is already in first position, no need for an
            // additional flip.
            if indexOfMax != 0 {
                result.append(indexOfMax)
                values.replaceSubrange(0 ... indexOfMax, with: values[0 ... indexOfMax].reversed())
            }

            // Flip all elements in the unsorted portion with the maximum
            // element guaranteed to be in first position. Aka fix one
            // element in the unsorted portion.
            result.append(i)
            values.replaceSubrange(0 ... i, with: values[0 ... i].reversed())
        }

        return result
    }
}
