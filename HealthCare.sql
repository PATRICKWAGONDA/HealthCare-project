SELECT TOP (1000) [Name]
      ,[Age]
      ,[Age groups]
      ,[Gender]
      ,[Blood Type]
      ,[Medical Condition]
      ,[Date of Admission]
      ,[Doctor]
      ,[Hospital]
      ,[Insurance Provider]
      ,[Billing Amount]
      ,[Room Number]
      ,[Admission Type]
      ,[Discharge Date]
      ,[Medication]
      ,[Test Results]
  FROM [Health_Care].[dbo].['Health_Care']

  
  select *
from ['Health_Care']

-----finding the total number of patients
select count(*) as Patient_Total
from ['Health_Care']

-----Average Age Of Patients
select AVG(Age) as Average_Age_Of_Patients
from ['Health_Care']

-------Gender Based Analysis
------Number of patients by gender 
select gender,count(*) as Male_patient_count
from ['Health_Care']
where Gender = 'Male'
group by Gender

-----Female Patients
select gender,count(*) as Female_Patient_Count
from ['Health_Care']
where Gender = 'Female'
group by Gender

------Average Age of Patients by Gender
select Gender,AVG(age) as Average_Age
from ['Health_Care']
group by Gender

--------medical condition analysis
----------Most common condtions
select [Medical Condition],COUNT(*) AS ConditionCount
from ['Health_Care'] 
group by [Medical Condition] 
order by [Medical Condition] desc

-----medical condition by gender
-----Male
select [Medical Condition],count(*) as Male_condition_count
from ['Health_Care']
where gender = 'Male'
group by [Medical Condition]
order by [Medical Condition] desc

-----Female
select [Medical Condition],count(*)
from ['Health_Care']
where gender ='female'
group by [Medical Condition]
order by [Medical Condition] desc


------what diseases are affecting the different age groups of different genders 
select [Age groups],
[Medical Condition],
COUNT(*) as condition_count
from ['Health_Care']
group by
[Age groups],
[Medical Condition]
order by condition_count


------males
select [Age groups],Gender,[Medical Condition],count(*) as condition_count
from ['Health_Care']
where Gender='Male'
group by [Age groups],[Medical Condition],gender 
order by condition_count desc

-----females
-----males
select [Age groups],Gender,[Medical Condition],count(*) as condition_count
from ['Health_Care']
where Gender='Female'
group by [Age groups],[Medical Condition],gender 
order by condition_count desc


-----finding the total number of patients
select count(*) as Patient_Total
from ['Health_Care']

-----Average Age Of Patients
select AVG(Age) as Average_Age_Of_Patients
from ['Health_Care']

-------Gender Based Analysis
------Number of patients by gender 
select gender,count(*) as Male_patient_count
from ['Health_Care']
where Gender = 'Male'
group by Gender

-----Female Patients
select gender,count(*) as Female_Patient_Count
from ['Health_Care']
where Gender = 'Female'
group by Gender

------Average Age of Patients by Gender
select Gender,AVG(age) as Average_Age
from ['Health_Care']
group by Gender

--------medical condition analysis
----------Most common condtions
select [Medical Condition],COUNT(*) AS ConditionCount
from ['Health_Care'] 
group by [Medical Condition] 
order by [Medical Condition] desc

-----medical condition by gender
-----Male
select [Medical Condition],count(*) as Male_condition_count
from ['Health_Care']
where gender = 'Male'
group by [Medical Condition]
order by [Medical Condition] desc

-----Female
select [Medical Condition],count(*)
from ['Health_Care']
where gender ='female'
group by [Medical Condition]
order by [Medical Condition] desc


------what diseases are affecting the different age groups of different genders 
select [Age groups],
[Medical Condition],
COUNT(*) as condition_count
from ['Health_Care']
group by
[Age groups],
[Medical Condition]
order by condition_count


------males
select [Age groups],Gender,[Medical Condition],count(*) as condition_count
from ['Health_Care']
where Gender='Male'
group by [Age groups],[Medical Condition],gender 
order by condition_count desc

-----females
-----males
select [Age groups],Gender,[Medical Condition],count(*) as condition_count
from ['Health_Care']
where Gender='Female'
group by [Age groups],[Medical Condition],gender 
order by condition_count desc

----breaking down the medical conditions
select [Age groups],Gender,count([Medical Condition]) as count_of_medical_condition
from ['Health_Care']
group by [Age groups],Gender
order by count_of_medical_condition

------Obesity
select [Age groups],Gender,count([Medical Condition]) as count_of_obesity
from ['Health_Care']
where [Medical Condition]='obesity'
group by [Age groups],gender
order by count_of_obesity


-------Hypertension
select [Age groups],Gender,count([Medical Condition]) as count_of_hypertension
from ['Health_Care']
where [Medical Condition]='hypertension'
group by [Age groups],Gender
order by count_of_hypertension

-----diabestes
select [Age groups],Gender,count([Medical Condition]) as count_of_diabetes
from ['Health_Care']
where [Medical Condition]='diabetes'
group by [Age groups],Gender
order by count_of_diabetes

------cancer
select [Age groups],Gender,count([Medical Condition]) as count_of_cancer
from ['Health_Care']
where [Medical Condition]='cancer'
group by [Age groups],Gender
order by count_of_cancer

--------asthma
select [Age groups],Gender,count([Medical Condition]) as count_of_asthma
from ['Health_Care']
where [Medical Condition]='asthma'
group by [Age groups],Gender
order by count_of_asthma

------Arthritis
select [Age groups],Gender,count([Medical Condition]) as count_of_arthritis
from ['Health_Care']
where [Medical Condition]='arthritis'
group by [Age groups],Gender
order by count_of_arthritis


---------Hospital and doctor analysis
select Hospital,count(*)as Patient_count
from ['Health_Care']
group by Hospital
order by Patient_count desc

----number of patients treated by each doctor
select doctor,count(*) as patient_count
from ['Health_Care']
group by Doctor
order by patient_count desc


-------Financial Analysis
---total billing amount by insurance provider
select [Insurance Provider],sum([Billing Amount]) as Total_billing
from ['Health_Care']
group by [Insurance Provider]
order by Total_billing desc


-------average billing amount per patient
select avg([Billing Amount]) as Average_Billing
from ['Health_Care']



------Admission and discharge analysis
select [Admission Type],count(*) as admissioncount
from ['Health_Care']
group by [Admission Type]
order by admissioncount


--------breaking down the admission
select  [Age groups], Gender,[Admission Type],count(*) as admissioncount
from ['Health_Care']
group by [Age groups],Gender,[Admission Type]
order by admissioncount

-----medical condition 
select [Medical Condition] ,[Admission Type],count(*) as admissioncount
from ['Health_Care']
group by [Medical Condition],[Admission Type]
order by admissioncount

------Average length of stay in days
select avg(datediff(day,[Discharge Date], [Date of Admission])) as Avg_stay
from ['Health_Care']
order by Avg_stay

-----Meditation and Post result analysis
select Medication,COUNT(*) as Medication_count
from ['Health_Care']
group by Medication
order by Medication_count desc


-----Distribution of test result 
select [Test Results],COUNT(*) as ResultCount
from ['Health_Care']
group by [Test Results]
order by ResultCount