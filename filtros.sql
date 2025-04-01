-- PRUEBA CON FILTROS POR NOMBRES
DECLARE @FechaInicio DATETIME = '2025/03/01'
DECLARE @FechaFin DATETIME = '2025/03/31'
DECLARE @Procesos NVARCHAR(MAX) = 'ENTRENAMIENTO,MONITOREO' 
DECLARE @Programas NVARCHAR(MAX) = 'FORMACION 0,EVENTOS OPERACIONALES' 

SELECT CONCAT(p.ApellidoPaterno, ' ', p.ApellidoMaterno, ' ', p.PrimerNombre, ' ', p.SegundoNombre) Operador,
m.Nombre EntrenamientoEquipo, p.Guardia, p.NroDOI DNI, p.Celular, null procedencia, NULL Superintendencia,
pb.FechaInicio FechaInicio, 
pb.FechaFin FechaFin, p2.Nombre Proceso, pbt.Nombre Programa, NULL Licencia, NULL Estado,
ct.Nombre TipoCur, c.Nombre curso, hpa.Fecha, hpa.HorasPlanificadas, HorasAvanzadas,
u.Nombre UserRegistra
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
JOIN usr.Usuarios u ON hpa.UsuarioRegistraId = u.UsuarioId
JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
JOIN per.FichasRegistro fr ON pp.FichaRegistroId = fr.FichaRegistroId
JOIN per.Personas p ON fr.PersonaId = p.PersonaId
JOIN cap.Cursos c ON ppc.CursoId = c.CursoId 
JOIN cap.CursoTipos ct ON c.CursoTipoId = ct.CapacitacionCursoTipoId 
LEFT JOIN veh.Modelo m ON pp.ModeloId = m.ModeloId
JOIN entrenamiento.Procesos p2 ON pp.ProcesoId = p2.ProcesoId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
JOIN entrenamiento.PlanBaseTipos pbt ON pb.PlanBaseTipoId = pbt.TipoId 
WHERE hpa.Deleted IS NULL
    AND hpa.Fecha BETWEEN @FechaInicio AND @FechaFin
    -- Filtro para Procesos por NOMBRE
    AND (
        (LEN(@Procesos) > 0 AND EXISTS (
            SELECT 1
            FROM STRING_SPLIT(@Procesos, ',') AS cp
            WHERE p2.Nombre = TRIM(cp.value)
        ))
        OR LEN(@Procesos) = 0
    )
    -- Filtro para Programas por NOMBRE
    AND (
        (LEN(@Programas) > 0 AND EXISTS (
            SELECT 1
            FROM STRING_SPLIT(@Programas, ',') AS cpr
            WHERE pbt.Nombre = TRIM(cpr.value)
        ))
        OR LEN(@Programas) = 0
    );
