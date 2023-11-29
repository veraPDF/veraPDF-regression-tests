<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 985 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/985 -->
    <!-- File: pdfa.pdf -->

    <sch:pattern name = "Checking the validationReport: document is compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'true')">Failed check, Expected: isCompliant=true</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '294'">Failed check, Expected: 294</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Special graphics state operator (q) inside Text object") and @occurrences = "98" and @level = "WARNING") or
            (contains(., "Special graphics state operator (Q) inside Text object") and @occurrences = "98" and @level = "WARNING") or
            (contains(., "Special graphics state operator (cm) inside Text object") and @occurrences = "98" and @level = "WARNING")'>Invalid logs, Expected:
            'WARNING: Special graphics state operator (q) inside Text object' with 98 occurrences, or 
            'WARNING: Special graphics state operator (Q) inside Text object' with 98 occurrences, or 
            'WARNING: Special graphics state operator (cm) inside Text object' with 98 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
