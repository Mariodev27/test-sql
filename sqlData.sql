DECLARE @FechaInicio  DATETIME = '2025/03/19'
DECLARE @FechaFin DATETIME = '2025/04/30'

select CONCAT(p.ApellidoPaterno, ' ', p.ApellidoMaterno, ' ', p.PrimerNombre, ' ', P.SegundoNombre) Operador,
m.Nombre EntrenamientoEquipo, p.Guardia, p.NroDOI DNI, p.Celular, null procedencia, NULL Superintendencia,
pb.FechaInicio FechaInicio, 
pb.FechaFin FechaFin, p2.Nombre Proceso, pbt.Nombre Programa, NULL Licencia, NULL Estado,
ct.Nombre TipoCur, c.Nombre curso, hpa.Fecha, hpa.HorasPlanificadas, HorasAvanzadas,
u.Nombre UserRegistra
from entrenamiento.HorasPlanificadasyAvanzadas hpa 
join usr.Usuarios u on hpa.UsuarioRegistraId = u.UsuarioId
join entrenamiento.ProgramacionPersonaCursos ppc on hpa.ProgramacionPersonaCursoId = ppc.ProgramacionPersonaCursoId
join entrenamiento.ProgramacionPersonas pp on  ppc.ProgramacionPersonaId = pp.ProgramacionPersonaId
join per.FichasRegistro fr on pp.FichaRegistroId = fr.FichaRegistroId
join per.Personas p on fr.PersonaId = p.PersonaId
join cap.Cursos c on ppc.CursoId = c.CursoId 
join cap.CursoTipos ct on c.CursoTipoId = ct.CapacitacionCursoTipoId 
left join veh.Modelo m on pp.ModeloId = m.ModeloId
join entrenamiento.Procesos p2 on pp.ProcesoId = p2.ProcesoId
left join entrenamiento.PlanBases pb on pp.ProgramaId = pb.PlanId
join entrenamiento.PlanBaseTipos pbt on pb.PlanBaseTipoId = pbt.TipoId 
where hpa.Deleted is null
AND hpa.Fecha BETWEEN @FechaInicio and @FechaFin
