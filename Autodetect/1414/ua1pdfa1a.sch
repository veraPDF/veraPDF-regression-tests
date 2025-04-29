<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1414 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1414 -->
    <!-- File: ua1pdfa1a.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '6')">Failed check, Expected: 6</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.1.4' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '16') or 
            (@clause = '6.4' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '7' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '8' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.4-3, 1 check, or 
            6.2.3.3-1, 16 checks, or 
            6.4-3, 1 check, or 
            6.7.3-1, 1 check, or 
            6.7.3-7, 1 check, or 
            6.7.3-8, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '1'">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "PDF version ISO_32000_1_7 of detected flavour ua1 is incompatible with the PDF version PDF_REFERENCE_1_4 of other detected flavour 1a. The validation of flavour ua1 is skipped") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: PDF version ISO_32000_1_7 of detected flavour ua1 is incompatible with the PDF version PDF_REFERENCE_1_4 of other detected flavour 1a. The validation of flavour ua1 is skipped' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
