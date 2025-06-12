
ALTER TABLE patients ADD PRIMARY KEY (patient_id);
ALTER TABLE doctors ADD PRIMARY KEY (doctor_id);
ALTER TABLE admissions ADD FOREIGN KEY (patient_id) REFERENCES patients(patient_id);
ALTER TABLE admissions ADD admission_doctor_id INT;
ALTER TABLE admissions ADD FOREIGN KEY (admission_doctor_id) REFERENCES doctors(doctor_id);
ALTER TABLE patients ALTER COLUMN city SET DATA TYPE VARCHAR;
