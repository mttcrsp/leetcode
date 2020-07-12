extension Solution {
    func angleClock(_ hour: Int, _ minutes: Int) -> Double {
        let minutes = Double(minutes % 60)
        let hour = Double(hour % 12)

        let degreesMM = (360 / 60) * minutes
        var degreesHH = (360 / 12) * hour
        degreesHH += (360 / 12) * (minutes / 60)

        let difference = abs(degreesMM - degreesHH)
        return difference < 180 ? difference : 360 - difference
    }
}
