<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issues#89, 90 -->
    <!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/90 -->
	<!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/89 -->
    <!-- File: lijst-arial.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '2')">Failed check, Expected: 2</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '5' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.21.4.2' and @testNumber = '2' and @failedChecks = '1')">Failed rules, Expected: 
            5-1, 1 check, or 
            7.21.4.2-2, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
