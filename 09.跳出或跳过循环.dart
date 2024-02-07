// break：跳出当前一层循环，可以用在switch...case中，也可以用在for循环和while循环中

// continue: 跳过当前循环体，循环继续执行

void main() {
  for (int i = 1; i < 10; i++) {
    if (i == 4) {
      continue;   
    }
    print(i);
  }

    for (int i = 1; i < 10; i++) {
    if (i == 4) {
      break;
    }             
    print(i);
  }
}
