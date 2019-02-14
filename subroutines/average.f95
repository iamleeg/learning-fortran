  

program avg
  implicit none
  interface
     function average(count, numbers)
       integer, intent(in) :: count
       real, intent(in) :: numbers(:)
       real average
     end function average
  end interface
  integer :: count, i
  real, allocatable, dimension(:) :: elements

  print *, "Enter the number of elements"
  read *, count
  allocate(elements(count))
  print *, "Enter each of the ", count, " elements"
  do i=1,count
     read *, elements(i)
  end do
  print *, "The average is ", average(count, elements)
  deallocate(elements)
end program avg

function average(count, numbers)
  implicit none
  integer :: count, i
  real :: sum, average
  real, dimension(:) :: numbers

  sum = 0.
  do i = 1,count
     sum = sum + numbers(i)
  end do
  average = sum/count
end function average
