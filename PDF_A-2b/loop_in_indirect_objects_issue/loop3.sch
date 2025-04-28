<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: loop3.pdf -->

    <sch:pattern name = "Checking the taskException">
        <sch:rule context="/report/jobs/job/taskException">
            <sch:assert test='contains(exceptionMessage, "Exception: Caught unexpected exception during parsing caused by exception: Loop in indirect references starting from indirect object 16 0 obj")'>
                Failed check, Expected Error: Exception: Caught unexpected exception during parsing caused by exception: Loop in indirect references starting from indirect object 16 0 obj
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the batchSummary">
        <sch:rule context="/report/batchSummary">
            <sch:assert test="(@totalJobs = '1' and @failedToParse = '0' and @encrypted = '0' and @outOfMemory = '0' and @veraExceptions = '1')">
                Failed check, Expected: totalJobs = '1' failedToParse = '0' encrypted = '0' outOfMemory = '0' veraExceptions = '1'
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '2'">Failed check, Expected: 2</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "C:\Users\eugene\Desktop\verapdf\veraPDF-regression-tests\PDF_A-2b\loop in indirect objects\.pdf doesn&apos;t appear to be a valid PDF.") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Incorrect end of line in cross-reference table(offset = 3185)") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: C:\Users\eugene\Desktop\verapdf\veraPDF-regression-tests\PDF_A-2b\loop in indirect objects\loop3.pdf doesn't appear to be a valid PDF.' with 1 occurrences, or 
            'WARNING: Incorrect end of line in cross-reference table(offset = 3185)' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
