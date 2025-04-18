# 보호소에서 중성화한 동물

SELECT ins.animal_id, ins.animal_type, ins.name
FROM animal_ins AS ins
JOIN animal_outs AS outs 
ON ins.animal_id = outs.animal_id
WHERE ins.sex_upon_intake LIKE "Intact%"
AND (outs.sex_upon_outcome LIKE "Neutered%" OR outs.sex_upon_outcome LIKE "Spayed%")
ORDER BY ins.animal_id;