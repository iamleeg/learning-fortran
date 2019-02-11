program convert
  !as well as real there are integers and characters
  implicit none
  integer :: pounds, pence, total
  character :: name*10
  print *, 'What is your name?' !It had better be short...
  read *, name
  print *, 'Hi ',name,'! Enter number of pounds and pence'
  read *, pounds, pence
  total = 100 * pounds + pence
  print *, 'The total money in pence is ', total
end program convert
