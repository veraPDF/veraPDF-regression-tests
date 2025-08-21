<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 01562.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '17')">Failed check, Expected: 17</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '5' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '5' and @testNumber = '5' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '8.2.2' and @testNumber = '1' and @failedChecks = '6238') or 
            (@clause = '8.2.5.2' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '8.2.5.20' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '8.2.5.25' and @testNumber = '1' and @failedChecks = '9') or 
            (@clause = '8.2.5.26' and @testNumber = '3' and @failedChecks = '3') or 
            (@clause = '8.2.5.26' and @testNumber = '4' and @failedChecks = '3') or 
            (@clause = '8.2.5.28.2' and @testNumber = '1' and @failedChecks = '33') or 
            (@clause = '8.4.3' and @testNumber = '1' and @failedChecks = '74') or 
            (@clause = '8.4.5.5.1' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = '8.8' and @testNumber = '1' and @failedChecks = '16') or 
            (@clause = '8.9.2.3' and @testNumber = '1' and @failedChecks = '11') or 
            (@clause = '8.9.3.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '8.11.1' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Sect-content' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            5-2, 1 check, or 
            5-5, 1 check, or 
            6.2-1, 1 check, or 
            8.2.2-1, 6238 checks, or 
            8.2.5.2-2, 1 check, or 
            8.2.5.20-1, 1 check, or 
            8.2.5.25-1, 9 checks, or 
            8.2.5.26-3, 3 checks, or 
            8.2.5.26-4, 3 checks, or 
            8.2.5.28.2-1, 33 checks, or 
            8.4.3-1, 74 checks, or 
            8.4.5.5.1-1, 4 checks, or 
            8.8-1, 16 checks, or 
            8.9.2.3-1, 11 checks, or 
            8.9.3.3-1, 1 check, or 
            8.11.1-1, 1 check, or 
            Table 5. Sect-content-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '43'">Failed check, Expected: 43</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Content stream (object 1 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 1 0 obj): Nested MCID - 17") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 1 0 obj): Nested MCID - 22") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 10 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 106 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 135 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 14 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 141 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 18 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 186 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 199 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 204 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 211 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 218 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 224 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 231 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 29 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 33 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 37 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 41 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 54 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 6 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 66 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 88 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 94 0 obj): Duplicate MCID - 0") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "String object uses encoding UTF16-LE not supported by PDF") and @occurrences = "18" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Content stream (object 1 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 1 0 obj): Nested MCID - 17' with 1 occurrences, or 
            'WARNING: Content stream (object 1 0 obj): Nested MCID - 22' with 1 occurrences, or 
            'WARNING: Content stream (object 10 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 106 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 135 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 14 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 141 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 18 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 186 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 199 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 204 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 211 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 218 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 224 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 231 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 29 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 33 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 37 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 41 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 54 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 6 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 66 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 88 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: Content stream (object 94 0 obj): Duplicate MCID - 0' with 1 occurrences, or 
            'WARNING: String object uses encoding UTF16-LE not supported by PDF' with 18 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
