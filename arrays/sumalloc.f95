program sumalloc
  ! read two arrays of the same length, and sum them
  implicit none
  real, allocatable, dimension(:):: a,b
  integer :: i, length
  print *, 'enter the length of each array'
  read *, length
  allocate(a(length))
  allocate(b(length))
  print *, 'enter the ', length, ' elements of a'
  do i=1,length
     read *,a(i)
  end do
  print *, 'enter the ', length, ' elements of b'
  do i=1,length
     read *,b(i)
  end do
  print *,'   i         a        b         sum'
  do i=1,length
     print *,i,a(i),b(i),a(i)+b(i)
  end do
  deallocate(a)
  deallocate(b)
end program sumalloc
