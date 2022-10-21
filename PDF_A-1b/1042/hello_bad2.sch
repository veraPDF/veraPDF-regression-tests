<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1042 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1042 -->
    <!-- File: hello_bad2.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '5')">Failed check, Expected: 5</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.1.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '8') or
            (@clause = '6.7.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.1.2' and @testNumber = '2' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.3-1, 1 check, or 
            6.7.2-1, 1 check, or 
            6.2.3.3-3, 8 checks, or
            6.7.3-1, 1 check, or 
            6.1.2-2, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>name = "Checking the logs"
        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '2'">Failed check, Expected: 2</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(/, "Incorrect bfrange in toUnicode CMap: bfrange contains more than 256 code.") and @occurrences = "2" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Incorrect bfrange in toUnicode CMap: bfrange contains more than 256 code.' with 2 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
