<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: transitionaltag_part_test.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '111')">Failed check, Expected: 111</sch:assert>	
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'CosDocument' or
            (@clause = '8.11.2' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.11.2-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDDocument' or
            (@clause = '8.4.4' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.4.4-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDFont' or
            (@clause = '8.4.5.5.1' and @testNumber = '1' and @failedChecks = '114')">Failed rules, Expected: 
            8.4.5.5.1-1, 114 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDStructElem' or
            (@clause = '8.2.5.27' and @testNumber = '1' and @failedChecks = '57')">Failed rules, Expected: 
            8.2.5.27-1, 57 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDStructTreeRoot' or
            (@clause = '8.2.5.2' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.2.5.2-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEAnnot' or
            (@clause = 'StructTreeRoot-Annot' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Annot-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEArt' or
            (@clause = 'StructTreeRoot-Art' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Art-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEArtifact' or
            (@clause = 'StructTreeRoot-Artifact' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Artifact-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEAside' or
            (@clause = 'StructTreeRoot-Aside' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Aside-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEBibEntry' or
            (@clause = 'StructTreeRoot-BibEntry' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-BibEntry-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEBlockQuote' or
            (@clause = 'StructTreeRoot-BlockQuote' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-BlockQuote-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SECaption' or
            (@clause = 'StructTreeRoot-Caption' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Caption-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SECode' or
            (@clause = 'StructTreeRoot-Code' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Code-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEDiv' or
            (@clause = 'StructTreeRoot-Div' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Div-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEDocumentFragment' or
            (@clause = 'StructTreeRoot-DocumentFragment' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-DocumentFragment-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEEm' or
            (@clause = 'Part-Em' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-Em' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-Em-1, 114 checks, or 
            StructTreeRoot-Em-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEFENote' or
            (@clause = 'StructTreeRoot-FENote' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-FENote-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEFigure' or
            (@clause = '8.2.5.28.2' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'StructTreeRoot-Figure' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.2.5.28.2-1, 115 checks, or 
            StructTreeRoot-Figure-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEForm' or
            (@clause = 'StructTreeRoot-Form' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Form-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEFormula' or
            (@clause = 'StructTreeRoot-Formula' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Formula-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEH' or
            (@clause = '8.2.5.12' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'StructTreeRoot-H' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.2.5.12-1, 115 checks, or 
            StructTreeRoot-H-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEHn' or
            (@clause = 'StructTreeRoot-Hn' and @testNumber = '1' and @failedChecks = '6')">Failed rules, Expected: 
            StructTreeRoot-Hn-1, 6 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEIndex' or
            (@clause = 'StructTreeRoot-Index' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Index-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEL' or
            (@clause = 'StructTreeRoot-L' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-L-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELBody' or
            (@clause = 'Part-LBody' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-LBody' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-LBody-1, 114 checks, or 
            StructTreeRoot-LBody-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELI' or
            (@clause = 'Part-LI' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-LI' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-LI-1, 114 checks, or 
            StructTreeRoot-LI-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELbl' or
            (@clause = 'StructTreeRoot-Lbl' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Lbl-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELink' or
            (@clause = 'StructTreeRoot-Link' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Link-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SENonStruct' or
            (@clause = 'StructTreeRoot-NonStruct' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-NonStruct-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SENote' or
            (@clause = '8.2.5.14' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'StructTreeRoot-Note' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.2.5.14-1, 115 checks, or 
            StructTreeRoot-Note-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEP' or
            (@clause = 'StructTreeRoot-P' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-P-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEPart' or
            (@clause = 'Em-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-Part' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'L-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Part-content' and @testNumber = '1' and @failedChecks = '57') or 
            (@clause = 'Quote-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-Part' and @testNumber = '1' and @failedChecks = '5') or 
            (@clause = 'Sub-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TH-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-Part' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-Part' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Em-Part-1, 2 checks, or 
            H-Part-1, 2 checks, or 
            Hn-Part-1, 12 checks, or 
            L-Part-1, 2 checks, or 
            LI-Part-1, 2 checks, or 
            Lbl-Part-1, 2 checks, or 
            P-Part-1, 2 checks, or 
            Part-content-1, 57 checks, or 
            Quote-Part-1, 2 checks, or 
            RB-Part-1, 2 checks, or 
            RP-Part-1, 2 checks, or 
            RT-Part-1, 2 checks, or 
            Reference-Part-1, 2 checks, or 
            Ruby-Part-1, 2 checks, or 
            Span-Part-1, 2 checks, or 
            Strong-Part-1, 2 checks, or 
            StructTreeRoot-Part-1, 5 checks, or 
            Sub-Part-1, 2 checks, or 
            TBody-Part-1, 2 checks, or 
            TD-Part-1, 2 checks, or 
            TFoot-Part-1, 2 checks, or 
            TH-Part-1, 2 checks, or 
            THead-Part-1, 2 checks, or 
            TOC-Part-1, 2 checks, or 
            TOCI-Part-1, 2 checks, or 
            TR-Part-1, 2 checks, or 
            Table-Part-1, 2 checks, or 
            WP-Part-1, 2 checks, or 
            WT-Part-1, 2 checks, or 
            Warichu-Part-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEPrivate' or
            (@clause = 'StructTreeRoot-Private' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Private-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEQuote' or
            (@clause = 'Part-Quote' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-Quote' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-Quote-1, 114 checks, or 
            StructTreeRoot-Quote-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERB' or
            (@clause = 'Part-RB' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-RB' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-RB-1, 114 checks, or 
            StructTreeRoot-RB-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERP' or
            (@clause = 'Part-RP' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-RP' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-RP-1, 114 checks, or 
            StructTreeRoot-RP-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERT' or
            (@clause = 'Part-RT' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-RT' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-RT-1, 114 checks, or 
            StructTreeRoot-RT-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEReference' or
            (@clause = 'StructTreeRoot-Reference' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Reference-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERuby' or
            (@clause = '8.2.5.23' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Part-Ruby' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-Ruby' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.2.5.23-1, 115 checks, or 
            Part-Ruby-1, 114 checks, or 
            StructTreeRoot-Ruby-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESect' or
            (@clause = 'StructTreeRoot-Sect' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Sect-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESimpleContentItem' or
            (@clause = '8.2.2' and @testNumber = '1' and @failedChecks = '114')">Failed rules, Expected: 
            8.2.2-1, 114 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESpan' or
            (@clause = 'Part-Span' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-Span' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-Span-1, 114 checks, or 
            StructTreeRoot-Span-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEStrong' or
            (@clause = 'Part-Strong' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-Strong' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-Strong-1, 114 checks, or 
            StructTreeRoot-Strong-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESub' or
            (@clause = 'StructTreeRoot-Sub' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Sub-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETBody' or
            (@clause = 'Part-TBody' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-TBody' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-TBody-1, 114 checks, or 
            StructTreeRoot-TBody-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETD' or
            (@clause = 'Part-TD' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-TD' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-TD-1, 114 checks, or 
            StructTreeRoot-TD-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETFoot' or
            (@clause = 'Part-TFoot' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-TFoot' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-TFoot-1, 114 checks, or 
            StructTreeRoot-TFoot-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETH' or
            (@clause = 'Part-TH' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-TH' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-TH-1, 114 checks, or 
            StructTreeRoot-TH-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETHead' or
            (@clause = 'Part-THead' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-THead' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-THead-1, 114 checks, or 
            StructTreeRoot-THead-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETOC' or
            (@clause = 'StructTreeRoot-TOC' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-TOC-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETOCI' or
            (@clause = '8.2.5.8' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'StructTreeRoot-TOCI' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.2.5.8-1, 115 checks, or 
            StructTreeRoot-TOCI-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETR' or
            (@clause = 'Part-TR' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-TR' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-TR-1, 114 checks, or 
            StructTreeRoot-TR-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETable' or
            (@clause = 'StructTreeRoot-Table' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Table-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETitle' or
            (@clause = 'StructTreeRoot-Title' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            StructTreeRoot-Title-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEWP' or
            (@clause = 'Part-WP' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-WP' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-WP-1, 114 checks, or 
            StructTreeRoot-WP-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEWT' or
            (@clause = 'Part-WT' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-WT' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            Part-WT-1, 114 checks, or 
            StructTreeRoot-WT-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEWarichu' or
            (@clause = '8.2.5.24' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Part-Warichu' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = 'StructTreeRoot-Warichu' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.2.5.24-1, 115 checks, or 
            Part-Warichu-1, 114 checks, or 
            StructTreeRoot-Warichu-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>


    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
