SELECT ID,
       CASE NTILE(4) OVER (ORDER BY SIZE_OF_COLONY) 
            WHEN 4 THEN 'CRITICAL'
            WHEN 3 THEN 'HIGH'
            WHEN 2 THEN 'MEDIUM'
            ELSE 'LOW'
       END AS COLONY_NAME
FROM ECOLI_DATA
ORDER BY ID