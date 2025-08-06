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
            <sch:assert test="(@failedRules = '12')">Failed check, Expected: 12</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.1.4' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.1.8' and @testNumber = '1' and @failedChecks = '138') or 
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '104') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '751') or 
            (@clause = '6.3.3.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.3.3.3' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = '6.3.5' and @testNumber = '3' and @failedChecks = '2') or 
            (@clause = '6.4' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '6.4' and @testNumber = '3' and @failedChecks = '8') or 
            (@clause = '6.4' and @testNumber = '6' and @failedChecks = '1') or 
            (@clause = '6.7.11' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.4-3, 1 check, or 
            6.1.8-1, 138 checks, or 
            6.2.3.3-1, 104 checks, or 
            6.2.3.3-3, 751 checks, or 
            6.3.3.2-1, 1 check, or 
            6.3.3.3-1, 2 checks, or 
            6.3.4-1, 4 checks, or 
            6.3.5-3, 2 checks, or 
            6.4-2, 1 check, or 
            6.4-3, 8 checks, or 
            6.4-6, 1 check, or 
            6.7.11-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '98'">Failed check, Expected: 98</sch:assert>	
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
            (contains(., "Content stream (object 9 0 obj): Special graphics state operator (cm) inside Text object") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
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
            'WARNING: Content stream (object 9 0 obj): Special graphics state operator (cm) inside Text object' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
