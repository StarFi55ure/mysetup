" Test successful TAP output. 

call vimtest#StartTap()
call vimtap#Plan(3)

call vimtap#Ok(1, 'all right')
call vimtap#Is(1, 1, '1 == 1')
call vimtap#Like('foobar 2000', 'fo\+.* \d\+', 'matches')
call vimtap#Diag('Some diagnostic message.')

call vimtest#Quit()

