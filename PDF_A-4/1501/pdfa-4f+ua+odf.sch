<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1501 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1501 -->
    <!-- File: pdfa-4f+ua+odf.pdf -->

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
            <sch:assert test="@logsCount = '1'">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "PDF version ISO_32000_1_7 of detected flavour ua1 is incompatible with the PDF version ISO_32000_2_0 of other detected flavour 4f. The validation of flavour ua1 is skipped") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: PDF version ISO_32000_1_7 of detected flavour ua1 is incompatible with the PDF version ISO_32000_2_0 of other detected flavour 4f. The validation of flavour ua1 is skipped' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
