<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 677 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/677 -->
    <!-- File: pdfa_NA60.pdf -->


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
            <sch:assert test="(@clause = '6.3.8' and @testNumber = '1' and @failedChecks = '4089')">Failed rules, Expected: 
            6.3.8-1, 4089 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs"><sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>
        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '11384'">Failed check, Expected: 11384</sch:assert>
            <sch:assert test='count(logMessage) = 101'>Failed check, Expected: 101</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Invalid glyph code: ") and @level = "WARNING")'>Invalid logs, Expected:
            'WARNING: Invalid glyph code: -32' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -28' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -119' with 34 occurrences, or 
            'WARNING: Invalid glyph code: -57' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -46' with 3 occurrences, or 
            'WARNING: Invalid glyph code: -109' with 3 occurrences, or 
            'WARNING: Invalid glyph code: -81' with 16 occurrences, or 
            'WARNING: Invalid glyph code: -94' with 169 occurrences, or 
            'WARNING: Invalid glyph code: -73' with 184 occurrences, or 
            'WARNING: Invalid glyph code: -56' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -90' with 72 occurrences, or 
            'WARNING: Invalid glyph code: -85' with 129 occurrences, or 
            'WARNING: Invalid glyph code: -117' with 486 occurrences, or 
            'WARNING: Invalid glyph code: -105' with 90 occurrences, or 
            'WARNING: Invalid glyph code: -77' with 47 occurrences, or 
            'WARNING: Invalid glyph code: -113' with 132 occurrences, or 
            'WARNING: Invalid glyph code: -82' with 427 occurrences, or 
            'WARNING: Invalid glyph code: -122' with 185 occurrences, or 
            'WARNING: Invalid glyph code: -128' with 104 occurrences, or 
            'WARNING: Invalid glyph code: -64' with 6 occurrences, or 
            'WARNING: Invalid glyph code: -48' with 8 occurrences, or 
            'WARNING: Invalid glyph code: -59' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -67' with 67 occurrences, or 
            'WARNING: Invalid glyph code: -60' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -42' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -93' with 93 occurrences, or 
            'WARNING: Invalid glyph code: -95' with 410 occurrences, or 
            'WARNING: Invalid glyph code: -84' with 49 occurrences, or 
            'WARNING: Invalid glyph code: -127' with 1154 occurrences, or 
            'WARNING: Invalid glyph code: -76' with 66 occurrences, or 
            'WARNING: Invalid glyph code: -54' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -68' with 455 occurrences, or 
            'WARNING: Invalid glyph code: -69' with 84 occurrences, or 
            'WARNING: Invalid glyph code: -62' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -44' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -102' with 125 occurrences, or 
            'WARNING: Invalid glyph code: -65' with 7 occurrences, or 
            'WARNING: Invalid glyph code: -114' with 25 occurrences, or 
            'WARNING: Invalid glyph code: -51' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -33' with 39 occurrences, or 
            'WARNING: Invalid glyph code: -80' with 209 occurrences, or 
            'WARNING: Invalid glyph code: -50' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -118' with 14 occurrences, or 
            'WARNING: Invalid glyph code: -63' with 59 occurrences, or 
            'WARNING: Invalid glyph code: -89' with 122 occurrences, or 
            'WARNING: Invalid glyph code: -39' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -41' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -104' with 4 occurrences, or 
            'WARNING: Invalid glyph code: -43' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -35' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -100' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -70' with 116 occurrences, or 
            'WARNING: Invalid glyph code: -121' with 80 occurrences, or 
            'WARNING: Invalid glyph code: -115' with 728 occurrences, or 
            'WARNING: Invalid glyph code: -52' with 3 occurrences, or 
            'WARNING: Invalid glyph code: -30' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -125' with 994 occurrences, or 
            'WARNING: Invalid glyph code: -40' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -78' with 178 occurrences, or 
            'WARNING: Invalid glyph code: -106' with 7 occurrences, or 
            'WARNING: Invalid glyph code: -116' with 297 occurrences, or 
            'WARNING: Invalid glyph code: -34' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -92' with 327 occurrences, or 
            'WARNING: Invalid glyph code: -126' with 12 occurrences, or 
            'WARNING: Invalid glyph code: -108' with 4 occurrences, or 
            'WARNING: Invalid glyph code: -75' with 69 occurrences, or 
            'WARNING: Invalid glyph code: -98' with 569 occurrences, or 
            'WARNING: Invalid glyph code: -120' with 71 occurrences, or 
            'WARNING: Invalid glyph code: -123' with 20 occurrences, or 
            'WARNING: Invalid glyph code: -58' with 3 occurrences, or 
            'WARNING: Invalid glyph code: -31' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -88' with 287 occurrences, or 
            'WARNING: Invalid glyph code: -103' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -37' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -83' with 141 occurrences, or 
            'WARNING: Invalid glyph code: -29' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -38' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -124' with 36 occurrences, or 
            'WARNING: Invalid glyph code: -45' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -47' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -55' with 3 occurrences, or 
            'WARNING: Invalid glyph code: -66' with 47 occurrences, or 
            'WARNING: Invalid glyph code: -107' with 108 occurrences, or 
            'WARNING: Invalid glyph code: -71' with 10 occurrences, or 
            'WARNING: Invalid glyph code: -87' with 258 occurrences, or 
            'WARNING: Invalid glyph code: -91' with 121 occurrences, or 
            'WARNING: Invalid glyph code: -99' with 139 occurrences, or 
            'WARNING: Invalid glyph code: -112' with 5 occurrences, or 
            'WARNING: Invalid glyph code: -86' with 120 occurrences, or 
            'WARNING: Invalid glyph code: -111' with 1003 occurrences, or 
            'WARNING: Invalid glyph code: -49' with 2 occurrences, or 
            'WARNING: Invalid glyph code: -97' with 233 occurrences, or 
            'WARNING: Invalid glyph code: -36' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -61' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -79' with 5 occurrences, or 
            'WARNING: Invalid glyph code: -72' with 85 occurrences, or 
            'WARNING: Invalid glyph code: -74' with 59 occurrences, or 
            'WARNING: Invalid glyph code: -53' with 3 occurrences, or 
            'WARNING: Invalid glyph code: -101' with 1 occurrences, or 
            'WARNING: Invalid glyph code: -110' with 19 occurrences, or 
            'WARNING: Invalid glyph code: -96' with 108 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
