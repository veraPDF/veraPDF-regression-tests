<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 796 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/796 -->
    <!-- File: x2.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '1')">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.2.4.3' and @testNumber = '4' and @failedChecks = '9')">Failed rules, Expected: 
            6.2.4.3-4, 9 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>name = "Checking the logs"
        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '7'">Failed check, Expected: 7</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='
			(contains(., "Undefined color space /c in a content stream") and @occurrences = "1" and @level = "SEVERE") or
			(contains(., "Undefined color space /a in a content stream") and @occurrences = "1" and @level = "SEVERE") or
			(contains(., "Color space has to be a name or array, but it is not") and @occurrences = "1" and @level = "SEVERE") or
			(contains(., "Undefined color space /d in a content stream") and @occurrences = "1" and @level = "SEVERE") or
			(contains(., "Undefined color space /f in a content stream") and @occurrences = "1" and @level = "SEVERE") or
			(contains(., "Undefined color space /e in a content stream") and @occurrences = "1" and @level = "SEVERE") or
			(contains(., "Undefined color space /b in a content stream") and @occurrences = "1" and @level = "SEVERE")
			'>Invalid logs, Expected: 
            'SEVERE: Undefined color space /c in a content stream' with 1 occurrences or
			'SEVERE: Undefined color space /a in a content stream' with 1 occurrences or
			'SEVERE: Color space has to be a name or array, but it is not' with 1 occurrences or
			'SEVERE: Undefined color space /d in a content stream' with 1 occurrences or
			'SEVERE: Undefined color space /f in a content stream' with 1 occurrences or
			'SEVERE: Undefined color space /e in a content stream' with 1 occurrences or
			'SEVERE: Undefined color space /b in a content stream' with 1 occurrences 
			</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
