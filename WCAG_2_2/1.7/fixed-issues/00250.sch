<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 00250.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '11')">Failed check, Expected: 11</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '2.4.9' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = '6.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '3' and @failedChecks = '54') or 
            (@clause = '7.1' and @testNumber = '8' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '11' and @failedChecks = '1') or 
            (@clause = '7.2' and @testNumber = '34' and @failedChecks = '46') or 
            (@clause = '7.10' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.18.3' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '7.18.5' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = '7.21.7' and @testNumber = '1' and @failedChecks = '13')">Failed rules, Expected: 
            2.4.9-1, 6 checks, or 
            6.2-1, 1 check, or 
            7.1-3, 54 checks, or 
            7.1-8, 1 check, or 
            7.1-10, 1 check, or 
            7.1-11, 1 check, or 
            7.2-34, 46 checks, or 
            7.10-1, 1 check, or 
            7.18.3-1, 2 checks, or 
            7.18.5-1, 6 checks, or 
            7.21.7-1, 13 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '3'">Failed check, Expected: 3</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Content stream (object 3 0 obj): EMC operator does not have a balancing BMC/BDC operator") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "EMC operator does not have a balancing BMC/BDC operator") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Incorrect bfrange in toUnicode CMap: bfrange contains more than 256 code.") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Content stream (object 3 0 obj): EMC operator does not have a balancing BMC/BDC operator' with 1 occurrences, or 
            'WARNING: EMC operator does not have a balancing BMC/BDC operator' with 1 occurrences, or 
            'WARNING: Incorrect bfrange in toUnicode CMap: bfrange contains more than 256 code.' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
