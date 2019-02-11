program ramagic2
  ! calculate sine and cosine of arrays
  implicit none
  real, dimension(10) :: x, sx, cx
  integer i
  do i = 1,10
     x(i) = (i-1)/10.0
  end do
  sx = sin(x)
  cx = cos(x)
  print *,x
  print *,sx
  print *,cx
end program ramagic2
