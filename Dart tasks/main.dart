void main() {
  List<int> numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  NumberAnalysisApp numberAnalysisApp = NumberAnalysisApp(nums: numbers);
  print(numberAnalysisApp.findMaximum());
  print(numberAnalysisApp.findMinimum());
  print(numberAnalysisApp.calculateSum());
  print(numberAnalysisApp.calculateAverage());
}

class NumberAnalysisApp {
  final List<int> nums;
  NumberAnalysisApp({required this.nums});

  int findMaximum() {
    int max = 0;
    for (int x in nums) {
      if (x > max) {
        max = x;
      }
    }
    return max;
  }

  int findMinimum() {
    int min = 1000;
    for (int x in nums) {
      if (x < min) {
        min = x;
      }
    }
    return min;
  }

  int calculateSum() {
    int total = 0;
    for (int x in nums) {
      total += x;
    }
    return total;
  }

  double calculateAverage() {
    int total = 0;
    for (int x in nums) {
      total += x;
    }
    return total / nums.length;
  }
}
