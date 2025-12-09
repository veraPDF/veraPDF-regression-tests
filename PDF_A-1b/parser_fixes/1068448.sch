<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 1068448.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '15')">Failed check, Expected: 15</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.1.7' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.1.8' and @testNumber = '1' and @failedChecks = '84') or 
            (@clause = '6.1.12' and @testNumber = '1' and @failedChecks = '153') or 
            (@clause = '6.1.12' and @testNumber = '2' and @failedChecks = '4369') or 
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '13696') or 
            (@clause = '6.2.3.3' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '818') or 
            (@clause = '6.2.10' and @testNumber = '1' and @failedChecks = '1600') or 
            (@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '31') or 
            (@clause = '6.3.5' and @testNumber = '2' and @failedChecks = '2') or 
            (@clause = '6.7.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '6' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '7' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '8' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.7-1, 1 check, or 
            6.1.8-1, 84 checks, or 
            6.1.12-1, 153 checks, or 
            6.1.12-2, 4369 checks, or 
            6.2.3.3-1, 13696 checks, or 
            6.2.3.3-2, 1 check, or 
            6.2.3.3-3, 818 checks, or 
            6.2.10-1, 1600 checks, or 
            6.3.4-1, 31 checks, or 
            6.3.5-2, 2 checks, or 
            6.7.2-1, 1 check, or 
            6.7.3-1, 1 check, or 
            6.7.3-6, 1 check, or 
            6.7.3-7, 1 check, or 
            6.7.3-8, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '85'">Failed check, Expected: 85</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Undefined font /21 in a content stream") and @occurrences = "22" and @level = "SEVERE") or 
            (contains(., "Undefined font /31 in a content stream") and @occurrences = "3" and @level = "SEVERE") or 
            (contains(., "Can&apos;t parse font program of font LMFQNW+CMMI7") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Can&apos;t parse font program of font MDQWSI+CMBX10") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Content stream (object 19 0 obj): Special graphics state operator (Q) inside Text object") and @occurrences = "5" and @level = "WARNING") or 
            (contains(., "Content stream (object 19 0 obj): Special graphics state operator (q) inside Text object") and @occurrences = "31" and @level = "WARNING") or 
            (contains(., "Content stream (object 19 0 obj): Wrong argument of Tr operator") and @occurrences = "5" and @level = "WARNING") or 
            (contains(., "Content stream (object 20 0 obj): Special graphics state operator (Q) inside Text object") and @occurrences = "5" and @level = "WARNING") or 
            (contains(., "Content stream (object 20 0 obj): Special graphics state operator (q) inside Text object") and @occurrences = "6" and @level = "WARNING") or 
            (contains(., "Content stream (object 20 0 obj): Wrong argument of Tr operator") and @occurrences = "5" and @level = "WARNING") or 
            (contains(., "Content stream string token exceeds 65535 bytes") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'SEVERE: Undefined font /21 in a content stream' with 22 occurrences, or 
            'SEVERE: Undefined font /31 in a content stream' with 3 occurrences, or 
            'WARNING: Can't parse font program of font LMFQNW+CMMI7' with 1 occurrences, or 
            'WARNING: Can't parse font program of font MDQWSI+CMBX10' with 1 occurrences, or 
            'WARNING: Content stream (object 19 0 obj): Special graphics state operator (Q) inside Text object' with 5 occurrences, or 
            'WARNING: Content stream (object 19 0 obj): Special graphics state operator (q) inside Text object' with 31 occurrences, or 
            'WARNING: Content stream (object 19 0 obj): Wrong argument of Tr operator' with 5 occurrences, or 
            'WARNING: Content stream (object 20 0 obj): Special graphics state operator (Q) inside Text object' with 5 occurrences, or 
            'WARNING: Content stream (object 20 0 obj): Special graphics state operator (q) inside Text object' with 6 occurrences, or 
            'WARNING: Content stream (object 20 0 obj): Wrong argument of Tr operator' with 5 occurrences, or 
            'WARNING: Content stream string token exceeds 65535 bytes' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
