<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">


    <!-- Issue# 1051 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1051 -->
    <!-- File: 14.pdf -->

    <sch:pattern>name = "Checking the taskResult"
        <sch:rule context="/report/jobs/job/taskResult">
            <sch:assert test='contains(exceptionMessage, "Exception: Couldn&apos;t parse stream caused by exception: Trailer is empty or has invalid type")'>
                Failed check, Expected Error: Exception: Couldn't parse stream caused by exception: Trailer is empty or has invalid type
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the batchSummary"
        <sch:rule context="/report/batchSummary">
            <sch:assert test="(@totalJobs = '1' and @failedToParse = '1' and @encrypted = '0' and @outOfMemory = '0' and @veraExceptions = '1')">
                Failed check, Expected: totalJobs = '1' failedToParse = '1' encrypted = '0' outOfMemory = '0' veraExceptions = '1'
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the logs"
        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '6'">Failed check, Expected: 6</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(/, "Incorrect end of line in cross-reference table.") and @occurrences = "5" and @level = "WARNING") or 
            (contains(/, "14.pdf doesn&apos;t appear to be a valid PDF.") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Incorrect end of line in cross-reference table.' with 5 occurrences, or 
            'WARNING: 14.pdf doesn't appear to be a valid PDF.' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
