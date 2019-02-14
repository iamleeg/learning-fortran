program matrixmul
  real, allocatable, dimension(:,:) :: ra1, ra2, ra3
  integer :: size
  print *, 'Enter the size of the (square) array'
  read *, size
  allocate(ra1(size,size), ra2(size,size), ra3(size,size))
  print *, 'enter matrix elements for ra1 row by row'
  call fill_array(size, ra1)
  print *, 'enter matrix elements for ra2 row by row'
  call fill_array(size, ra2)
  print *, 'ra1'
  call outputra(size, ra1)
  print *, 'ra2'
  call outputra(size, ra2)
  ra3 = matmul(ra1,ra2)
  print *, 'matmul(ra1,ra2)'
  call outputra(size, ra3)
  ra3 = transpose(ra1)
  print *, 'transpose(ra1)'
  call outputra(size, ra3)
  deallocate(ra1, ra2, ra3)
end program matrixmul

subroutine outputra(size, ra)
  implicit none
  integer :: size, row, col
  real, dimension(size,size) :: ra
  do row=1,size
     write(*,10) (ra(row,col),col=1,size)
10   format(100f10.2)
     ! probably more numbers than we need (hopefully!)
  end do
end subroutine outputra

subroutine fill_array(size, ra)
  implicit none
  integer :: row, col, size
  real :: num
  real, dimension(size,size) :: ra
  do row=1, size
     do col=1, size
        print *, row, col
        read *, num
        ra(row,col) = num
     end do
  end do
end subroutine fill_array
