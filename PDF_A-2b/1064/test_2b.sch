<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1064 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1064 -->
    <!-- File: test_2b.pdf -->

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
            <sch:assert test="@logsCount = '49'">Failed check, Expected: 49</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Invalid glyph code: -55") and @occurrences = "3" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -12") and @occurrences = "2" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -28") and @occurrences = "1" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -62") and @occurrences = "1" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -63") and @occurrences = "1" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -45") and @occurrences = "2" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -30") and @occurrences = "3" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -60") and @occurrences = "2" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -43") and @occurrences = "2" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -14") and @occurrences = "2" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -15") and @occurrences = "3" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -11") and @occurrences = "2" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -24") and @occurrences = "3" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -16") and @occurrences = "1" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -59") and @occurrences = "3" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -25") and @occurrences = "1" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -58") and @occurrences = "1" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -26") and @occurrences = "2" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -44") and @occurrences = "1" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -61") and @occurrences = "1" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -41") and @occurrences = "1" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -46") and @occurrences = "1" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -13") and @occurrences = "2" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -39") and @occurrences = "3" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -42") and @occurrences = "4" and @level = "WARNING") or
            (contains(., "Invalid glyph code: -47") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected:
            'WARNING: Invalid glyph code: -55' with 3 occurrences, or 
            'WARNING: Invalid glyph code: -12' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -28' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -62' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -63' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -45' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -30' with 3 occurrences, or 
            'WARNING: Invalid glyph code: -60' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -43' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -14' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -15' with 3 occurrences, or 
            'WARNING: Invalid glyph code: -11' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -24' with 3 occurrences, or 
            'WARNING: Invalid glyph code: -16' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -59' with 3 occurrences, or 
            'WARNING: Invalid glyph code: -25' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -58' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -26' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -44' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -61' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -41' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -46' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -13' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -39' with 3 occurrences, or 
            'WARNING: Invalid glyph code: -42' with 4 occurrences, or 
            'WARNING: Invalid glyph code: -47' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
