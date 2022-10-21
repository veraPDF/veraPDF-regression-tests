<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 737 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/737 -->
    <!-- File: thesis.test.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '13')">Failed check, Expected: 13</sch:assert>	
        </sch:rule>
		
		<sch:pattern>name = "Checking the batchSummary"
        <sch:rule context="/report/batchSummary">
            <sch:assert test="(@totalJobs = '1' and @failedToParse = '0' and @encrypted = '0' and @outOfMemory = '0' and @veraExceptions = '0')">
                Failed check, Expected: totalJobs = '1' failedToParse = '0' encrypted = '0' outOfMemory = '0' veraExceptions = '0'
            </sch:assert>
        </sch:rule>
    </sch:pattern>
		

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.2.4' and @testNumber = '3' and @failedChecks = '1') or 
			(@clause = '6.7.3' and @testNumber = '1' and @failedChecks = '1') or 
			(@clause = '6.4' and @testNumber = '6' and @failedChecks = '10') or 
			(@clause = '6.4' and @testNumber = '3' and @failedChecks = '642') or 
			(@clause = '6.5.3' and @testNumber = '3' and @failedChecks = '470') or 
			(@clause = '6.4' and @testNumber = '2' and @failedChecks = '34') or 
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '567') or
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '25144') or
            (@clause = '6.7.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.4' and @testNumber = '5' and @failedChecks = '1') or 
            (@clause = '6.3.3.2' and @testNumber = '1' and @failedChecks = '2') or
			(@clause = '6.5.3' and @testNumber = '2' and @failedChecks = '470') or 
            (@clause = '6.3.5' and @testNumber = '3' and @failedChecks = '2')">Failed rules, Expected: 
            6.2.4-3, 1 check, or
            6.7.3-1, 1 check, or
            6.4-6, 10 check, or
            6.4-3, 642 checks, or
            6.5.3-3, 470 checks, or
            6.4-2, 34 checks, or
            6.2.3.3-1, 567 checks, or
			6.2.3.3-3, 25144 checks, or
            6.7.2-1, 1 check, or
			6.4-5, 1 check, or
			6.3.3.2-1, 2 checks, or
			6.5.3-2, 470 checks, or
            6.3.5-3, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>name = "Checking for the absence of logs"
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
