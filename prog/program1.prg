OPEN DATABASE "\\marrsa001\programas\directorio\datos\directorio.dbc"
SELECT 0
USE directorio!puestos
SELECT 0
USE directorio!prop
LOCAL cli
SELECT num_cli FROM prop WHERE exp=5 AND activo = .F. ORDER BY num_cli DESC INTO CURSOR clie READWRITE
SELECT clie
GO TOP
DO WHILE NOT EOF()
	cli = clie.num_cli
	*WAIT WINDOW ("el cliente es" + STR(cli))
	DELETE from puestos where puestos.num_prop=cli AND exp=5
	SELECT clie
	SKIP
ENDDO

CLOSE TABLES all