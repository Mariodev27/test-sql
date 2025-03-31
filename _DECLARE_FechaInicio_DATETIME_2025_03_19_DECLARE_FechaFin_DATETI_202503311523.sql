INSERT INTO [DECLARE @FechaInicio DATETIME = '2025-03-19'
DECLARE @FechaFin DATETIME = '2025-04-30'

-- Ver las fechas que tenemos en cada registro para identificar el problema
SELECT 
    CONVERT(VARCHAR, hpa.Fecha, 120) AS hpa_Fecha,
    CONVERT(VARCHAR, pb.FechaInicio, 120) AS pb_FechaInicio,
    CONVERT(VARCHAR, pb.FechaFin, 120) AS pb_FechaFin,
    -- Verificar si cada registro cumple alguna de las condiciones
    CASE WHEN hpa.Fecha BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaEnRango,
    CASE WHEN pb.FechaInicio BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaInicioEnRango,
    CASE WHEN pb.FechaFin BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaFinEnRango,
    CASE WHEN pb.FechaInicio <= @FechaInicio AND pb.FechaFin >= @FechaFin THEN 'SI' ELSE 'NO' END AS AbarcaRango
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
LEFT JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
LEFT JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
WHERE hpa.Deleted IS NULL
-- ORDER BY de los resultados para análisis
ORDER BY hpa.Fecha] (hpa_Fecha,pb_FechaInicio,pb_FechaFin,FechaEnRango,FechaInicioEnRango,FechaFinEnRango,AbarcaRango) VALUES
	 (N'2023-06-21 00:00:00',N'2023-06-21 00:00:00',N'2023-06-21 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2023-06-25 00:00:00',N'2023-06-21 00:00:00',N'2023-06-21 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2024-11-28 00:00:00',N'2024-11-28 00:00:00',N'2024-11-28 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2024-11-28 00:00:00',N'2024-11-28 00:00:00',N'2024-11-28 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2024-11-28 00:00:00',N'2024-11-28 00:00:00',N'2024-11-28 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2024-11-29 00:00:00',N'2024-11-29 00:00:00',N'2024-11-29 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2024-11-29 00:00:00',N'2024-11-29 00:00:00',N'2024-11-29 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2024-11-29 00:00:00',N'2024-11-29 00:00:00',N'2024-11-29 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-01-08 00:00:00',N'2025-01-08 00:00:00',N'2025-01-17 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-01-08 00:00:00',N'2025-01-08 00:00:00',N'2025-01-17 00:00:00',N'NO',N'NO',N'NO',N'NO');
INSERT INTO [DECLARE @FechaInicio DATETIME = '2025-03-19'
DECLARE @FechaFin DATETIME = '2025-04-30'

-- Ver las fechas que tenemos en cada registro para identificar el problema
SELECT 
    CONVERT(VARCHAR, hpa.Fecha, 120) AS hpa_Fecha,
    CONVERT(VARCHAR, pb.FechaInicio, 120) AS pb_FechaInicio,
    CONVERT(VARCHAR, pb.FechaFin, 120) AS pb_FechaFin,
    -- Verificar si cada registro cumple alguna de las condiciones
    CASE WHEN hpa.Fecha BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaEnRango,
    CASE WHEN pb.FechaInicio BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaInicioEnRango,
    CASE WHEN pb.FechaFin BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaFinEnRango,
    CASE WHEN pb.FechaInicio <= @FechaInicio AND pb.FechaFin >= @FechaFin THEN 'SI' ELSE 'NO' END AS AbarcaRango
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
LEFT JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
LEFT JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
WHERE hpa.Deleted IS NULL
-- ORDER BY de los resultados para análisis
ORDER BY hpa.Fecha] (hpa_Fecha,pb_FechaInicio,pb_FechaFin,FechaEnRango,FechaInicioEnRango,FechaFinEnRango,AbarcaRango) VALUES
	 (N'2025-01-08 00:00:00',N'2025-01-08 00:00:00',N'2025-01-17 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-01-08 00:00:00',N'2025-01-08 00:00:00',N'2025-01-17 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-01-08 00:00:00',N'2025-01-08 00:00:00',N'2025-01-17 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-01-08 00:00:00',N'2025-01-08 00:00:00',N'2025-01-17 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-01-08 00:00:00',N'2025-01-08 00:00:00',N'2025-01-17 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-01-08 00:00:00',N'2025-01-08 00:00:00',N'2025-01-17 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-01-08 00:00:00',N'2025-01-08 00:00:00',N'2025-01-17 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-01-14 00:00:00',N'2025-01-20 00:00:00',N'2025-01-24 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-01-14 00:00:00',N'2025-01-20 00:00:00',N'2025-01-24 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-01-14 00:00:00',N'2025-01-20 00:00:00',N'2025-01-24 00:00:00',N'NO',N'NO',N'NO',N'NO');
