program alloc
  !dynamic allocation
  implicit none
  integer, allocatable,dimension(:):: vector
  integer :: elements, i
  print *, 'enter the number of elements in the vector'
  read *,elements
  allocate(vector(elements))
  print *,'enter each of the ', elements, ' elements.'
  do i = 1,elements
     read *,vector(i)
  end do
  print *,'this is the vector'
  do i=1,elements
     print *, vector(i)
  end do
  deallocate(vector)
end program alloc
