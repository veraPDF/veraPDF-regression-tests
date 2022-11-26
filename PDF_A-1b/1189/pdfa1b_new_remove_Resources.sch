<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1189 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1189 -->
    <!-- File: pdfa1b_new_remove_Resources.pdf -->

    <sch:pattern name = "Checking the validationReport: profile">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'true')">Failed check, Expected: isCompliant=true</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '4'">Failed check, Expected: 4</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Undefined font /F2 in a content stream") and @occurrences = "1" and @level = "SEVERE") or 
            (contains(., "Undefined color space /DeviceGray in a content stream") and @occurrences = "2" and @level = "SEVERE") or 
            (contains(., "Undefined font /F1 in a content stream") and @occurrences = "1" and @level = "SEVERE")'>Invalid logs, Expected: 
            'SEVERE: Undefined font /F2 in a content stream' with 1 occurrences, or 
            'SEVERE: Undefined color space /DeviceGray in a content stream' with 2 occurrences, or 
            'SEVERE: Undefined font /F1 in a content stream' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
