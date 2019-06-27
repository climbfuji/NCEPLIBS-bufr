	SUBROUTINE BVERS (CVERSTR)

C$$$  SUBPROGRAM DOCUMENTATION BLOCK
C
C SUBPROGRAM:    BVERS 
C   PRGMMR: J. ATOR          ORG: NP12       DATE: 2009-03-23
C
C ABSTRACT: THIS SUBROUTINE RETURNS A CHARACTER STRING CONTAINING THE
C   VERSION NUMBER OF THE BUFR ARCHIVE LIBRARY SOFTWARE.
C
C PROGRAM HISTORY LOG:
C 2009-03-23  J. ATOR    -- ORIGINAL AUTHOR
C 2011-09-26  J. ATOR    -- UPDATED TO VERSION 10.0.1
C 2012-02-24  J. ATOR    -- UPDATED TO VERSION 10.1.0
C 2012-10-12  J. ATOR    -- UPDATED TO VERSION 10.2.0
C 2012-11-29  J. ATOR    -- UPDATED TO VERSION 10.2.1
C 2012-12-04  J. ATOR    -- UPDATED TO VERSION 10.2.2
C 2013-01-08  J. ATOR    -- UPDATED TO VERSION 10.2.3
C 2013-01-09  J. ATOR    -- UPDATED TO VERSION 10.2.4
C 2013-01-25  J. ATOR    -- UPDATED TO VERSION 10.2.5
C 2014-11-12  J. ATOR    -- UPDATED TO VERSION 11.0.0
C 2015-09-24  J. ATOR    -- UPDATED TO VERSION 11.0.1
C
C USAGE:    CALL BVERS (CVERSTR)
C
C   OUTPUT ARGUMENT LIST:
C     CVERSTR  - CHARACTER*(*): VERSION STRING
C
C REMARKS:
C    THIS ROUTINE CALLS:        BORT
C    THIS ROUTINE IS CALLED BY: WRDLEN
C                               Also called by application programs.
C
C ATTRIBUTES:
C   LANGUAGE: FORTRAN 77
C   MACHINE:  PORTABLE TO ALL PLATFORMS
C
C$$$

	CHARACTER*(*)	CVERSTR

C-----------------------------------------------------------------------
C-----------------------------------------------------------------------

	IF (LEN(CVERSTR).LT.8) GOTO 900

	CVERSTR = '11.0.1'

	RETURN
900	CALL BORT('BUFRLIB: BVERS - INPUT STRING MUST CONTAIN SPACE '//
     .    'FOR AT LEAST 8 CHARACTERS')
	END
