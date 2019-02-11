program swap
  implicit none
  real :: a,b,t
  print *, 'Enter numbers a and b'
  read *,a,b
  t=a
  a=b
  b=t
  print *, 'Now they are a:',a,' b:', b
end program swap
