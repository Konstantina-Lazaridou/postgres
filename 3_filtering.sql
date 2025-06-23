-- Sorting results

-- Get all submissions in 2025 starting from the most recent discharged patient
SELECT * FROM admissions WHERE admission_date>'2025-01-01' ORDER BY discharge_date DESC;

-- Get sorted list of lengths of hospital stay
SELECT discharge_date-admission_date as d FROM patients p JOIN admissions a ON a.patient_id = p.patient_id ORDER BY d;
