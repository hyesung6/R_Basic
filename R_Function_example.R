# 함수 예제
sum_ <- function(a, b) {
  the_sum_ <- a + b
  return(the_sum_)
}

sum_(1, 2)

sum_(100, 200)


# if 문 예제 

bread <- 1000


if ( bread >= 1000) {
  print('bread sold out!')
} else {
  print('bread still here ...')
}

if ( bread > 20) {
  print('You sold a lot!')
} else {
  print('Not enough for today')  
}