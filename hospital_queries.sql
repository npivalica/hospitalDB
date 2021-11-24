-- create list of doctors with more than one appointment.
SELECT doctor.name, doctor.surname, COUNT(*) as "Doctors with more than one appointment" 
FROM doctor
INNER JOIN visit 
ON doctor.doctor_ID = visit.doctor_ID
GROUP BY doctor.doctor_ID
HAVING COUNT(*) > 1;

SELECT p.patient_ID, p.name, p.surname, COUNT(*) as "Patients with most visits"
FROM patient p INNER JOIN visit v
ON p.patient_ID = v.patient_ID
GROUP BY p.patient_ID
HAVING COUNT(*) > 0
ORDER BY COUNT(*) DESC
LIMIT 1;
