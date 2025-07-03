PROGRAM FortranTextEditor

    IMPLICIT NONE

    INTEGER, PARAMETER :: MAX_LINES = 10     ! Maximum number of lines we can store
    CHARACTER(LEN=100) :: lines(MAX_LINES)   ! Array to hold text lines, max 100 chars each
    INTEGER            :: i, num_entered_lines = 0

    WRITE(*,*) '--- Fortran Text Editor Version 1.0 ---'
    WRITE(*,*) 'Type your lines of text. Press Enter after each line.'
    WRITE(*,*) 'Type "DONE" (without quotes) on a new line to finish.'
    WRITE(*,*) 'You can enter up to ', MAX_LINES, ' lines.'

    DO i = 1, MAX_LINES
        WRITE(*,*) 'Line ', i, ': '
        READ(*,'(A)') lines(i)

        IF (TRIM(ADJUSTL(lines(i))) == 'DONE') THEN
            EXIT ! Exit the loop if user types "DONE"
        END IF
        num_entered_lines = num_entered_lines + 1
    END DO

    WRITE(*,*)
    WRITE(*,*) '--- Your Entered Text ---'

    IF (num_entered_lines == 0) THEN
        WRITE(*,*) 'No lines were entered.'
    ELSE
        DO i = 1, num_entered_lines
            WRITE(*,*) '(', i, ') ', TRIM(lines(i))
        END DO
    END IF

    WRITE(*,*) '---------------------------'
    WRITE(*,*) 'Program finished.'

END PROGRAM FortranTextEditor