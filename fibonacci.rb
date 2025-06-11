def fibonacci(amount, arr = [0,1], sum = 0)
  return arr[0...amount] if amount <= 2 && arr.length == 2
  return arr if amount == arr.length

  sum = arr[-1] + arr[-2]
  fibonacci(amount, arr << sum, sum)
end