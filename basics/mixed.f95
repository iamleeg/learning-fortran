program mixed
  implicit none
  real :: x,z
  integer :: y
  print *, 'Enter a real number'
  read *,x
  print *, 'And now an integer'
  read *,y
  z = x + y
  print *, 'The total is ', z
end program mixed
