<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 5973114.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '9')">Failed check, Expected: 9</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '5' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '3' and @failedChecks = '467') or 
            (@clause = '7.1' and @testNumber = '9' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '7.3' and @testNumber = '1' and @failedChecks = '3') or 
            (@clause = '7.18.1' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.18.1' and @testNumber = '2' and @failedChecks = '2') or 
            (@clause = '7.18.5' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '7.21.4.1' and @testNumber = '1' and @failedChecks = '4')">Failed rules, Expected: 
            5-1, 1 check, or 
            7.1-3, 467 checks, or 
            7.1-9, 1 check, or 
            7.1-10, 1 check, or 
            7.3-1, 3 checks, or 
            7.18.1-1, 1 check, or 
            7.18.1-2, 2 checks, or 
            7.18.5-2, 1 check, or 
            7.21.4.1-1, 4 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '122'">Failed check, Expected: 122</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Content stream (object 1 0 obj): Duplicate MCID - 1585899264") and @occurrences = "14" and @level = "WARNING") or 
            (contains(., "Content stream (object 1 0 obj): Special graphics state operator (cm) inside Text object") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 11 0 obj): Duplicate MCID - 2025276672") and @occurrences = "16" and @level = "WARNING") or 
            (contains(., "Content stream (object 11 0 obj): Special graphics state operator (cm) inside Text object") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 13 0 obj): Duplicate MCID - 1861099264") and @occurrences = "29" and @level = "WARNING") or 
            (contains(., "Content stream (object 13 0 obj): Special graphics state operator (cm) inside Text object") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream (object 3 0 obj): Duplicate MCID - 335736416") and @occurrences = "16" and @level = "WARNING") or 
            (contains(., "Content stream (object 3 0 obj): Special graphics state operator (cm) inside Text object") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 348 0 obj): Special graphics state operator (cm) inside Text object") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 5 0 obj): Special graphics state operator (cm) inside Text object") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 7 0 obj): Duplicate MCID - 352801760") and @occurrences = "14" and @level = "WARNING") or 
            (contains(., "Content stream (object 7 0 obj): Special graphics state operator (cm) inside Text object") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 9 0 obj): Special graphics state operator (cm) inside Text object") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Incorrect bfrange in toUnicode CMap: the last byte of the string incremented past 255.") and @occurrences = "24" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Content stream (object 1 0 obj): Duplicate MCID - 1585899264' with 14 occurrences, or 
            'WARNING: Content stream (object 1 0 obj): Special graphics state operator (cm) inside Text object' with 1 occurrences, or 
            'WARNING: Content stream (object 11 0 obj): Duplicate MCID - 2025276672' with 16 occurrences, or 
            'WARNING: Content stream (object 11 0 obj): Special graphics state operator (cm) inside Text object' with 1 occurrences, or 
            'WARNING: Content stream (object 13 0 obj): Duplicate MCID - 1861099264' with 29 occurrences, or 
            'WARNING: Content stream (object 13 0 obj): Special graphics state operator (cm) inside Text object' with 2 occurrences, or 
            'WARNING: Content stream (object 3 0 obj): Duplicate MCID - 335736416' with 16 occurrences, or 
            'WARNING: Content stream (object 3 0 obj): Special graphics state operator (cm) inside Text object' with 1 occurrences, or 
            'WARNING: Content stream (object 348 0 obj): Special graphics state operator (cm) inside Text object' with 1 occurrences, or 
            'WARNING: Content stream (object 5 0 obj): Special graphics state operator (cm) inside Text object' with 1 occurrences, or 
            'WARNING: Content stream (object 7 0 obj): Duplicate MCID - 352801760' with 14 occurrences, or 
            'WARNING: Content stream (object 7 0 obj): Special graphics state operator (cm) inside Text object' with 1 occurrences, or 
            'WARNING: Content stream (object 9 0 obj): Special graphics state operator (cm) inside Text object' with 1 occurrences, or 
            'WARNING: Incorrect bfrange in toUnicode CMap: the last byte of the string incremented past 255.' with 24 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
