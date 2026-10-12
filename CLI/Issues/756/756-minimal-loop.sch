<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 756 -->
    <!-- https://github.com/veraPDF/veraPDF-validation/pull/756 -->
    <!-- File: 756-minimal-loop.pdf -->

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
            <sch:assert test="(@clause = '6.1' and @testNumber = '1' and @failedChecks = '1') or
            (@clause = '8.2.2' and @testNumber = '1' and @failedChecks = '1') or
            (@clause = '8.2.5.2' and @testNumber = '1' and @failedChecks = '1') or
            (@clause = '8.4.4' and @testNumber = '1' and @failedChecks = '1') or
            (@clause = '8.4.5.5.1' and @testNumber = '1' and @failedChecks = '1') or
            (@clause = '8.9.3.3' and @testNumber = '1' and @failedChecks = '1') or
            (@clause = '8.11.1' and @testNumber = '2' and @failedChecks = '1') or
            (@clause = '8.11.2' and @testNumber = '1' and @failedChecks = '1') or
            (@clause = 'Table 5. StructTreeRoot-Document' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected:
            6.1-1, 1 check, or
            8.2.2-1, 1 check, or
            8.2.5.2-1, 1 check, or
            8.4.4-1, 1 check, or
            8.4.5.5.1-1, 1 check, or
            8.9.3.3-1, 1 check, or
            8.11.1-2, 1 check, or
            8.11.2-1, 1 check, or
            Table 5. StructTreeRoot-Document-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '1'">Failed check, Expected: 1</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "The value of P key of struct element 10 0 obj is different from the actual parent struct element 8 0 obj") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected:
            'WARNING: The value of P key of struct element 10 0 obj is different from the actual parent struct element 8 0 obj' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
