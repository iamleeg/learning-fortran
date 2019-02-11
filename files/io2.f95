program io2
  ! writing to files
  implicit none
  real :: num
  integer :: i
  open (12,file='myoutput')
  do i = 1,100
     num = i/3.0
     write(12,*) num
  end do
  print *, 'Done'
end program io2
