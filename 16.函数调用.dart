// 函数的相互调用

void main() {
  
  // 方法1：判断n是否是偶数
  bool isEvenNumber(int n) {
    if (n % 2 == 0) {
      return true;
    }
    return false;
  }

  // 方法2：打印1-n内的所有偶数
  printNumber(int n) {
    for (var i = 1; i < n; i++) {
      if (isEvenNumber(i)) {     // 调用isEvenNumber()方法，如果为true，打印偶数i
        print(i);
      }
    }
  }

  printNumber(10);
}
