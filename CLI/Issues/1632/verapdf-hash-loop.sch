<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1632 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1632 -->
    <!-- File: verapdf-hash-loop.pdf -->

    <sch:pattern name = "Checking the batchSummary">
        <sch:rule context="/report/batchSummary">
            <sch:assert test="(@totalJobs = '1' and @failedToParse = '0' and @encrypted = '0' and @outOfMemory = '0' and @veraExceptions = '0')">
                Failed check, Expected: totalJobs = '1' failedToParse = '0' encrypted = '0' outOfMemory = '0' veraExceptions = '0'
            </sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>