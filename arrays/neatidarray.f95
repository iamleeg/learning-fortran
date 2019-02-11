program idra2
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
     write(*,1) (a(row,column), column=1,imax)
1 format(4i4)
  end do
end program idra2
