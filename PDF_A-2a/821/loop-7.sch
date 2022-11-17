<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">


    <!-- Issue# 821 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/821 -->
    <!-- File: loop-7.pdf -->

    <sch:pattern>name = "Checking the taskResult"
        <sch:rule context="/report/jobs/job/taskResult">
            <sch:assert test='contains(exceptionMessage, "Exception: Caught unexpected runtime exception during validation caused by exception: Loop inside number tree")'>
                Failed check, Expected Error: Exception: Caught unexpected runtime exception during validation caused by exception: Loop inside number tree
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the batchSummary"
        <sch:rule context="/report/batchSummary">
            <sch:assert test="(@totalJobs = '1' and @failedToParse = '0' and @encrypted = '0' and @outOfMemory = '0' and @veraExceptions = '1')">
                Failed check, Expected: totalJobs = '1' failedToParse = '0' encrypted = '0' outOfMemory = '0' veraExceptions = '1'
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the logs"
        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '2'">Failed check, Expected: 2</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='
			(contains(., "Exception caught when validating item") and @occurrences = "1" and @level = "WARNING") or
			(contains(., "Undefined color space /g in a content stream") and @occurrences = "1" and @level = "SEVERE")
			'>Invalid logs, Expected: 
            'WARNING: Exception caught when validating item' with 1 occurrences or
			'SEVERE: Undefined color space /g in a content stream' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
