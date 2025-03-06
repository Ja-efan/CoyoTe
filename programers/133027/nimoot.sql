SELECT HALF.FLAVOR
FROM FIRST_HALF AS HALF
LEFT JOIN (
    SELECT FLAVOR, SUM(TOTAL_ORDER) AS TOTAL
    FROM JULY
    GROUP BY FLAVOR
) SUB_JULY ON HALF.FLAVOR = SUB_JULY.FLAVOR
GROUP BY HALF.FLAVOR
ORDER BY (SUM(HALF.TOTAL_ORDER) + IFNULL(SUB_JULY.TOTAL, 0)) DESC
LIMIT 3;