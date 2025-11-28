<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# tabel-zonder-lege-alinea-Ppad-verwijderd.pdf -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/tabel-zonder-lege-alinea-Ppad-verwijderd.pdf -->
    <!-- File: tabel-zonder-lege-alinea-Ppad-verwijderd.pdf -->


    <sch:pattern name = "Checking the validationReport: document is compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'true')">Failed check, Expected: isCompliant=true</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
