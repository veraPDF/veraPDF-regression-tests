<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 0596436.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '6')">Failed check, Expected: 6</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.1.8' and @testNumber = '1' and @failedChecks = '3442') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '60') or 
            (@clause = '6.3.5' and @testNumber = '2' and @failedChecks = '4') or 
            (@clause = '6.7.9' and @testNumber = '2' and @failedChecks = '24') or 
            (@clause = '6.7.9' and @testNumber = '3' and @failedChecks = '24') or 
            (@clause = '6.7.11' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.8-1, 3442 checks, or 
            6.2.3.3-3, 60 checks, or 
            6.3.5-2, 4 checks, or 
            6.7.9-2, 24 checks, or 
            6.7.9-3, 24 checks, or 
            6.7.11-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '4'">Failed check, Expected: 4</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Error in parsing private data in Type 1 font: incorrect amount of charstings specified(offset = 10213 in stream 395 0 obj)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Error in parsing private data in Type 1 font: incorrect amount of charstings specified(offset = 13140 in stream 368 0 obj)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Error in parsing private data in Type 1 font: incorrect amount of charstings specified(offset = 13676 in stream 387 0 obj)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Error in parsing private data in Type 1 font: incorrect amount of charstings specified(offset = 6475 in stream 379 0 obj)") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Error in parsing private data in Type 1 font: incorrect amount of charstings specified(offset = 10213 in stream 395 0 obj)' with 1 occurrences, or 
            'WARNING: Error in parsing private data in Type 1 font: incorrect amount of charstings specified(offset = 13140 in stream 368 0 obj)' with 1 occurrences, or 
            'WARNING: Error in parsing private data in Type 1 font: incorrect amount of charstings specified(offset = 13676 in stream 387 0 obj)' with 1 occurrences, or 
            'WARNING: Error in parsing private data in Type 1 font: incorrect amount of charstings specified(offset = 6475 in stream 379 0 obj)' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
