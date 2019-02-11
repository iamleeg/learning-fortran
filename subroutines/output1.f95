program output1
  ! example of a subroutine
  implicit none
  real, dimension(3) :: a,b,c
  a = 1.5
  b = 2.5
  c = 3.5
  write (*,1) 'a',a
  call prompt()
  write (*,1) 'b',b
  call prompt()
  write (*,1) 'c',c
  call prompt()
  write (*,1) 'a*b*c', a*b*c
1 format(a,3f8.3)
end program output1

subroutine prompt()
  !ask for a keypress, continue if y
  implicit none
  character answer*1
  print *,'Y to continue, another key to finish'
  read *,answer
  if (answer /= 'y') stop
end subroutine prompt
