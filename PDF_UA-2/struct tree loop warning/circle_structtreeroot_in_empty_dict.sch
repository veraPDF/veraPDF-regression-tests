<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# Warning for struct tree loop -->
    <!-- https://github.com/veraPDF/veraPDF-validation/pull/635 -->
    <!-- File: circle_structtreeroot_in_empty_dict.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '11')">Failed check, Expected: 11</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '8.2.2' and @testNumber = '1' and @failedChecks = '14') or 
            (@clause = '8.2.4' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '8.2.5.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '8.8' and @testNumber = '1' and @failedChecks = '1') or
            (@specification = 'ISO 32005:2023')">Failed rules, Expected: 
            8.2.2-1, 14 checks, or 
            8.2.4-1, 1 check, or 
            8.2.5.2-1, 1 check, or 
            8.8-1, 1 check, or
            ISO 32005:2023</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '6'">Failed check, Expected: 42</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Struct tree loop found") and @occurrences = "6" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Struct tree loop found' with 6 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
