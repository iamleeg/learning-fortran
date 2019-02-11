program idra
  implicit none
  integer, parameter :: imax = 4
  integer, dimension(imax, imax) :: a
  integer :: row, column
  do row = 1,imax
     do column = 1, imax
        if (row == column) then
           a(row,column) = 1
        else
           a(row, column) = 0
        end if
     end do
  end do
  do row = 1,imax
     do column = 1,imax
        print *, a(row, column)
     end do
  end do
end program idra
