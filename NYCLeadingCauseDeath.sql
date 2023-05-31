

  ----Lets clean the data by making all F in sex column be Female And M to Male as well 
  
  
----  UPDATE dbo.NYCDeath
----SET sex='Female'
----WHERE sex= 'F'

----UPDATE dbo.NYCDeath
----SET sex='Male'
----WHERE sex= 'M'

----Now lets rmeove the data in the column that are in the () in the leading cause column 
----UPDATE dbo.NYCDeath
----SET Leading_Cause = TRIM(REPLACE(REPLACE(REGEXP_REPLACE(Leading_Cause, '\\(.*\\)', ''), '(', ''), ')', ''))
----WHERE Leading_Cause LIKE '%(%' AND Leading_Cause LIKE '%)%'

--Now lets Analyze this data 

----Now lets find the leading cause of cause of death 

---- Select   Sum(deaths)as Top_LeadingCause , Leading_Cause ,Year
----From dbo.NYCDeath
----Group by Leading_Cause,Year
----Order by Total_Deaths Desc


----Now lets find the total deaths 

---- Select sum(Deaths) as Total_Deaths , Year
---- From dbo.NYCDeath
---- Group by Year

----Now lets find the total Death for each Race/Ethnicity

----Select sum(Deaths) as TotalDeath_Race,Race_Ethnicity,YEAR
----From dbo.NYCDeath
----Group by Race_Ethnicity,Year
----Order by TotalDeath_Race desc


----Now lets find  the total deaths per gender

----Select sum(Deaths) as TotalDeaths_Gender , Sex,Year
----From dbo.NYCDeath
----Group by Sex,Year
----Order by TotalDeaths_Gender














