// Google Stock buy and sell

func solution(prices: [Int]) -> Int {
    if prices.count < 1 {
        return 0
    }

    var lowestPriceIndex = Int()
    var highestPriceIndex = Int()
    var highValue = Int()
    var lowValue = Int()

    //1.- look for the min and max value
    for i in 0..<prices.count {

        if lowValue >= prices[i] {
            lowValue = prices[i]
            lowestPriceIndex = i
        }

        if highValue < prices[i] {
            highValue = prices[i]
            highestPriceIndex = i
        }
    }

    //if the lowestPrice Index is after the greatets value index
    if lowestPriceIndex > highestPriceIndex {
        //we get a sub array with the current index till prices.count-1
        var nextForSearch: [Int] = Array(prices[lowestPriceIndex...prices.count-1])
        return solution(prices: nextForSearch)
    }

    var result = highValue - lowValue
    print(result)
    return result
}
solution(prices: [20,4,0,4, -1, 4, 15, 12, 20, 19, 17,19,13])