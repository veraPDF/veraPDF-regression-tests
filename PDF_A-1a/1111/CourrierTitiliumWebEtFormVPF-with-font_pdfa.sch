<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1111 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1111 -->
    <!-- File: CourrierTitiliumWebEtFormVPF-with-font_pdfa.pdf -->

    <sch:pattern name = "Checking the validationReport: document is compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'true')">Failed check, Expected: isCompliant=true</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the logs">        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>
        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '3'">Failed check, Expected: 3</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Embedded TrueType font program is incorrect: numberOfGlyphs field of &apos;post&apos; table does not match numGlyphs field of the &apos;maxp&apos; table") and @occurrences = "3" and @level = "WARNING")'>Invalid logs, Expected:
            'WARNING: Embedded TrueType font program is incorrect: numberOfGlyphs field of 'post' table does not match numGlyphs field of the 'maxp' table' with 3 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
