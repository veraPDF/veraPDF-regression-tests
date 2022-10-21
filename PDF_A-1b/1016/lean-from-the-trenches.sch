<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1042 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1042 -->
    <!-- File: lean-from-the-trenches.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '15')">Failed check, Expected: 15</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '7772') or
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '5154') or
			(@clause = '6.3.7' and @testNumber = '3' and @failedChecks = '165') or 
			(@clause = '6.5.3' and @testNumber = '2' and @failedChecks = '1254') or 
			(@clause = '6.7.3' and @testNumber = '1' and @failedChecks = '1') or 
			(@clause = '6.1.12' and @testNumber = '2' and @failedChecks = '164') or 
			(@clause = '6.5.3' and @testNumber = '3' and @failedChecks = '1089') or 
			(@clause = '6.7.9' and @testNumber = '2' and @failedChecks = '3') or 
			(@clause = '6.4' and @testNumber = '2' and @failedChecks = '500') or 
			(@clause = '6.4' and @testNumber = '5' and @failedChecks = '76') or 
			(@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '4') or 
			(@clause = '6.7.11' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.2.4' and @testNumber = '3' and @failedChecks = '501') or 
            (@clause = '6.4' and @testNumber = '6' and @failedChecks = '76') or 
            (@clause = '6.4' and @testNumber = '3' and @failedChecks = '5')">Failed rules, Expected: 
            6.2.3.3-3, 7772 checks, or
			6.2.3.3-1, 5154 checks, or
			6.3.7-3, 165 checks, or
			6.5.3-2, 1254 checks, or
			6.7.3-1, 1 checks, or
			6.1.12-2, 164 checks, or
			6.5.3-3, 1089 checks, or
			6.7.9-2, 3 checks, or
			6.4-2, 500 checks, or
			6.4-5, 76 checks, or
			6.3.4-1, 4 checks, or
			6.7.11-1, 1 checks, or
			6.2.4-3, 501 checks, or
			6.4-6, 76 checks, or
			6.4-3, 5 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>name = "Checking for the absence of logs"
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
