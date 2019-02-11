program divzero
  !This loop causes a /0, what happens?
  implicit none
  integer :: x
  real:: y
  do x = -10,10,1
     y = 1.0/x
     print *, y
  end do
end program divzero