INSERT INTO [DECLARE @FechaInicio DATETIME = '2025-03-19'
DECLARE @FechaFin DATETIME = '2025-04-30'

-- Ver las fechas que tenemos en cada registro para identificar el problema
SELECT 
    CONVERT(VARCHAR, hpa.Fecha, 120) AS hpa_Fecha,
    CONVERT(VARCHAR, pb.FechaInicio, 120) AS pb_FechaInicio,
    CONVERT(VARCHAR, pb.FechaFin, 120) AS pb_FechaFin,
    -- Verificar si cada registro cumple alguna de las condiciones
    CASE WHEN hpa.Fecha BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaEnRango,
    CASE WHEN pb.FechaInicio BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaInicioEnRango,
    CASE WHEN pb.FechaFin BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaFinEnRango,
    CASE WHEN pb.FechaInicio <= @FechaInicio AND pb.FechaFin >= @FechaFin THEN 'SI' ELSE 'NO' END AS AbarcaRango
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
LEFT JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
LEFT JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
WHERE hpa.Deleted IS NULL
-- ORDER BY de los resultados para análisis
ORDER BY hpa.Fecha] (hpa_Fecha,pb_FechaInicio,pb_FechaFin,FechaEnRango,FechaInicioEnRango,FechaFinEnRango,AbarcaRango) VALUES
	 (N'2025-01-15 00:00:00',N'2025-01-20 00:00:00',N'2025-01-24 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-01-16 00:00:00',N'2025-01-20 00:00:00',N'2025-01-24 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-03-06 00:00:00',N'2025-03-06 00:00:00',N'2025-03-06 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-03-06 00:00:00',N'2025-03-06 00:00:00',N'2025-03-06 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-03-06 00:00:00',N'2025-03-06 00:00:00',N'2025-03-06 00:00:00',N'NO',N'NO',N'NO',N'NO'),
	 (N'2025-03-11 00:00:00',N'2025-03-11 00:00:00',N'2025-03-23 00:00:00',N'NO',N'NO',N'SI',N'NO'),
	 (N'2025-03-19 00:00:00',N'2025-03-19 00:00:00',N'2025-03-19 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-19 00:00:00',N'2025-03-19 00:00:00',N'2025-03-19 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-19 00:00:00',N'2025-03-19 00:00:00',N'2025-03-19 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO');
