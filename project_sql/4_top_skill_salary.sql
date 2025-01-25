SELECT skills,
    ROUND(AVG(salary_year_avg), 2) as salary_avg_skills -- Redondear a 2 decimales
FROM job_postings_fact
    INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
    INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE salary_year_avg IS NOT NULL
    AND job_title_short = 'Data Analyst'
    AND job_work_from_home = True
GROUP BY skills
ORDER BY salary_avg_skills DESC
LIMIT 25;
/*Top 5 habilidades mejor pagadas:
 PySpark:
 
 Salario promedio: $208,172.25
 
 Análisis: PySpark es una habilidad altamente valorada en el ámbito del Big Data y el procesamiento distribuido. Su alto salario refleja la demanda de profesionales que puedan trabajar con grandes volúmenes de datos.
 
 Bitbucket:
 
 Salario promedio: $189,154.50
 
 Análisis: Bitbucket es una herramienta de control de versiones y colaboración en equipo. Su alto salario sugiere que las empresas valoran a los profesionales que pueden gestionar eficientemente el código y la colaboración en proyectos.
 
 Couchbase:
 
 Salario promedio: $160,515.00
 
 Análisis: Couchbase es una base de datos NoSQL utilizada para aplicaciones de alto rendimiento. Su presencia en esta lista indica que las habilidades en bases de datos NoSQL son muy bien remuneradas.
 
 Watson:
 
 Salario promedio: $160,515.00
 
 Análisis: Watson es una plataforma de inteligencia artificial de IBM. Su alto salario refleja la creciente demanda de habilidades en IA y machine learning.
 
 DataRobot:
 
 Salario promedio: $155,485.50
 
 Análisis: DataRobot es una plataforma de automatización de machine learning. Su presencia en esta lista confirma la importancia de las habilidades en automatización y machine learning.
 
 Otras habilidades destacadas:
 GitLab ($154,500.00): Herramienta de gestión de repositorios y CI/CD.
 
 Swift ($153,750.00): Lenguaje de programación para desarrollo de aplicaciones iOS.
 
 Jupyter ($152,776.50): Herramienta popular para análisis de datos y visualización.
 
 Pandas ($151,821.33): Biblioteca de Python para manipulación de datos.
 
 Elasticsearch ($145,000.00): Motor de búsqueda y análisis de datos./*