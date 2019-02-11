program sumalloc
  ! read two arrays of the same length, and sum them
  implicit none
  real, allocatable, dimension(:):: a,b, sum
  integer :: i, length
  print *, 'enter the length of each array'
  read *, length
  allocate(a(length))
  allocate(b(length))
  allocate(sum(length))
  print *, 'enter the ', length, ' elements of a'
  do i=1,length
     read *,a(i)
  end do
  print *, 'enter the ', length, ' elements of b'
  do i=1,length
     read *,b(i)
  end do
  sum = a + b
  print *, a
  print *, b
  print *, sum
  deallocate(a)
  deallocate(b)
  deallocate(sum)
end program sumalloc