INSERT INTO [DECLARE @FechaInicio DATETIME = '2025-03-19'
DECLARE @FechaFin DATETIME = '2025-04-30'

-- Ver las fechas que tenemos en cada registro para identificar el problema
SELECT 
    CONVERT(VARCHAR, hpa.Fecha, 120) AS hpa_Fecha,
    CONVERT(VARCHAR, pb.FechaInicio, 120) AS pb_FechaInicio,
    CONVERT(VARCHAR, pb.FechaFin, 120) AS pb_FechaFin,
    -- Verificar si cada registro cumple alguna de las condiciones
    CASE WHEN hpa.Fecha BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaEnRango,
    CASE WHEN pb.FechaInicio BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaInicioEnRango,
    CASE WHEN pb.FechaFin BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaFinEnRango,
    CASE WHEN pb.FechaInicio <= @FechaInicio AND pb.FechaFin >= @FechaFin THEN 'SI' ELSE 'NO' END AS AbarcaRango
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
LEFT JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
LEFT JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
WHERE hpa.Deleted IS NULL
-- ORDER BY de los resultados para análisis
ORDER BY hpa.Fecha] (hpa_Fecha,pb_FechaInicio,pb_FechaFin,FechaEnRango,FechaInicioEnRango,FechaFinEnRango,AbarcaRango) VALUES
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO');
INSERT INTO [DECLARE @FechaInicio DATETIME = '2025-03-19'
DECLARE @FechaFin DATETIME = '2025-04-30'

-- Ver las fechas que tenemos en cada registro para identificar el problema
SELECT 
    CONVERT(VARCHAR, hpa.Fecha, 120) AS hpa_Fecha,
    CONVERT(VARCHAR, pb.FechaInicio, 120) AS pb_FechaInicio,
    CONVERT(VARCHAR, pb.FechaFin, 120) AS pb_FechaFin,
    -- Verificar si cada registro cumple alguna de las condiciones
    CASE WHEN hpa.Fecha BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaEnRango,
    CASE WHEN pb.FechaInicio BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaInicioEnRango,
    CASE WHEN pb.FechaFin BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaFinEnRango,
    CASE WHEN pb.FechaInicio <= @FechaInicio AND pb.FechaFin >= @FechaFin THEN 'SI' ELSE 'NO' END AS AbarcaRango
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
LEFT JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
LEFT JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
WHERE hpa.Deleted IS NULL
-- ORDER BY de los resultados para análisis
ORDER BY hpa.Fecha] (hpa_Fecha,pb_FechaInicio,pb_FechaFin,FechaEnRango,FechaInicioEnRango,FechaFinEnRango,AbarcaRango) VALUES
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'2025-03-21 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-22 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-22 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-22 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-22 00:00:00',N'2025-03-22 00:00:00',N'2025-10-12 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-22 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-22 00:00:00',N'2025-03-22 00:00:00',N'2025-03-31 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-22 00:00:00',N'2025-03-22 00:00:00',N'2025-03-31 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-22 00:00:00',N'2025-03-22 00:00:00',N'2025-03-31 00:00:00',N'SI',N'SI',N'SI',N'NO');
INSERT INTO [DECLARE @FechaInicio DATETIME = '2025-03-19'
DECLARE @FechaFin DATETIME = '2025-04-30'

-- Ver las fechas que tenemos en cada registro para identificar el problema
SELECT 
    CONVERT(VARCHAR, hpa.Fecha, 120) AS hpa_Fecha,
    CONVERT(VARCHAR, pb.FechaInicio, 120) AS pb_FechaInicio,
    CONVERT(VARCHAR, pb.FechaFin, 120) AS pb_FechaFin,
    -- Verificar si cada registro cumple alguna de las condiciones
    CASE WHEN hpa.Fecha BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaEnRango,
    CASE WHEN pb.FechaInicio BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaInicioEnRango,
    CASE WHEN pb.FechaFin BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaFinEnRango,
    CASE WHEN pb.FechaInicio <= @FechaInicio AND pb.FechaFin >= @FechaFin THEN 'SI' ELSE 'NO' END AS AbarcaRango
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
LEFT JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
LEFT JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
WHERE hpa.Deleted IS NULL
-- ORDER BY de los resultados para análisis
ORDER BY hpa.Fecha] (hpa_Fecha,pb_FechaInicio,pb_FechaFin,FechaEnRango,FechaInicioEnRango,FechaFinEnRango,AbarcaRango) VALUES
	 (N'2025-03-22 00:00:00',N'2025-03-22 00:00:00',N'2025-03-31 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-22 00:00:00',N'2025-03-22 00:00:00',N'2025-03-31 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-22 00:00:00',N'2025-03-22 00:00:00',N'2025-03-31 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-22 00:00:00',N'2025-03-22 00:00:00',N'2025-09-02 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-23 00:00:00',N'2025-03-22 00:00:00',N'2025-09-02 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-23 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-23 00:00:00',N'2025-03-22 00:00:00',N'2025-10-12 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-23 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-23 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-23 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO');
INSERT INTO [DECLARE @FechaInicio DATETIME = '2025-03-19'
DECLARE @FechaFin DATETIME = '2025-04-30'

-- Ver las fechas que tenemos en cada registro para identificar el problema
SELECT 
    CONVERT(VARCHAR, hpa.Fecha, 120) AS hpa_Fecha,
    CONVERT(VARCHAR, pb.FechaInicio, 120) AS pb_FechaInicio,
    CONVERT(VARCHAR, pb.FechaFin, 120) AS pb_FechaFin,
    -- Verificar si cada registro cumple alguna de las condiciones
    CASE WHEN hpa.Fecha BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaEnRango,
    CASE WHEN pb.FechaInicio BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaInicioEnRango,
    CASE WHEN pb.FechaFin BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaFinEnRango,
    CASE WHEN pb.FechaInicio <= @FechaInicio AND pb.FechaFin >= @FechaFin THEN 'SI' ELSE 'NO' END AS AbarcaRango
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
LEFT JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
LEFT JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
WHERE hpa.Deleted IS NULL
-- ORDER BY de los resultados para análisis
ORDER BY hpa.Fecha] (hpa_Fecha,pb_FechaInicio,pb_FechaFin,FechaEnRango,FechaInicioEnRango,FechaFinEnRango,AbarcaRango) VALUES
	 (N'2025-03-24 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-24 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-24 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-24 00:00:00',N'2025-03-22 00:00:00',N'2025-10-12 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-24 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-24 00:00:00',N'2025-03-22 00:00:00',N'2025-09-02 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-25 00:00:00',N'2025-03-22 00:00:00',N'2025-09-02 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-25 00:00:00',N'2025-03-22 00:00:00',N'2025-10-12 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-25 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-25 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO');
