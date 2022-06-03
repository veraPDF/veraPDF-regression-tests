<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 887 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/887 -->
    <!-- File: 6.1.3-01-pass-2.pdf -->

    <sch:pattern>name = "Checking the validationReport: profile"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'true')">Failed check, Expected: isCompliant=true</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the logs"
        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '4'">Failed check, Expected: 4</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(/, "Value of ID key is not a string. Ignoring ID") and @occurrences = "4" and @level = "SEVERE")'>Invalid logs, Expected: 
            'SEVERE: Value of ID key is not a string. Ignoring ID' with 4 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
