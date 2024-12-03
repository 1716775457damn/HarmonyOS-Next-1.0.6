//while 循环
//示例1：打印1到50的数字
@Entry
@Component
struct Index {
  build() {
    let count: number = 1;
    while (count <= 50) {
      console.log('当前数字:', count);
      count++;
    }
  }
}
//示例2：找出1到50中所有能被3整除的数字
@Entry
@Component
struct Index {
  build() {
    let count: number = 1;
    while (count <= 50) {
      if (count % 3 === 0) {
        console.log('能被3整除的数字:', count);
      }
      count++;
    }
  }
}


///////////////////////////////////////////////////////////////
//for 循环
@Entry
@Component
struct Index {
  build() {
    for (let i: number = 1; i <= 20; i++) {
      console.log('for循环:', i);
    }
  }
}

//
@Entry
@Component
struct Index {
  build() {
    let sum: number = 0;
    for (let i: number = 1; i <= 20; i++) {
      console.log('for循环:', i);
      sum += i;
    }
    console.log('1到20的和:', sum);
  }
}


////////////////////////////////////////////
//break 和 continue
@Entry
@Component
struct Index {
  build() {
    for (let i: number = 1; i <= 8; i++) {
      if (i === 5) {
        console.log('吃到第5个饺子，饱了');
        break; // 终止循环
      }
      console.log('吃饺子:', `第${i}个`);
    }
    console.log('离开餐桌');
  }
}
//
@Entry
@Component
struct Index {
  build() {
    for (let i: number = 1; i <= 8; i++) {
      if (i === 5) {
        console.log('第5个饺子坏了，不吃了');
        continue; // 跳过本次循环
      }
      console.log('吃饺子:', `第${i}个`);
    }
  }
}
//
@Entry
@Component
struct Index {
  build() {
    let isPrime: boolean;
    for (let num: number = 2; num <= 100; num++) {
      isPrime = true;
      for (let i: number = 2; i <= Math.sqrt(num); i++) {
        if (num % i === 0) {
          isPrime = false;
          break;
        }
      }
      if (isPrime) {
        console.log('素数:', num);
      }
    }
  }
}