INSERT INTO [DECLARE @FechaInicio DATETIME = '2025-03-19'
DECLARE @FechaFin DATETIME = '2025-04-30'

-- Ver las fechas que tenemos en cada registro para identificar el problema
SELECT 
    CONVERT(VARCHAR, hpa.Fecha, 120) AS hpa_Fecha,
    CONVERT(VARCHAR, pb.FechaInicio, 120) AS pb_FechaInicio,
    CONVERT(VARCHAR, pb.FechaFin, 120) AS pb_FechaFin,
    -- Verificar si cada registro cumple alguna de las condiciones
    CASE WHEN hpa.Fecha BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaEnRango,
    CASE WHEN pb.FechaInicio BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaInicioEnRango,
    CASE WHEN pb.FechaFin BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaFinEnRango,
    CASE WHEN pb.FechaInicio <= @FechaInicio AND pb.FechaFin >= @FechaFin THEN 'SI' ELSE 'NO' END AS AbarcaRango
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
LEFT JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
LEFT JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
WHERE hpa.Deleted IS NULL
-- ORDER BY de los resultados para análisis
ORDER BY hpa.Fecha] (hpa_Fecha,pb_FechaInicio,pb_FechaFin,FechaEnRango,FechaInicioEnRango,FechaFinEnRango,AbarcaRango) VALUES
	 (N'2025-03-25 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-25 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-26 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-26 00:00:00',N'2025-03-22 00:00:00',N'2025-10-12 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-26 00:00:00',N'2025-03-22 00:00:00',N'2025-09-02 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-26 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-26 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-26 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-27 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-27 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO');
