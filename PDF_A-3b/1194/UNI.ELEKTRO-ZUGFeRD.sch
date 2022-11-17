<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1194 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1194 -->
    <!-- File: UNI.ELEKTRO-ZUGFeRD.pdf -->

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
            <sch:assert test='(contains(., "Error in parsing private data in Type 1 font: incorrect amount of charstings specified.") and @occurrences = "4" and @level = "WARNING")'>Invalid logs, Expected:
            'WARNING: Error in parsing private data in Type 1 font: incorrect amount of charstings specified.' with 4 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
