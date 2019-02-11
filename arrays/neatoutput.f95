program neatoutput
  ! print the values of x and e(x) for 0<=x<=1, step 0.1
  implicit none
  real, dimension(11) :: x, ex
  integer i
  do i = 1,11
     x(i) = i-1
     ex(i) = exp(x(i))
  end do
  open (10, file='myoutput')
  do i = 1,11
     write(10,1) x(i), ex(i)
1    format(2f16.6)
  end do
end program neatoutput

