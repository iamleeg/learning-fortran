program splitnums
  !write positive and negative numbers to different files
  implicit none
  integer i,x
  open(10, file='positive.txt')
  open(11, file='negative.txt')
  open(12, file='numbers.txt')
  do i=1,8
     read (12,*) x
     if (x >= 0) write(10,*) x
     if (x < 0) write(11,*) x
  end do
end program splitnums
