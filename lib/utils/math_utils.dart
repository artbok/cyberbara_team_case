int sum(int a, int b) {
  return a + b;
}

double arithmeticMean(List<int> nums) {
  int s = 0;
  for (int i = 0; i < nums.length; i++) {
    s += nums[i];
  }
  return s / nums.length;
}