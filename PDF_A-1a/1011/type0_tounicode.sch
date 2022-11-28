<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1011 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1011 -->
    <!-- File: type0_tounicode.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '1')">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.3.8' and @testNumber = '1' and @failedChecks = '28')">Failed rules, Expected: 
            6.3.8-1, 28 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>
        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '1'">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Incorrect bfrange in toUnicode CMap: bfrange contains more than 256 code.") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected:
            'WARNING: Incorrect bfrange in toUnicode CMap: bfrange contains more than 256 code.' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
