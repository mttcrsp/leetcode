/// https://leetcode.com/problems/distribute-money-to-maximum-children/
struct DistributeMoneyToMaximumChildren {
  func distMoney(_ money: Int, _ children: Int) -> Int {
    if money < children {
      return -1
    } else if money == children*8 {
      return children
    } else if money-4 == (children-1)*8 {
      return children-2
    } else if money > children*8 {
      return children-1
    }

    var satisfied = children
    while (satisfied*8)+(children-satisfied) > money {
      satisfied -= 1
    }

    return satisfied
  }
}
