/*
 Find the count of the number of remote job postings per skill
 - Display the top 5 skills by their demand in remote jobs
 - Include skill ID, name, and count of postings requiring the skill
 */
SELECT skills as name_skill,
    count(*) as count_skill_posting
FROM job_postings_fact
    INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
    INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE job_title_short = 'Data Analyst'
    AND job_work_from_home = True
GROUP BY skills
ORDER BY count_skill_posting DESC
LIMIT 5;
/*Top 5 habilidades más demandadas:
 SQL:
 
 Frecuencia: 7,291 ofertas de trabajo.
 
 Análisis: SQL es la habilidad más demandada por un margen significativo. Esto confirma que es una habilidad fundamental para cualquier Data Analyst, ya que se utiliza para consultar y manipular bases de datos.
 
 Excel:
 
 Frecuencia: 4,611 ofertas de trabajo.
 
 Análisis: A pesar de ser una herramienta básica, Excel sigue siendo muy relevante en el análisis de datos. Su presencia en esta lista indica que muchas empresas aún dependen de Excel para tareas de análisis y reporting.
 
 Python:
 
 Frecuencia: 4,330 ofertas de trabajo.
 
 Análisis: Python es una de las habilidades más importantes para Data Analysts, especialmente para tareas de análisis avanzado, automatización y machine learning. Su alta frecuencia refleja la creciente demanda de habilidades en programación.
 
 Tableau:
 
 Frecuencia: 3,745 ofertas de trabajo.
 
 Análisis: Tableau es una de las herramientas de visualización de datos más populares. Su presencia en esta lista indica que las empresas valoran a los profesionales que pueden transformar datos en insights visuales.
 
 Power BI:
 
 Frecuencia: 2,609 ofertas de trabajo.
 
 Análisis: Power BI es otra herramienta de visualización de datos muy utilizada, especialmente en entornos empresariales. Su frecuencia, aunque menor que Tableau, sigue siendo significativa.*/