SELECT * FROM Bank_Loan
--SELECT COUNT(id) AS Total_number_of_Loan_Application FROM Bank_Loan
--SELECT COUNT(id) AS Total_MTD_number_of_Loan_Application FROM Bank_Loan Where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021
--SELECT COUNT(id) AS Total_PMTD_number_of_Loan_Application FROM Bank_Loan Where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021
--SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM Bank_Loan WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

--SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM Bank_Loan WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
--SELECT SUM(total_payment) AS PMTD_Total_Payment_Received FROM Bank_Loan WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
--SELECT Round(AVG(int_rate),4)*100 AS PMTD_Avg_Interest_Rate FROM Bank_Loan WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
--SELECT ROUND(AVG(dti),4)*100 AS PMTD_Avg_DTI FROM Bank_Loan WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
--ELECT distinct(loan_status) FROM Bank_Loan
--SELECT
--	(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100.0)
--	/
--COUNT(id) AS Good_Loan_Percentage
--FROM Bank_Loan
--SELECT COUNT(id) AS Total_Number_of_Good_Loan FROM Bank_Loan WHERE loan_status = 'Fully Paid' OR loan_status ='Current'
--SELECT SUM(loan_amount) AS Total_Amount_Funded_for_Good_Loan FROM Bank_Loan WHERE loan_status ='Fully Paid' OR loan_status = 'Current'
--SELECT SUM(total_payment) AS Total_Amount_Received_from_Good_Loan FROM Bank_Loan WHERE loan_status ='Fully Paid' OR loan_status = 'Current'
--SELECT
--	(COUNT(CASE WHEN loan_status ='Charged Off' THEN id END)*100.0)
--	/
--	COUNT(id) AS Bad_Loan_Percentage
--FROM Bank_Loan
--SELECT COUNT(id) AS Total_Number_of_Bad_Loan FROM Bank_Loan WHERE loan_status = 'Charged off'
--SELECT SUM(loan_amount) As Total_Amount_Funded_for_Bad_Loan FROM Bank_Loan WHERE loan_status = 'Charged Off'
--SELECT SUM(total_payment) As Total_Amount_Recovered_from_Bad_Loan FROM Bank_Loan WHERE loan_status = 'Charged Off'
--SELECT
--		loan_status,
--		COUNT(id) AS Total_Number_of_Loans,
--		SUM(loan_amount) AS Total_Funded_Amount,
--		SUM(total_payment) AS Total_Amount_Recovered,
--		ROUND(AVG(int_rate*100),2) AS Avg_Rate_of_Interest,
--	ROUND(AVG(dti*100),2) As Avg_DTI
--FROM Bank_Loan
--GROUP BY loan_status
--SELECT
--		loan_status,
--		SUM(loan_amount) AS MTD_Funded_Amount,
----		SUM(total_payment) AS MTD_Recovered_Amount
--FROM Bank_Loan
--WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021
--GROUP BY loan_status
--SELECT
--		MONTH(issue_date) AS Month_Number,
--		DATENAME(MONTH, issue_date) AS Month_Name,
--		COUNT(id) AS Total_Number_of_Loan,
--		SUM(loan_amount) AS Total_Funded_Amount,
--		SUM(total_payment) As Total_Recovered_Amount
--FROM Bank_Loan
--GROUP BY MONTH(issue_date) , DATENAME(MONTH, issue_date)
--ORDER BY MONTH(issue_date) 
--SELECT
--		address_state,
--		COUNT(id) AS Total_Number_of_Loan,
--		SUM(loan_amount) AS Total_Funded_Amount,
--		SUM(total_payment) As Total_Recovered_Amount
--FROM Bank_Loan
--GROUP BY address_state
--ORDER BY address_state
--SELECT
--		term AS Term,
--		COUNT(id) AS Total_Number_of_Loan,
--		SUM(loan_amount) AS Total_Funded_Amount,
--		SUM(total_payment) As Total_Recovered_Amount
--FROM Bank_Loan
--GROUP BY term
--ORDER BY term
--SELECT
--		emp_length AS Service_Length,
--		COUNT(id) AS Total_Number_of_Loan,
--		SUM(loan_amount) AS Total_Funded_Amount,
--		SUM(total_payment) As Total_Recovered_Amount
--FROM Bank_Loan
--GROUP BY emp_length
--ORDER BY emp_length
--SELECT
--		purpose AS Purpose_of_Loan,
--		COUNT(id) AS Total_Number_of_Loan,
--		SUM(loan_amount) AS Total_Funded_Amount,
--		SUM(total_payment) As Total_Recovered_Amount
--FROM Bank_Loan
--GROUP BY purpose
--ORDER BY purpose
SELECT
		home_ownership AS Type_of_Home_Ownership,
		COUNT(id) AS Total_Number_of_Loan,
		SUM(loan_amount) AS Total_Funded_Amount,
		SUM(total_payment) As Total_Recovered_Amount
FROM Bank_Loan
GROUP BY home_ownership
ORDER BY home_ownership