class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = prices[0];
    int maxProfit = 0;

    for (var price in prices) {
      if (price < minPrice) {
        minPrice = price;
      }
      int profit = price - minPrice;
      if (profit > maxProfit) {
        maxProfit = profit;
      }
    }

    return maxProfit;
  }
}

void main() {
  Solution s = Solution();
  print(s.maxProfit([1, 2, 5, 7, 8]));
  print(s.maxProfit([7, 6, 4, 3, 1]));
}
