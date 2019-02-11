program ave
  ! find the average of numbers in an array
  implicit none
  real, dimension(10) :: x
  real :: average, sum
  integer :: i
  print *, 'enter 10 numbers'
  sum = 0.0
  do i=1,10
     read *, x(i)
     sum = sum + x(i)
  end do
  average = sum/10
  print *, 'the average is ', average
  print *, 'the numbers were '
  print *, x
end program ave
