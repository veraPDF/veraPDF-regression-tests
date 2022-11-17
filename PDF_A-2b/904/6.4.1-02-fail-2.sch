<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 904 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/904 -->
    <!-- File: 6.4.1-02-fail-2.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '1')">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.4.1' and @testNumber = '3' and @failedChecks = '1')">Failed rules, Expected: 
            6.4.1-3, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>name = "Checking the logs"
        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '1'">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Value of NeedAppearances key is not a boolean. Ignoring NeedAppearances") and @occurrences = "1" and @level = "SEVERE")'>Invalid logs, Expected:
            'SEVERE: Value of NeedAppearances key is not a boolean. Ignoring NeedAppearances' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
