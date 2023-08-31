<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">


    <!-- Issue# 1051 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1051 -->
    <!-- File: 12.pdf -->

    <sch:pattern name = "Checking the taskException">
        <sch:rule context="/report/jobs/job/taskException">
            <sch:assert test='contains(exceptionMessage, "Exception: Couldn&apos;t parse stream caused by exception: Trailer is empty or has invalid type(offset = 712)")'>
                Failed check, Expected Error: Exception: Couldn't parse stream caused by exception: Trailer is empty or has invalid type(offset = 712)
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the batchSummary">
        <sch:rule context="/report/batchSummary">
            <sch:assert test="(@totalJobs = '1' and @failedToParse = '1' and @encrypted = '0' and @outOfMemory = '0' and @veraExceptions = '0')">
                Failed check, Expected: totalJobs = '1' failedToParse = '1' encrypted = '0' outOfMemory = '0' veraExceptions = '0'
            </sch:assert>
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
            <sch:assert test='(contains(., "pdf doesn&apos;t appear to be a valid PDF.") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Incorrect end of line in cross-reference table.(offset = 633)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Incorrect end of line in cross-reference table.(offset = 668)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Incorrect end of line in cross-reference table.(offset = 690)") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: 12.pdf doesn't appear to be a valid PDF.' with 1 occurrences, or 
            'WARNING: Incorrect end of line in cross-reference table.(offset = 633)' with 1 occurrences, or 
            'WARNING: Incorrect end of line in cross-reference table.(offset = 668)' with 1 occurrences, or 
            'WARNING: Incorrect end of line in cross-reference table.(offset = 690)' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