INSERT INTO [DECLARE @FechaInicio DATETIME = '2025-03-19'
DECLARE @FechaFin DATETIME = '2025-04-30'

-- Ver las fechas que tenemos en cada registro para identificar el problema
SELECT 
    CONVERT(VARCHAR, hpa.Fecha, 120) AS hpa_Fecha,
    CONVERT(VARCHAR, pb.FechaInicio, 120) AS pb_FechaInicio,
    CONVERT(VARCHAR, pb.FechaFin, 120) AS pb_FechaFin,
    -- Verificar si cada registro cumple alguna de las condiciones
    CASE WHEN hpa.Fecha BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaEnRango,
    CASE WHEN pb.FechaInicio BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaInicioEnRango,
    CASE WHEN pb.FechaFin BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaFinEnRango,
    CASE WHEN pb.FechaInicio <= @FechaInicio AND pb.FechaFin >= @FechaFin THEN 'SI' ELSE 'NO' END AS AbarcaRango
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
LEFT JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
LEFT JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
WHERE hpa.Deleted IS NULL
-- ORDER BY de los resultados para análisis
ORDER BY hpa.Fecha] (hpa_Fecha,pb_FechaInicio,pb_FechaFin,FechaEnRango,FechaInicioEnRango,FechaFinEnRango,AbarcaRango) VALUES
	 (N'2025-03-27 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-27 00:00:00',N'2025-03-22 00:00:00',N'2025-10-12 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'SI',N'SI',N'SI',N'NO');
INSERT INTO [DECLARE @FechaInicio DATETIME = '2025-03-19'
DECLARE @FechaFin DATETIME = '2025-04-30'

-- Ver las fechas que tenemos en cada registro para identificar el problema
SELECT 
    CONVERT(VARCHAR, hpa.Fecha, 120) AS hpa_Fecha,
    CONVERT(VARCHAR, pb.FechaInicio, 120) AS pb_FechaInicio,
    CONVERT(VARCHAR, pb.FechaFin, 120) AS pb_FechaFin,
    -- Verificar si cada registro cumple alguna de las condiciones
    CASE WHEN hpa.Fecha BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaEnRango,
    CASE WHEN pb.FechaInicio BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaInicioEnRango,
    CASE WHEN pb.FechaFin BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaFinEnRango,
    CASE WHEN pb.FechaInicio <= @FechaInicio AND pb.FechaFin >= @FechaFin THEN 'SI' ELSE 'NO' END AS AbarcaRango
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
LEFT JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
LEFT JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
WHERE hpa.Deleted IS NULL
-- ORDER BY de los resultados para análisis
ORDER BY hpa.Fecha] (hpa_Fecha,pb_FechaInicio,pb_FechaFin,FechaEnRango,FechaInicioEnRango,FechaFinEnRango,AbarcaRango) VALUES
	 (N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'2025-03-27 00:00:00',N'SI',N'SI',N'SI',N'NO'),
	 (N'2025-03-27 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-28 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-28 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-28 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-28 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-29 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-29 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-29 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-29 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO');
INSERT INTO [DECLARE @FechaInicio DATETIME = '2025-03-19'
DECLARE @FechaFin DATETIME = '2025-04-30'

-- Ver las fechas que tenemos en cada registro para identificar el problema
SELECT 
    CONVERT(VARCHAR, hpa.Fecha, 120) AS hpa_Fecha,
    CONVERT(VARCHAR, pb.FechaInicio, 120) AS pb_FechaInicio,
    CONVERT(VARCHAR, pb.FechaFin, 120) AS pb_FechaFin,
    -- Verificar si cada registro cumple alguna de las condiciones
    CASE WHEN hpa.Fecha BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaEnRango,
    CASE WHEN pb.FechaInicio BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaInicioEnRango,
    CASE WHEN pb.FechaFin BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaFinEnRango,
    CASE WHEN pb.FechaInicio <= @FechaInicio AND pb.FechaFin >= @FechaFin THEN 'SI' ELSE 'NO' END AS AbarcaRango
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
LEFT JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
LEFT JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
WHERE hpa.Deleted IS NULL
-- ORDER BY de los resultados para análisis
ORDER BY hpa.Fecha] (hpa_Fecha,pb_FechaInicio,pb_FechaFin,FechaEnRango,FechaInicioEnRango,FechaFinEnRango,AbarcaRango) VALUES
	 (N'2025-03-29 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-29 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-29 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-29 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-30 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-30 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-30 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-30 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-31 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-31 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO');
INSERT INTO [DECLARE @FechaInicio DATETIME = '2025-03-19'
DECLARE @FechaFin DATETIME = '2025-04-30'

-- Ver las fechas que tenemos en cada registro para identificar el problema
SELECT 
    CONVERT(VARCHAR, hpa.Fecha, 120) AS hpa_Fecha,
    CONVERT(VARCHAR, pb.FechaInicio, 120) AS pb_FechaInicio,
    CONVERT(VARCHAR, pb.FechaFin, 120) AS pb_FechaFin,
    -- Verificar si cada registro cumple alguna de las condiciones
    CASE WHEN hpa.Fecha BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaEnRango,
    CASE WHEN pb.FechaInicio BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaInicioEnRango,
    CASE WHEN pb.FechaFin BETWEEN @FechaInicio AND @FechaFin THEN 'SI' ELSE 'NO' END AS FechaFinEnRango,
    CASE WHEN pb.FechaInicio <= @FechaInicio AND pb.FechaFin >= @FechaFin THEN 'SI' ELSE 'NO' END AS AbarcaRango
FROM entrenamiento.HorasPlanificadasyAvanzadas hpa 
LEFT JOIN entrenamiento.ProgramacionPersonaCursos ppc ON hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
LEFT JOIN entrenamiento.ProgramacionPersonas pp ON ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
LEFT JOIN entrenamiento.PlanBases pb ON pp.ProgramaId = pb.PlanId
WHERE hpa.Deleted IS NULL
-- ORDER BY de los resultados para análisis
ORDER BY hpa.Fecha] (hpa_Fecha,pb_FechaInicio,pb_FechaFin,FechaEnRango,FechaInicioEnRango,FechaFinEnRango,AbarcaRango) VALUES
	 (N'2025-03-31 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO'),
	 (N'2025-03-31 00:00:00',N'2025-03-22 00:00:00',N'2025-11-05 00:00:00',N'SI',N'SI',N'NO',N'NO');
