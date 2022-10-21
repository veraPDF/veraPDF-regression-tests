<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 968 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/968 -->
    <!-- File: pdftestbad.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '3')">Failed check, Expected: 3</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.7.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '4') or
            (@clause = '6.1.3' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.7.2-1, 1 check, or 
            6.2.3.3-3, 4 checks, or
            6.1.3-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>name = "Checking the logs"
        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '1'">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(/, "Incorrect end of line in cross-reference table.") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Incorrect end of line in cross-reference table.' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
