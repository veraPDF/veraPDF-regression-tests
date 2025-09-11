<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 4750443.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '13')">Failed check, Expected: 13</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.1.3' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '6.1.10' and @testNumber = '1' and @failedChecks = '26') or 
            (@clause = '6.2.3.3' and @testNumber = '2' and @failedChecks = '185') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '3112') or 
            (@clause = '6.2.10' and @testNumber = '1' and @failedChecks = '3') or 
            (@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '8') or 
            (@clause = '6.7.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '4' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '5' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '6' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '7' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.3-2, 1 check, or 
            6.1.10-1, 26 checks, or 
            6.2.3.3-2, 185 checks, or 
            6.2.3.3-3, 3112 checks, or 
            6.2.10-1, 3 checks, or 
            6.3.4-1, 8 checks, or 
            6.7.2-1, 1 check, or 
            6.7.3-2, 1 check, or 
            6.7.3-3, 1 check, or 
            6.7.3-4, 1 check, or 
            6.7.3-5, 1 check, or 
            6.7.3-6, 1 check, or 
            6.7.3-7, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '6'">Failed check, Expected: 6</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Can&apos;t parse font program of font Univers") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Can&apos;t parse font program of font Univers-Black") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Can&apos;t parse font program of font Univers-Bold") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Can&apos;t parse font program of font Univers-Condensed") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Can&apos;t parse font program of font Univers-CondensedLight") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Can&apos;t parse font program of font Univers-Light") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Can't parse font program of font Univers' with 1 occurrences, or 
            'WARNING: Can't parse font program of font Univers-Black' with 1 occurrences, or 
            'WARNING: Can't parse font program of font Univers-Bold' with 1 occurrences, or 
            'WARNING: Can't parse font program of font Univers-Condensed' with 1 occurrences, or 
            'WARNING: Can't parse font program of font Univers-CondensedLight' with 1 occurrences, or 
            'WARNING: Can't parse font program of font Univers-Light' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
