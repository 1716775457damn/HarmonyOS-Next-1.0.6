@Entry
@Component
struct Index {
  @State numbers: string = ''
  @State primeNumbers: string = ''
  @State dumplingStatus: string = ''

  build() {
    Column() {
      // 页面标题
      Text('循环语句示例')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 20 })

      // 示例1：计数器和3的倍数
      Button("运行示例1")
        .onClick(() => {
          let result: number[] = []
          let divisibleBy3: number[] = []
          let count = 1
          while (count <= 50) {
            result.push(count)
            if (count % 3 === 0) {
              divisibleBy3.push(count)
            }
            count++
          }
          this.numbers = `数字序列: ${result.join(', ')}\n3的倍数: ${divisibleBy3.join(', ')}`
        })
        .width('80%')
        .height(40)
        .backgroundColor('#007DFF')
        .margin(10)

      Text(this.numbers)
        .margin(10)
        .padding(10)
        .textAlign(TextAlign.Start)
        .backgroundColor('#F5F5F5')
        .borderRadius(8)
        .width('90%')

      // 示例2：寻找素数
      Button("查找素数")
        .onClick(() => {
          let primes: number[] = []
          for (let num = 2; num <= 100; num++) {
            let isPrime = true
            for (let i = 2; i <= Math.sqrt(num); i++) {
              if (num % i === 0) {
                isPrime = false
                break
              }
            }
            if (isPrime) {
              primes.push(num)
            }
          }
          this.primeNumbers = `100以内的素数: ${primes.join(', ')}`
        })
        .width('80%')
        .height(40)
        .backgroundColor('#007DFF')
        .margin(10)

      Text(this.primeNumbers)
        .margin(10)
        .padding(10)
        .textAlign(TextAlign.Start)
        .backgroundColor('#F5F5F5')
        .borderRadius(8)
        .width('90%')

      // 示例3：饺子循环演示
      Button("吃饺子示例")
        .onClick(() => {
          let status: string[] = []
          for (let i = 1; i <= 8; i++) {
            if (i === 5) {
              status.push('第5个饺子坏了，跳过')
              continue
            }
            status.push(`吃掉第${i}个饺子`)
          }
          this.dumplingStatus = status.join('\n')
        })
        .width('80%')
        .height(40)
        .backgroundColor('#007DFF')
        .margin(10)

      Text(this.dumplingStatus)
        .margin(10)
        .padding(10)
        .textAlign(TextAlign.Start)
        .backgroundColor('#F5F5F5')
        .borderRadius(8)
        .width('90%')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFFFFF')
  }
}

