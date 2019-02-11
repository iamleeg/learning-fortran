program av2
  !calculate average again, but parameterise the array size
  implicit none
  integer, parameter :: imax = 5
  real, dimension(imax) :: x
  real :: average, sum
  integer :: i
  print *, 'enter ', imax, ' numbers'
  sum = 0.0
  do i=1,imax
     read *,x(i)
     sum = sum + x(i)
  end do
  average = sum/imax
  print *, 'the average is ', average
  print *, 'the numbers are'
  print *, x
end program av2
