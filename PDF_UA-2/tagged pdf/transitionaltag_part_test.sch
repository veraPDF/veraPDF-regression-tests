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
            <sch:assert test="(@failedRules = '1646')">Failed check, Expected: 1646</sch:assert>	
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'CosDocument' or
            (@clause = '6.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '8.11.2' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.2-1, 1 check, or 
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
            (@clause = '8.2.5.27' and @testNumber = '1' and @failedChecks = '114')">Failed rules, Expected: 
            8.2.5.27-1, 114 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDStructTreeRoot' or
            (@clause = '8.2.5.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. StructTreeRoot-Document' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. StructTreeRoot-content' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.2.5.2-1, 1 check, or 
            Table 5. StructTreeRoot-Document-1, 1 check, or 
            Table 5. StructTreeRoot-content-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEAnnot' or
            (@clause = 'Table 5. Form-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Annot' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Annot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Annot' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Form-Annot-1, 2 checks, or 
            Table 5. L-Annot-1, 2 checks, or 
            Table 5. LI-Annot-1, 2 checks, or 
            Table 5. Ruby-Annot-1, 2 checks, or 
            Table 5. StructTreeRoot-Annot-1, 7 checks, or 
            Table 5. TBody-Annot-1, 2 checks, or 
            Table 5. TFoot-Annot-1, 2 checks, or 
            Table 5. THead-Annot-1, 2 checks, or 
            Table 5. TOC-Annot-1, 2 checks, or 
            Table 5. TOCI-Annot-1, 2 checks, or 
            Table 5. TR-Annot-1, 2 checks, or 
            Table 5. Table-Annot-1, 2 checks, or 
            Table 5. Warichu-Annot-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEArt' or
            (@clause = 'Table 5. Art-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Art-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. BibEntry-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Art' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Art' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Art' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Art-Art-1, 2 checks, or 
            Table 5. Art-H-1, 1 check, or 
            Table 5. Art-content-1, 1 check, or 
            Table 5. BibEntry-Art-1, 2 checks, or 
            Table 5. Code-Art-1, 2 checks, or 
            Table 5. Em-Art-1, 2 checks, or 
            Table 5. Form-Art-1, 2 checks, or 
            Table 5. Formula-Art-1, 2 checks, or 
            Table 5. Index-Art-1, 2 checks, or 
            Table 5. L-Art-1, 2 checks, or 
            Table 5. LI-Art-1, 2 checks, or 
            Table 5. Lbl-Art-1, 2 checks, or 
            Table 5. P-Art-1, 2 checks, or 
            Table 5. Quote-Art-1, 2 checks, or 
            Table 5. RB-Art-1, 2 checks, or 
            Table 5. RP-Art-1, 2 checks, or 
            Table 5. RT-Art-1, 2 checks, or 
            Table 5. Reference-Art-1, 2 checks, or 
            Table 5. Ruby-Art-1, 2 checks, or 
            Table 5. Span-Art-1, 2 checks, or 
            Table 5. Strong-Art-1, 2 checks, or 
            Table 5. StructTreeRoot-Art-1, 7 checks, or 
            Table 5. Sub-Art-1, 2 checks, or 
            Table 5. TBody-Art-1, 2 checks, or 
            Table 5. TFoot-Art-1, 2 checks, or 
            Table 5. THead-Art-1, 2 checks, or 
            Table 5. TOC-Art-1, 2 checks, or 
            Table 5. TOCI-Art-1, 2 checks, or 
            Table 5. TR-Art-1, 2 checks, or 
            Table 5. Table-Art-1, 2 checks, or 
            Table 5. Title-Art-1, 2 checks, or 
            Table 5. WP-Art-1, 2 checks, or 
            Table 5. WT-Art-1, 2 checks, or 
            Table 5. Warichu-Art-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEArtifact' or
            (@clause = 'Table 5. Artifact-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Artifact-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Ruby-Artifact' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Artifact' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Warichu-Artifact' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Artifact-Caption-1, 1 check, or 
            Table 5. Artifact-H-1, 1 check, or 
            Table 5. Ruby-Artifact-1, 2 checks, or 
            Table 5. StructTreeRoot-Artifact-1, 7 checks, or 
            Table 5. Warichu-Artifact-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEAside' or
            (@clause = 'Table 5. Aside-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Aside-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. BibEntry-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Aside' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Aside' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Aside' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Aside' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Aside-Aside-1, 2 checks, or 
            Table 5. Aside-Caption-1, 1 check, or 
            Table 5. Aside-H-1, 1 check, or 
            Table 5. BibEntry-Aside-1, 2 checks, or 
            Table 5. BlockQuote-Aside-1, 2 checks, or 
            Table 5. Code-Aside-1, 2 checks, or 
            Table 5. Em-Aside-1, 2 checks, or 
            Table 5. Form-Aside-1, 2 checks, or 
            Table 5. H-Aside-1, 2 checks, or 
            Table 5. Hn-Aside-1, 12 checks, or 
            Table 5. Index-Aside-1, 2 checks, or 
            Table 5. L-Aside-1, 2 checks, or 
            Table 5. LI-Aside-1, 2 checks, or 
            Table 5. Lbl-Aside-1, 2 checks, or 
            Table 5. P-Aside-1, 2 checks, or 
            Table 5. Quote-Aside-1, 2 checks, or 
            Table 5. RB-Aside-1, 2 checks, or 
            Table 5. RP-Aside-1, 2 checks, or 
            Table 5. RT-Aside-1, 2 checks, or 
            Table 5. Reference-Aside-1, 2 checks, or 
            Table 5. Ruby-Aside-1, 2 checks, or 
            Table 5. Span-Aside-1, 2 checks, or 
            Table 5. Strong-Aside-1, 2 checks, or 
            Table 5. StructTreeRoot-Aside-1, 7 checks, or 
            Table 5. Sub-Aside-1, 2 checks, or 
            Table 5. TBody-Aside-1, 2 checks, or 
            Table 5. TD-Aside-1, 2 checks, or 
            Table 5. TFoot-Aside-1, 2 checks, or 
            Table 5. TH-Aside-1, 2 checks, or 
            Table 5. THead-Aside-1, 2 checks, or 
            Table 5. TOC-Aside-1, 2 checks, or 
            Table 5. TOCI-Aside-1, 2 checks, or 
            Table 5. TR-Aside-1, 2 checks, or 
            Table 5. Table-Aside-1, 2 checks, or 
            Table 5. WP-Aside-1, 2 checks, or 
            Table 5. WT-Aside-1, 2 checks, or 
            Table 5. Warichu-Aside-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEBibEntry' or
            (@clause = 'Table 5. Art-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-BibEntry' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-BibEntry' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-BibEntry' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Art-BibEntry-1, 2 checks, or 
            Table 5. Aside-BibEntry-1, 2 checks, or 
            Table 5. BibEntry-BibEntry-1, 2 checks, or 
            Table 5. BlockQuote-BibEntry-1, 2 checks, or 
            Table 5. Document-BibEntry-1, 2 checks, or 
            Table 5. DocumentFragment-BibEntry-1, 2 checks, or 
            Table 5. FENote-BibEntry-1, 2 checks, or 
            Table 5. Index-BibEntry-1, 2 checks, or 
            Table 5. L-BibEntry-1, 2 checks, or 
            Table 5. LI-BibEntry-1, 2 checks, or 
            Table 5. RB-BibEntry-1, 2 checks, or 
            Table 5. RP-BibEntry-1, 2 checks, or 
            Table 5. RT-BibEntry-1, 2 checks, or 
            Table 5. Ruby-BibEntry-1, 2 checks, or 
            Table 5. Sect-BibEntry-1, 2 checks, or 
            Table 5. StructTreeRoot-BibEntry-1, 7 checks, or 
            Table 5. TBody-BibEntry-1, 2 checks, or 
            Table 5. TFoot-BibEntry-1, 2 checks, or 
            Table 5. THead-BibEntry-1, 2 checks, or 
            Table 5. TOC-BibEntry-1, 2 checks, or 
            Table 5. TOCI-BibEntry-1, 2 checks, or 
            Table 5. TR-BibEntry-1, 2 checks, or 
            Table 5. Table-BibEntry-1, 2 checks, or 
            Table 5. WP-BibEntry-1, 2 checks, or 
            Table 5. WT-BibEntry-1, 2 checks, or 
            Table 5. Warichu-BibEntry-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEBlockQuote' or
            (@clause = 'Table 5. BibEntry-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. BlockQuote-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Code-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-BlockQuote' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-BlockQuote' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-BlockQuote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-BlockQuote' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. BibEntry-BlockQuote-1, 2 checks, or 
            Table 5. BlockQuote-Caption-1, 1 check, or 
            Table 5. BlockQuote-H-1, 1 check, or 
            Table 5. Code-BlockQuote-1, 2 checks, or 
            Table 5. Em-BlockQuote-1, 2 checks, or 
            Table 5. Form-BlockQuote-1, 2 checks, or 
            Table 5. H-BlockQuote-1, 2 checks, or 
            Table 5. Hn-BlockQuote-1, 12 checks, or 
            Table 5. Index-BlockQuote-1, 2 checks, or 
            Table 5. L-BlockQuote-1, 2 checks, or 
            Table 5. LI-BlockQuote-1, 2 checks, or 
            Table 5. Lbl-BlockQuote-1, 2 checks, or 
            Table 5. P-BlockQuote-1, 2 checks, or 
            Table 5. Quote-BlockQuote-1, 2 checks, or 
            Table 5. RB-BlockQuote-1, 2 checks, or 
            Table 5. RP-BlockQuote-1, 2 checks, or 
            Table 5. RT-BlockQuote-1, 2 checks, or 
            Table 5. Reference-BlockQuote-1, 2 checks, or 
            Table 5. Ruby-BlockQuote-1, 2 checks, or 
            Table 5. Span-BlockQuote-1, 2 checks, or 
            Table 5. Strong-BlockQuote-1, 2 checks, or 
            Table 5. StructTreeRoot-BlockQuote-1, 7 checks, or 
            Table 5. Sub-BlockQuote-1, 2 checks, or 
            Table 5. TBody-BlockQuote-1, 2 checks, or 
            Table 5. TD-BlockQuote-1, 2 checks, or 
            Table 5. TFoot-BlockQuote-1, 2 checks, or 
            Table 5. TH-BlockQuote-1, 2 checks, or 
            Table 5. THead-BlockQuote-1, 2 checks, or 
            Table 5. TOC-BlockQuote-1, 2 checks, or 
            Table 5. TOCI-BlockQuote-1, 2 checks, or 
            Table 5. TR-BlockQuote-1, 2 checks, or 
            Table 5. Table-BlockQuote-1, 2 checks, or 
            Table 5. Title-BlockQuote-1, 2 checks, or 
            Table 5. WP-BlockQuote-1, 2 checks, or 
            Table 5. WT-BlockQuote-1, 2 checks, or 
            Table 5. Warichu-BlockQuote-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SECaption' or
            (@clause = 'Table 5. BibEntry-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Code-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Caption' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. LI-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Caption' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Caption' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Caption' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. BibEntry-Caption-1, 2 checks, or 
            Table 5. Caption-Caption-1, 2 checks, or 
            Table 5. Caption-H-1, 1 check, or 
            Table 5. Code-Caption-1, 2 checks, or 
            Table 5. Document-Caption-1, 2 checks, or 
            Table 5. DocumentFragment-Caption-1, 2 checks, or 
            Table 5. Em-Caption-1, 2 checks, or 
            Table 5. H-Caption-1, 2 checks, or 
            Table 5. Hn-Caption-1, 12 checks, or 
            Table 5. LI-Caption-1, 2 checks, or 
            Table 5. Lbl-Caption-1, 2 checks, or 
            Table 5. P-Caption-1, 2 checks, or 
            Table 5. Quote-Caption-1, 2 checks, or 
            Table 5. RB-Caption-1, 2 checks, or 
            Table 5. RP-Caption-1, 2 checks, or 
            Table 5. RT-Caption-1, 2 checks, or 
            Table 5. Reference-Caption-1, 2 checks, or 
            Table 5. Ruby-Caption-1, 2 checks, or 
            Table 5. Span-Caption-1, 2 checks, or 
            Table 5. Strong-Caption-1, 2 checks, or 
            Table 5. StructTreeRoot-Caption-1, 7 checks, or 
            Table 5. Sub-Caption-1, 2 checks, or 
            Table 5. TBody-Caption-1, 2 checks, or 
            Table 5. TD-Caption-1, 2 checks, or 
            Table 5. TFoot-Caption-1, 2 checks, or 
            Table 5. TH-Caption-1, 2 checks, or 
            Table 5. THead-Caption-1, 2 checks, or 
            Table 5. TOCI-Caption-1, 2 checks, or 
            Table 5. TR-Caption-1, 2 checks, or 
            Table 5. WP-Caption-1, 2 checks, or 
            Table 5. WT-Caption-1, 2 checks, or 
            Table 5. Warichu-Caption-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SECode' or
            (@clause = 'Table 5. BibEntry-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Code' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Code' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Code' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. BibEntry-Code-1, 2 checks, or 
            Table 5. Code-Code-1, 2 checks, or 
            Table 5. Index-Code-1, 2 checks, or 
            Table 5. L-Code-1, 2 checks, or 
            Table 5. LI-Code-1, 2 checks, or 
            Table 5. RB-Code-1, 2 checks, or 
            Table 5. RP-Code-1, 2 checks, or 
            Table 5. RT-Code-1, 2 checks, or 
            Table 5. Reference-Code-1, 2 checks, or 
            Table 5. Ruby-Code-1, 2 checks, or 
            Table 5. StructTreeRoot-Code-1, 7 checks, or 
            Table 5. TBody-Code-1, 2 checks, or 
            Table 5. TFoot-Code-1, 2 checks, or 
            Table 5. THead-Code-1, 2 checks, or 
            Table 5. TOC-Code-1, 2 checks, or 
            Table 5. TOCI-Code-1, 2 checks, or 
            Table 5. TR-Code-1, 2 checks, or 
            Table 5. Table-Code-1, 2 checks, or 
            Table 5. WP-Code-1, 2 checks, or 
            Table 5. WT-Code-1, 2 checks, or 
            Table 5. Warichu-Code-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEDiv' or
            (@clause = 'Table 5. Em-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Div' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. L-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Div' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Div' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Div' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Em-Div-1, 2 checks, or 
            Table 5. H-Div-1, 2 checks, or 
            Table 5. Hn-Div-1, 12 checks, or 
            Table 5. L-Div-1, 2 checks, or 
            Table 5. Lbl-Div-1, 2 checks, or 
            Table 5. P-Div-1, 2 checks, or 
            Table 5. Quote-Div-1, 2 checks, or 
            Table 5. RB-Div-1, 2 checks, or 
            Table 5. RP-Div-1, 2 checks, or 
            Table 5. RT-Div-1, 2 checks, or 
            Table 5. Reference-Div-1, 2 checks, or 
            Table 5. Ruby-Div-1, 2 checks, or 
            Table 5. Span-Div-1, 2 checks, or 
            Table 5. Strong-Div-1, 2 checks, or 
            Table 5. StructTreeRoot-Div-1, 7 checks, or 
            Table 5. Sub-Div-1, 2 checks, or 
            Table 5. TBody-Div-1, 2 checks, or 
            Table 5. TFoot-Div-1, 2 checks, or 
            Table 5. THead-Div-1, 2 checks, or 
            Table 5. TOC-Div-1, 2 checks, or 
            Table 5. TR-Div-1, 2 checks, or 
            Table 5. Table-Div-1, 2 checks, or 
            Table 5. WP-Div-1, 2 checks, or 
            Table 5. WT-Div-1, 2 checks, or 
            Table 5. Warichu-Div-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEDocument' or
            (@clause = 'Table 5. Annot-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Document-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Em-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Document' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sub-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Document' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Document' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-Document-1, 2 checks, or 
            Table 5. Art-Document-1, 2 checks, or 
            Table 5. BibEntry-Document-1, 2 checks, or 
            Table 5. Caption-Document-1, 2 checks, or 
            Table 5. Code-Document-1, 2 checks, or 
            Table 5. Document-H-1, 1 check, or 
            Table 5. Document-content-1, 1 check, or 
            Table 5. Em-Document-1, 2 checks, or 
            Table 5. FENote-Document-1, 2 checks, or 
            Table 5. Figure-Document-1, 2 checks, or 
            Table 5. Form-Document-1, 2 checks, or 
            Table 5. Formula-Document-1, 2 checks, or 
            Table 5. H-Document-1, 2 checks, or 
            Table 5. Hn-Document-1, 12 checks, or 
            Table 5. Index-Document-1, 2 checks, or 
            Table 5. L-Document-1, 2 checks, or 
            Table 5. LBody-Document-1, 2 checks, or 
            Table 5. LI-Document-1, 2 checks, or 
            Table 5. Lbl-Document-1, 2 checks, or 
            Table 5. Link-Document-1, 2 checks, or 
            Table 5. Note-Document-1, 2 checks, or 
            Table 5. P-Document-1, 2 checks, or 
            Table 5. Quote-Document-1, 2 checks, or 
            Table 5. RB-Document-1, 2 checks, or 
            Table 5. RP-Document-1, 2 checks, or 
            Table 5. RT-Document-1, 2 checks, or 
            Table 5. Reference-Document-1, 2 checks, or 
            Table 5. Ruby-Document-1, 2 checks, or 
            Table 5. Sect-Document-1, 2 checks, or 
            Table 5. Span-Document-1, 2 checks, or 
            Table 5. Strong-Document-1, 2 checks, or 
            Table 5. Sub-Document-1, 2 checks, or 
            Table 5. TBody-Document-1, 2 checks, or 
            Table 5. TD-Document-1, 2 checks, or 
            Table 5. TFoot-Document-1, 2 checks, or 
            Table 5. TH-Document-1, 2 checks, or 
            Table 5. THead-Document-1, 2 checks, or 
            Table 5. TOC-Document-1, 2 checks, or 
            Table 5. TOCI-Document-1, 2 checks, or 
            Table 5. TR-Document-1, 2 checks, or 
            Table 5. Table-Document-1, 2 checks, or 
            Table 5. Title-Document-1, 2 checks, or 
            Table 5. WP-Document-1, 2 checks, or 
            Table 5. WT-Document-1, 2 checks, or 
            Table 5. Warichu-Document-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEDocumentFragment' or
            (@clause = 'Table 5. BibEntry-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. DocumentFragment-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Em-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-DocumentFragment' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-DocumentFragment' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-DocumentFragment' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-DocumentFragment' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. BibEntry-DocumentFragment-1, 2 checks, or 
            Table 5. DocumentFragment-H-1, 1 check, or 
            Table 5. DocumentFragment-content-1, 1 check, or 
            Table 5. Em-DocumentFragment-1, 2 checks, or 
            Table 5. Figure-DocumentFragment-1, 2 checks, or 
            Table 5. Form-DocumentFragment-1, 2 checks, or 
            Table 5. Formula-DocumentFragment-1, 2 checks, or 
            Table 5. H-DocumentFragment-1, 2 checks, or 
            Table 5. Hn-DocumentFragment-1, 12 checks, or 
            Table 5. Index-DocumentFragment-1, 2 checks, or 
            Table 5. L-DocumentFragment-1, 2 checks, or 
            Table 5. LBody-DocumentFragment-1, 2 checks, or 
            Table 5. LI-DocumentFragment-1, 2 checks, or 
            Table 5. Lbl-DocumentFragment-1, 2 checks, or 
            Table 5. P-DocumentFragment-1, 2 checks, or 
            Table 5. Quote-DocumentFragment-1, 2 checks, or 
            Table 5. RB-DocumentFragment-1, 2 checks, or 
            Table 5. RP-DocumentFragment-1, 2 checks, or 
            Table 5. RT-DocumentFragment-1, 2 checks, or 
            Table 5. Reference-DocumentFragment-1, 2 checks, or 
            Table 5. Ruby-DocumentFragment-1, 2 checks, or 
            Table 5. Span-DocumentFragment-1, 2 checks, or 
            Table 5. Strong-DocumentFragment-1, 2 checks, or 
            Table 5. StructTreeRoot-DocumentFragment-1, 7 checks, or 
            Table 5. Sub-DocumentFragment-1, 2 checks, or 
            Table 5. TBody-DocumentFragment-1, 2 checks, or 
            Table 5. TD-DocumentFragment-1, 2 checks, or 
            Table 5. TFoot-DocumentFragment-1, 2 checks, or 
            Table 5. TH-DocumentFragment-1, 2 checks, or 
            Table 5. THead-DocumentFragment-1, 2 checks, or 
            Table 5. TOC-DocumentFragment-1, 2 checks, or 
            Table 5. TOCI-DocumentFragment-1, 2 checks, or 
            Table 5. TR-DocumentFragment-1, 2 checks, or 
            Table 5. Table-DocumentFragment-1, 2 checks, or 
            Table 5. Title-DocumentFragment-1, 2 checks, or 
            Table 5. WP-DocumentFragment-1, 2 checks, or 
            Table 5. WT-DocumentFragment-1, 2 checks, or 
            Table 5. Warichu-DocumentFragment-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEEm' or
            (@clause = 'Table 5. Art-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Em' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Em' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Em' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Art-Em-1, 2 checks, or 
            Table 5. Aside-Em-1, 2 checks, or 
            Table 5. BlockQuote-Em-1, 2 checks, or 
            Table 5. Document-Em-1, 2 checks, or 
            Table 5. DocumentFragment-Em-1, 2 checks, or 
            Table 5. Form-Em-1, 2 checks, or 
            Table 5. Index-Em-1, 2 checks, or 
            Table 5. L-Em-1, 2 checks, or 
            Table 5. LI-Em-1, 2 checks, or 
            Table 5. Ruby-Em-1, 2 checks, or 
            Table 5. Sect-Em-1, 2 checks, or 
            Table 5. StructTreeRoot-Em-1, 7 checks, or 
            Table 5. TBody-Em-1, 2 checks, or 
            Table 5. TFoot-Em-1, 2 checks, or 
            Table 5. THead-Em-1, 2 checks, or 
            Table 5. TOC-Em-1, 2 checks, or 
            Table 5. TOCI-Em-1, 2 checks, or 
            Table 5. TR-Em-1, 2 checks, or 
            Table 5. Table-Em-1, 2 checks, or 
            Table 5. Warichu-Em-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEFENote' or
            (@clause = 'Table 5. L-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-FENote' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-FENote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-FENote' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. L-FENote-1, 2 checks, or 
            Table 5. LI-FENote-1, 2 checks, or 
            Table 5. RB-FENote-1, 2 checks, or 
            Table 5. RP-FENote-1, 2 checks, or 
            Table 5. RT-FENote-1, 2 checks, or 
            Table 5. Ruby-FENote-1, 2 checks, or 
            Table 5. StructTreeRoot-FENote-1, 7 checks, or 
            Table 5. TBody-FENote-1, 2 checks, or 
            Table 5. TFoot-FENote-1, 2 checks, or 
            Table 5. THead-FENote-1, 2 checks, or 
            Table 5. TOC-FENote-1, 2 checks, or 
            Table 5. TOCI-FENote-1, 2 checks, or 
            Table 5. TR-FENote-1, 2 checks, or 
            Table 5. Table-FENote-1, 2 checks, or 
            Table 5. WP-FENote-1, 2 checks, or 
            Table 5. WT-FENote-1, 2 checks, or 
            Table 5. Warichu-FENote-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEFigure' or
            (@clause = '8.2.5.28.2' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Table 5. Code-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Figure-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. L-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Figure' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Figure' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Figure' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.28.2-1, 115 checks, or 
            Table 5. Code-Figure-1, 2 checks, or 
            Table 5. Figure-Caption-1, 1 check, or 
            Table 5. Figure-H-1, 1 check, or 
            Table 5. L-Figure-1, 2 checks, or 
            Table 5. LI-Figure-1, 2 checks, or 
            Table 5. RB-Figure-1, 2 checks, or 
            Table 5. RP-Figure-1, 2 checks, or 
            Table 5. RT-Figure-1, 2 checks, or 
            Table 5. Ruby-Figure-1, 2 checks, or 
            Table 5. StructTreeRoot-Figure-1, 7 checks, or 
            Table 5. TBody-Figure-1, 2 checks, or 
            Table 5. TFoot-Figure-1, 2 checks, or 
            Table 5. THead-Figure-1, 2 checks, or 
            Table 5. TOC-Figure-1, 2 checks, or 
            Table 5. TOCI-Figure-1, 2 checks, or 
            Table 5. TR-Figure-1, 2 checks, or 
            Table 5. Table-Figure-1, 2 checks, or 
            Table 5. WP-Figure-1, 2 checks, or 
            Table 5. WT-Figure-1, 2 checks, or 
            Table 5. Warichu-Figure-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEForm' or
            (@clause = 'Table 5. BibEntry-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Form-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Form' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Form' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Form' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. BibEntry-Form-1, 2 checks, or 
            Table 5. Code-Form-1, 2 checks, or 
            Table 5. Form-Caption-1, 1 check, or 
            Table 5. Form-Form-1, 2 checks, or 
            Table 5. Index-Form-1, 2 checks, or 
            Table 5. L-Form-1, 2 checks, or 
            Table 5. LI-Form-1, 2 checks, or 
            Table 5. Reference-Form-1, 2 checks, or 
            Table 5. Ruby-Form-1, 2 checks, or 
            Table 5. StructTreeRoot-Form-1, 7 checks, or 
            Table 5. TBody-Form-1, 2 checks, or 
            Table 5. TFoot-Form-1, 2 checks, or 
            Table 5. THead-Form-1, 2 checks, or 
            Table 5. TOC-Form-1, 2 checks, or 
            Table 5. TOCI-Form-1, 2 checks, or 
            Table 5. TR-Form-1, 2 checks, or 
            Table 5. Table-Form-1, 2 checks, or 
            Table 5. Warichu-Form-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEFormula' or
            (@clause = 'Table 5. BibEntry-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Formula-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. L-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Formula' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Formula' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Formula' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. BibEntry-Formula-1, 2 checks, or 
            Table 5. Code-Formula-1, 2 checks, or 
            Table 5. Formula-Caption-1, 1 check, or 
            Table 5. Formula-H-1, 1 check, or 
            Table 5. L-Formula-1, 2 checks, or 
            Table 5. LI-Formula-1, 2 checks, or 
            Table 5. RB-Formula-1, 2 checks, or 
            Table 5. RP-Formula-1, 2 checks, or 
            Table 5. RT-Formula-1, 2 checks, or 
            Table 5. Reference-Formula-1, 2 checks, or 
            Table 5. Ruby-Formula-1, 2 checks, or 
            Table 5. StructTreeRoot-Formula-1, 7 checks, or 
            Table 5. TBody-Formula-1, 2 checks, or 
            Table 5. TFoot-Formula-1, 2 checks, or 
            Table 5. THead-Formula-1, 2 checks, or 
            Table 5. TOC-Formula-1, 2 checks, or 
            Table 5. TOCI-Formula-1, 2 checks, or 
            Table 5. TR-Formula-1, 2 checks, or 
            Table 5. Table-Formula-1, 2 checks, or 
            Table 5. WP-Formula-1, 2 checks, or 
            Table 5. WT-Formula-1, 2 checks, or 
            Table 5. Warichu-Formula-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEH' or
            (@clause = '8.2.5.12' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Table 5. BibEntry-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Art' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. H-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Sect' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Hn-H' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. L-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-H' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-H' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-H' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.12-1, 115 checks, or 
            Table 5. BibEntry-H-1, 2 checks, or 
            Table 5. Code-H-1, 2 checks, or 
            Table 5. Em-H-1, 2 checks, or 
            Table 5. FENote-H-1, 2 checks, or 
            Table 5. Form-H-1, 2 checks, or 
            Table 5. H-Art-1, 1 check, or 
            Table 5. H-H-1, 2 checks, or 
            Table 5. H-Sect-1, 1 check, or 
            Table 5. Hn-H-1, 12 checks, or 
            Table 5. L-H-1, 2 checks, or 
            Table 5. LI-H-1, 2 checks, or 
            Table 5. Lbl-H-1, 2 checks, or 
            Table 5. Note-H-1, 2 checks, or 
            Table 5. P-H-1, 2 checks, or 
            Table 5. Quote-H-1, 2 checks, or 
            Table 5. RB-H-1, 2 checks, or 
            Table 5. RP-H-1, 2 checks, or 
            Table 5. RT-H-1, 2 checks, or 
            Table 5. Reference-H-1, 2 checks, or 
            Table 5. Ruby-H-1, 2 checks, or 
            Table 5. Span-H-1, 2 checks, or 
            Table 5. Strong-H-1, 2 checks, or 
            Table 5. StructTreeRoot-H-1, 7 checks, or 
            Table 5. Sub-H-1, 2 checks, or 
            Table 5. TBody-H-1, 2 checks, or 
            Table 5. TFoot-H-1, 2 checks, or 
            Table 5. THead-H-1, 2 checks, or 
            Table 5. TOC-H-1, 2 checks, or 
            Table 5. TOCI-H-1, 2 checks, or 
            Table 5. TR-H-1, 2 checks, or 
            Table 5. Table-H-1, 2 checks, or 
            Table 5. Title-H-1, 2 checks, or 
            Table 5. WP-H-1, 2 checks, or 
            Table 5. WT-H-1, 2 checks, or 
            Table 5. Warichu-H-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEHn' or
            (@clause = 'Table 5. BibEntry-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Code-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Em-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. FENote-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Form-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. H-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Hn-Art' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = 'Table 5. Hn-Hn' and @testNumber = '1' and @failedChecks = '72') or 
            (@clause = 'Table 5. Hn-Sect' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = 'Table 5. L-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. LI-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Lbl-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Note-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. P-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Quote-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. RB-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. RP-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. RT-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Reference-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Ruby-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Span-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Strong-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. StructTreeRoot-Hn' and @testNumber = '1' and @failedChecks = '42') or 
            (@clause = 'Table 5. Sub-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. TBody-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. TFoot-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. THead-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. TOC-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. TOCI-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. TR-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Table-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Title-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. WP-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. WT-Hn' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Warichu-Hn' and @testNumber = '1' and @failedChecks = '12')">Failed rules, Expected: 
            Table 5. BibEntry-Hn-1, 12 checks, or 
            Table 5. Code-Hn-1, 12 checks, or 
            Table 5. Em-Hn-1, 12 checks, or 
            Table 5. FENote-Hn-1, 12 checks, or 
            Table 5. Form-Hn-1, 12 checks, or 
            Table 5. H-Hn-1, 12 checks, or 
            Table 5. Hn-Art-1, 6 checks, or 
            Table 5. Hn-Hn-1, 72 checks, or 
            Table 5. Hn-Sect-1, 6 checks, or 
            Table 5. L-Hn-1, 12 checks, or 
            Table 5. LI-Hn-1, 12 checks, or 
            Table 5. Lbl-Hn-1, 12 checks, or 
            Table 5. Note-Hn-1, 12 checks, or 
            Table 5. P-Hn-1, 12 checks, or 
            Table 5. Quote-Hn-1, 12 checks, or 
            Table 5. RB-Hn-1, 12 checks, or 
            Table 5. RP-Hn-1, 12 checks, or 
            Table 5. RT-Hn-1, 12 checks, or 
            Table 5. Reference-Hn-1, 12 checks, or 
            Table 5. Ruby-Hn-1, 12 checks, or 
            Table 5. Span-Hn-1, 12 checks, or 
            Table 5. Strong-Hn-1, 12 checks, or 
            Table 5. StructTreeRoot-Hn-1, 42 checks, or 
            Table 5. Sub-Hn-1, 12 checks, or 
            Table 5. TBody-Hn-1, 12 checks, or 
            Table 5. TFoot-Hn-1, 12 checks, or 
            Table 5. THead-Hn-1, 12 checks, or 
            Table 5. TOC-Hn-1, 12 checks, or 
            Table 5. TOCI-Hn-1, 12 checks, or 
            Table 5. TR-Hn-1, 12 checks, or 
            Table 5. Table-Hn-1, 12 checks, or 
            Table 5. Title-Hn-1, 12 checks, or 
            Table 5. WP-Hn-1, 12 checks, or 
            Table 5. WT-Hn-1, 12 checks, or 
            Table 5. Warichu-Hn-1, 12 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEIndex' or
            (@clause = 'Table 5. Annot-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Index' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. L-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Index' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Index' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Index' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-Index-1, 2 checks, or 
            Table 5. BibEntry-Index-1, 2 checks, or 
            Table 5. Code-Index-1, 2 checks, or 
            Table 5. Em-Index-1, 2 checks, or 
            Table 5. FENote-Index-1, 2 checks, or 
            Table 5. Form-Index-1, 2 checks, or 
            Table 5. H-Index-1, 2 checks, or 
            Table 5. Hn-Index-1, 12 checks, or 
            Table 5. Index-Index-1, 2 checks, or 
            Table 5. Index-content-1, 1 check, or 
            Table 5. L-Index-1, 2 checks, or 
            Table 5. LI-Index-1, 2 checks, or 
            Table 5. Lbl-Index-1, 2 checks, or 
            Table 5. Link-Index-1, 2 checks, or 
            Table 5. P-Index-1, 2 checks, or 
            Table 5. Quote-Index-1, 2 checks, or 
            Table 5. RB-Index-1, 2 checks, or 
            Table 5. RP-Index-1, 2 checks, or 
            Table 5. RT-Index-1, 2 checks, or 
            Table 5. Reference-Index-1, 2 checks, or 
            Table 5. Ruby-Index-1, 2 checks, or 
            Table 5. Span-Index-1, 2 checks, or 
            Table 5. Strong-Index-1, 2 checks, or 
            Table 5. StructTreeRoot-Index-1, 7 checks, or 
            Table 5. Sub-Index-1, 2 checks, or 
            Table 5. TBody-Index-1, 2 checks, or 
            Table 5. TFoot-Index-1, 2 checks, or 
            Table 5. THead-Index-1, 2 checks, or 
            Table 5. TOC-Index-1, 2 checks, or 
            Table 5. TOCI-Index-1, 2 checks, or 
            Table 5. TR-Index-1, 2 checks, or 
            Table 5. Table-Index-1, 2 checks, or 
            Table 5. Title-Index-1, 2 checks, or 
            Table 5. WP-Index-1, 2 checks, or 
            Table 5. WT-Index-1, 2 checks, or 
            Table 5. Warichu-Index-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEL' or
            (@clause = 'Table 5. BibEntry-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-L' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. L-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. L-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. LI-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-L' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-L' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-L' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. BibEntry-L-1, 2 checks, or 
            Table 5. Code-L-1, 2 checks, or 
            Table 5. Em-L-1, 2 checks, or 
            Table 5. H-L-1, 2 checks, or 
            Table 5. Hn-L-1, 12 checks, or 
            Table 5. L-Caption-1, 1 check, or 
            Table 5. L-content-1, 1 check, or 
            Table 5. LI-L-1, 2 checks, or 
            Table 5. Lbl-L-1, 2 checks, or 
            Table 5. Quote-L-1, 2 checks, or 
            Table 5. RB-L-1, 2 checks, or 
            Table 5. RP-L-1, 2 checks, or 
            Table 5. RT-L-1, 2 checks, or 
            Table 5. Reference-L-1, 2 checks, or 
            Table 5. Ruby-L-1, 2 checks, or 
            Table 5. Span-L-1, 2 checks, or 
            Table 5. Strong-L-1, 2 checks, or 
            Table 5. StructTreeRoot-L-1, 7 checks, or 
            Table 5. TBody-L-1, 2 checks, or 
            Table 5. TFoot-L-1, 2 checks, or 
            Table 5. THead-L-1, 2 checks, or 
            Table 5. TOC-L-1, 2 checks, or 
            Table 5. TOCI-L-1, 2 checks, or 
            Table 5. TR-L-1, 2 checks, or 
            Table 5. Table-L-1, 2 checks, or 
            Table 5. WP-L-1, 2 checks, or 
            Table 5. WT-L-1, 2 checks, or 
            Table 5. Warichu-L-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELBody' or
            (@clause = 'Table 5. Annot-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-LBody' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. LBody-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. LBody-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-LBody' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-LBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-LBody' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-LBody-1, 2 checks, or 
            Table 5. Art-LBody-1, 2 checks, or 
            Table 5. Aside-LBody-1, 2 checks, or 
            Table 5. BibEntry-LBody-1, 2 checks, or 
            Table 5. BlockQuote-LBody-1, 2 checks, or 
            Table 5. Caption-LBody-1, 2 checks, or 
            Table 5. Code-LBody-1, 2 checks, or 
            Table 5. Document-LBody-1, 2 checks, or 
            Table 5. DocumentFragment-LBody-1, 2 checks, or 
            Table 5. Em-LBody-1, 2 checks, or 
            Table 5. FENote-LBody-1, 2 checks, or 
            Table 5. Figure-LBody-1, 2 checks, or 
            Table 5. Form-LBody-1, 2 checks, or 
            Table 5. Formula-LBody-1, 2 checks, or 
            Table 5. H-LBody-1, 2 checks, or 
            Table 5. Hn-LBody-1, 12 checks, or 
            Table 5. Index-LBody-1, 2 checks, or 
            Table 5. L-LBody-1, 2 checks, or 
            Table 5. LBody-Caption-1, 1 check, or 
            Table 5. LBody-H-1, 1 check, or 
            Table 5. LBody-LBody-1, 2 checks, or 
            Table 5. Lbl-LBody-1, 2 checks, or 
            Table 5. Link-LBody-1, 2 checks, or 
            Table 5. Note-LBody-1, 2 checks, or 
            Table 5. P-LBody-1, 2 checks, or 
            Table 5. Quote-LBody-1, 2 checks, or 
            Table 5. RB-LBody-1, 2 checks, or 
            Table 5. RP-LBody-1, 2 checks, or 
            Table 5. RT-LBody-1, 2 checks, or 
            Table 5. Reference-LBody-1, 2 checks, or 
            Table 5. Ruby-LBody-1, 2 checks, or 
            Table 5. Sect-LBody-1, 2 checks, or 
            Table 5. Span-LBody-1, 2 checks, or 
            Table 5. Strong-LBody-1, 2 checks, or 
            Table 5. StructTreeRoot-LBody-1, 7 checks, or 
            Table 5. Sub-LBody-1, 2 checks, or 
            Table 5. TBody-LBody-1, 2 checks, or 
            Table 5. TD-LBody-1, 2 checks, or 
            Table 5. TFoot-LBody-1, 2 checks, or 
            Table 5. TH-LBody-1, 2 checks, or 
            Table 5. THead-LBody-1, 2 checks, or 
            Table 5. TOC-LBody-1, 2 checks, or 
            Table 5. TOCI-LBody-1, 2 checks, or 
            Table 5. TR-LBody-1, 2 checks, or 
            Table 5. Table-LBody-1, 2 checks, or 
            Table 5. Title-LBody-1, 2 checks, or 
            Table 5. WP-LBody-1, 2 checks, or 
            Table 5. WT-LBody-1, 2 checks, or 
            Table 5. Warichu-LBody-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELI' or
            (@clause = '8.2.5.25' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = 'Table 5. Annot-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-LI' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-LI' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-LI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-LI' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.25-2, 1 check, or 
            Table 5. Annot-LI-1, 2 checks, or 
            Table 5. Art-LI-1, 2 checks, or 
            Table 5. Aside-LI-1, 2 checks, or 
            Table 5. BibEntry-LI-1, 2 checks, or 
            Table 5. BlockQuote-LI-1, 2 checks, or 
            Table 5. Caption-LI-1, 2 checks, or 
            Table 5. Code-LI-1, 2 checks, or 
            Table 5. Document-LI-1, 2 checks, or 
            Table 5. DocumentFragment-LI-1, 2 checks, or 
            Table 5. Em-LI-1, 2 checks, or 
            Table 5. FENote-LI-1, 2 checks, or 
            Table 5. Figure-LI-1, 2 checks, or 
            Table 5. Form-LI-1, 2 checks, or 
            Table 5. Formula-LI-1, 2 checks, or 
            Table 5. H-LI-1, 2 checks, or 
            Table 5. Hn-LI-1, 12 checks, or 
            Table 5. Index-LI-1, 2 checks, or 
            Table 5. LBody-LI-1, 2 checks, or 
            Table 5. LI-LI-1, 2 checks, or 
            Table 5. Lbl-LI-1, 2 checks, or 
            Table 5. Link-LI-1, 2 checks, or 
            Table 5. Note-LI-1, 2 checks, or 
            Table 5. P-LI-1, 2 checks, or 
            Table 5. Quote-LI-1, 2 checks, or 
            Table 5. RB-LI-1, 2 checks, or 
            Table 5. RP-LI-1, 2 checks, or 
            Table 5. RT-LI-1, 2 checks, or 
            Table 5. Reference-LI-1, 2 checks, or 
            Table 5. Ruby-LI-1, 2 checks, or 
            Table 5. Sect-LI-1, 2 checks, or 
            Table 5. Span-LI-1, 2 checks, or 
            Table 5. Strong-LI-1, 2 checks, or 
            Table 5. StructTreeRoot-LI-1, 7 checks, or 
            Table 5. Sub-LI-1, 2 checks, or 
            Table 5. TBody-LI-1, 2 checks, or 
            Table 5. TD-LI-1, 2 checks, or 
            Table 5. TFoot-LI-1, 2 checks, or 
            Table 5. TH-LI-1, 2 checks, or 
            Table 5. THead-LI-1, 2 checks, or 
            Table 5. TOC-LI-1, 2 checks, or 
            Table 5. TOCI-LI-1, 2 checks, or 
            Table 5. TR-LI-1, 2 checks, or 
            Table 5. Table-LI-1, 2 checks, or 
            Table 5. Title-LI-1, 2 checks, or 
            Table 5. WP-LI-1, 2 checks, or 
            Table 5. WT-LI-1, 2 checks, or 
            Table 5. Warichu-LI-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELbl' or
            (@clause = 'Table 5. Code-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Lbl' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Lbl' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Lbl' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Code-Lbl-1, 2 checks, or 
            Table 5. Document-Lbl-1, 2 checks, or 
            Table 5. DocumentFragment-Lbl-1, 2 checks, or 
            Table 5. Index-Lbl-1, 2 checks, or 
            Table 5. L-Lbl-1, 2 checks, or 
            Table 5. LBody-Lbl-1, 2 checks, or 
            Table 5. Lbl-Lbl-1, 2 checks, or 
            Table 5. RB-Lbl-1, 2 checks, or 
            Table 5. RP-Lbl-1, 2 checks, or 
            Table 5. RT-Lbl-1, 2 checks, or 
            Table 5. Ruby-Lbl-1, 2 checks, or 
            Table 5. StructTreeRoot-Lbl-1, 7 checks, or 
            Table 5. TBody-Lbl-1, 2 checks, or 
            Table 5. TFoot-Lbl-1, 2 checks, or 
            Table 5. THead-Lbl-1, 2 checks, or 
            Table 5. TOC-Lbl-1, 2 checks, or 
            Table 5. TR-Lbl-1, 2 checks, or 
            Table 5. Table-Lbl-1, 2 checks, or 
            Table 5. WP-Lbl-1, 2 checks, or 
            Table 5. WT-Lbl-1, 2 checks, or 
            Table 5. Warichu-Lbl-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELink' or
            (@clause = 'Table 5. Form-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Link' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Link' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Link' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Form-Link-1, 2 checks, or 
            Table 5. Index-Link-1, 2 checks, or 
            Table 5. L-Link-1, 2 checks, or 
            Table 5. LI-Link-1, 2 checks, or 
            Table 5. Link-Link-1, 2 checks, or 
            Table 5. Ruby-Link-1, 2 checks, or 
            Table 5. StructTreeRoot-Link-1, 7 checks, or 
            Table 5. TBody-Link-1, 2 checks, or 
            Table 5. TFoot-Link-1, 2 checks, or 
            Table 5. THead-Link-1, 2 checks, or 
            Table 5. TOC-Link-1, 2 checks, or 
            Table 5. TOCI-Link-1, 2 checks, or 
            Table 5. TR-Link-1, 2 checks, or 
            Table 5. Table-Link-1, 2 checks, or 
            Table 5. Warichu-Link-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SENonStruct' or
            (@clause = 'Table 5. StructTreeRoot-NonStruct' and @testNumber = '1' and @failedChecks = '7')">Failed rules, Expected: 
            Table 5. StructTreeRoot-NonStruct-1, 7 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SENote' or
            (@clause = '8.2.5.14' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Table 5. L-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Note' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Note' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Note' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.14-1, 115 checks, or 
            Table 5. L-Note-1, 2 checks, or 
            Table 5. LI-Note-1, 2 checks, or 
            Table 5. RB-Note-1, 2 checks, or 
            Table 5. RP-Note-1, 2 checks, or 
            Table 5. RT-Note-1, 2 checks, or 
            Table 5. Ruby-Note-1, 2 checks, or 
            Table 5. StructTreeRoot-Note-1, 7 checks, or 
            Table 5. TBody-Note-1, 2 checks, or 
            Table 5. TFoot-Note-1, 2 checks, or 
            Table 5. THead-Note-1, 2 checks, or 
            Table 5. TOC-Note-1, 2 checks, or 
            Table 5. TOCI-Note-1, 2 checks, or 
            Table 5. TR-Note-1, 2 checks, or 
            Table 5. Table-Note-1, 2 checks, or 
            Table 5. WP-Note-1, 2 checks, or 
            Table 5. WT-Note-1, 2 checks, or 
            Table 5. Warichu-Note-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEP' or
            (@clause = 'Table 5. Code-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-P' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. L-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-P' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-P' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-P' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Code-P-1, 2 checks, or 
            Table 5. Em-P-1, 2 checks, or 
            Table 5. Form-P-1, 2 checks, or 
            Table 5. H-P-1, 2 checks, or 
            Table 5. Hn-P-1, 12 checks, or 
            Table 5. L-P-1, 2 checks, or 
            Table 5. LI-P-1, 2 checks, or 
            Table 5. Lbl-P-1, 2 checks, or 
            Table 5. P-P-1, 2 checks, or 
            Table 5. Quote-P-1, 2 checks, or 
            Table 5. RB-P-1, 2 checks, or 
            Table 5. RP-P-1, 2 checks, or 
            Table 5. RT-P-1, 2 checks, or 
            Table 5. Reference-P-1, 2 checks, or 
            Table 5. Ruby-P-1, 2 checks, or 
            Table 5. Span-P-1, 2 checks, or 
            Table 5. Strong-P-1, 2 checks, or 
            Table 5. StructTreeRoot-P-1, 7 checks, or 
            Table 5. Sub-P-1, 2 checks, or 
            Table 5. TBody-P-1, 2 checks, or 
            Table 5. TFoot-P-1, 2 checks, or 
            Table 5. THead-P-1, 2 checks, or 
            Table 5. TOC-P-1, 2 checks, or 
            Table 5. TR-P-1, 2 checks, or 
            Table 5. Table-P-1, 2 checks, or 
            Table 5. WP-P-1, 2 checks, or 
            Table 5. WT-P-1, 2 checks, or 
            Table 5. Warichu-P-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEPart' or
            (@clause = 'Table 5. Em-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. H-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Hn-Part' and @testNumber = '1' and @failedChecks = '24') or 
            (@clause = 'Table 5. L-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. LI-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Lbl-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. P-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Quote-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. RB-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. RP-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. RT-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Reference-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Ruby-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Span-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Strong-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. StructTreeRoot-Part' and @testNumber = '1' and @failedChecks = '13') or 
            (@clause = 'Table 5. Sub-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TBody-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TD-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TFoot-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TH-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. THead-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TOC-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TOCI-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. TR-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Table-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. WP-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. WT-Part' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = 'Table 5. Warichu-Part' and @testNumber = '1' and @failedChecks = '4')">Failed rules, Expected: 
            Table 5. Em-Part-1, 4 checks, or 
            Table 5. H-Part-1, 4 checks, or 
            Table 5. Hn-Part-1, 24 checks, or 
            Table 5. L-Part-1, 4 checks, or 
            Table 5. LI-Part-1, 4 checks, or 
            Table 5. Lbl-Part-1, 4 checks, or 
            Table 5. P-Part-1, 4 checks, or 
            Table 5. Quote-Part-1, 4 checks, or 
            Table 5. RB-Part-1, 4 checks, or 
            Table 5. RP-Part-1, 4 checks, or 
            Table 5. RT-Part-1, 4 checks, or 
            Table 5. Reference-Part-1, 4 checks, or 
            Table 5. Ruby-Part-1, 4 checks, or 
            Table 5. Span-Part-1, 4 checks, or 
            Table 5. Strong-Part-1, 4 checks, or 
            Table 5. StructTreeRoot-Part-1, 13 checks, or 
            Table 5. Sub-Part-1, 4 checks, or 
            Table 5. TBody-Part-1, 4 checks, or 
            Table 5. TD-Part-1, 4 checks, or 
            Table 5. TFoot-Part-1, 4 checks, or 
            Table 5. TH-Part-1, 4 checks, or 
            Table 5. THead-Part-1, 4 checks, or 
            Table 5. TOC-Part-1, 4 checks, or 
            Table 5. TOCI-Part-1, 4 checks, or 
            Table 5. TR-Part-1, 4 checks, or 
            Table 5. Table-Part-1, 4 checks, or 
            Table 5. WP-Part-1, 4 checks, or 
            Table 5. WT-Part-1, 4 checks, or 
            Table 5. Warichu-Part-1, 4 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEPrivate' or
            (@clause = 'Table 5. Annot-Private' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Private' and @testNumber = '1' and @failedChecks = '7')">Failed rules, Expected: 
            Table 5. Annot-Private-1, 2 checks, or 
            Table 5. StructTreeRoot-Private-1, 7 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEQuote' or
            (@clause = 'Table 5. Art-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Quote' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Quote' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Quote' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Art-Quote-1, 2 checks, or 
            Table 5. Aside-Quote-1, 2 checks, or 
            Table 5. BibEntry-Quote-1, 2 checks, or 
            Table 5. BlockQuote-Quote-1, 2 checks, or 
            Table 5. Code-Quote-1, 2 checks, or 
            Table 5. Document-Quote-1, 2 checks, or 
            Table 5. DocumentFragment-Quote-1, 2 checks, or 
            Table 5. Form-Quote-1, 2 checks, or 
            Table 5. Index-Quote-1, 2 checks, or 
            Table 5. L-Quote-1, 2 checks, or 
            Table 5. LI-Quote-1, 2 checks, or 
            Table 5. Reference-Quote-1, 2 checks, or 
            Table 5. Ruby-Quote-1, 2 checks, or 
            Table 5. Sect-Quote-1, 2 checks, or 
            Table 5. StructTreeRoot-Quote-1, 7 checks, or 
            Table 5. TBody-Quote-1, 2 checks, or 
            Table 5. TFoot-Quote-1, 2 checks, or 
            Table 5. THead-Quote-1, 2 checks, or 
            Table 5. TOC-Quote-1, 2 checks, or 
            Table 5. TOCI-Quote-1, 2 checks, or 
            Table 5. TR-Quote-1, 2 checks, or 
            Table 5. Table-Quote-1, 2 checks, or 
            Table 5. Warichu-Quote-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERB' or
            (@clause = 'Table 5. Annot-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-RB' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-RB' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-RB' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-RB' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-RB-1, 2 checks, or 
            Table 5. Art-RB-1, 2 checks, or 
            Table 5. Aside-RB-1, 2 checks, or 
            Table 5. BibEntry-RB-1, 2 checks, or 
            Table 5. BlockQuote-RB-1, 2 checks, or 
            Table 5. Caption-RB-1, 2 checks, or 
            Table 5. Code-RB-1, 2 checks, or 
            Table 5. Document-RB-1, 2 checks, or 
            Table 5. DocumentFragment-RB-1, 2 checks, or 
            Table 5. Em-RB-1, 2 checks, or 
            Table 5. FENote-RB-1, 2 checks, or 
            Table 5. Figure-RB-1, 2 checks, or 
            Table 5. Form-RB-1, 2 checks, or 
            Table 5. Formula-RB-1, 2 checks, or 
            Table 5. H-RB-1, 2 checks, or 
            Table 5. Hn-RB-1, 12 checks, or 
            Table 5. Index-RB-1, 2 checks, or 
            Table 5. L-RB-1, 2 checks, or 
            Table 5. LBody-RB-1, 2 checks, or 
            Table 5. LI-RB-1, 2 checks, or 
            Table 5. Lbl-RB-1, 2 checks, or 
            Table 5. Link-RB-1, 2 checks, or 
            Table 5. Note-RB-1, 2 checks, or 
            Table 5. P-RB-1, 2 checks, or 
            Table 5. Quote-RB-1, 2 checks, or 
            Table 5. RB-RB-1, 2 checks, or 
            Table 5. RP-RB-1, 2 checks, or 
            Table 5. RT-RB-1, 2 checks, or 
            Table 5. Reference-RB-1, 2 checks, or 
            Table 5. Sect-RB-1, 2 checks, or 
            Table 5. Span-RB-1, 2 checks, or 
            Table 5. Strong-RB-1, 2 checks, or 
            Table 5. StructTreeRoot-RB-1, 7 checks, or 
            Table 5. Sub-RB-1, 2 checks, or 
            Table 5. TBody-RB-1, 2 checks, or 
            Table 5. TD-RB-1, 2 checks, or 
            Table 5. TFoot-RB-1, 2 checks, or 
            Table 5. TH-RB-1, 2 checks, or 
            Table 5. THead-RB-1, 2 checks, or 
            Table 5. TOC-RB-1, 2 checks, or 
            Table 5. TOCI-RB-1, 2 checks, or 
            Table 5. TR-RB-1, 2 checks, or 
            Table 5. Table-RB-1, 2 checks, or 
            Table 5. Title-RB-1, 2 checks, or 
            Table 5. WP-RB-1, 2 checks, or 
            Table 5. WT-RB-1, 2 checks, or 
            Table 5. Warichu-RB-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERP' or
            (@clause = 'Table 5. Annot-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-RP' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-RP' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-RP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-RP' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-RP-1, 2 checks, or 
            Table 5. Art-RP-1, 2 checks, or 
            Table 5. Aside-RP-1, 2 checks, or 
            Table 5. BibEntry-RP-1, 2 checks, or 
            Table 5. BlockQuote-RP-1, 2 checks, or 
            Table 5. Caption-RP-1, 2 checks, or 
            Table 5. Code-RP-1, 2 checks, or 
            Table 5. Document-RP-1, 2 checks, or 
            Table 5. DocumentFragment-RP-1, 2 checks, or 
            Table 5. Em-RP-1, 2 checks, or 
            Table 5. FENote-RP-1, 2 checks, or 
            Table 5. Figure-RP-1, 2 checks, or 
            Table 5. Form-RP-1, 2 checks, or 
            Table 5. Formula-RP-1, 2 checks, or 
            Table 5. H-RP-1, 2 checks, or 
            Table 5. Hn-RP-1, 12 checks, or 
            Table 5. Index-RP-1, 2 checks, or 
            Table 5. L-RP-1, 2 checks, or 
            Table 5. LBody-RP-1, 2 checks, or 
            Table 5. LI-RP-1, 2 checks, or 
            Table 5. Lbl-RP-1, 2 checks, or 
            Table 5. Link-RP-1, 2 checks, or 
            Table 5. Note-RP-1, 2 checks, or 
            Table 5. P-RP-1, 2 checks, or 
            Table 5. Quote-RP-1, 2 checks, or 
            Table 5. RB-RP-1, 2 checks, or 
            Table 5. RP-RP-1, 2 checks, or 
            Table 5. RT-RP-1, 2 checks, or 
            Table 5. Reference-RP-1, 2 checks, or 
            Table 5. Sect-RP-1, 2 checks, or 
            Table 5. Span-RP-1, 2 checks, or 
            Table 5. Strong-RP-1, 2 checks, or 
            Table 5. StructTreeRoot-RP-1, 7 checks, or 
            Table 5. Sub-RP-1, 2 checks, or 
            Table 5. TBody-RP-1, 2 checks, or 
            Table 5. TD-RP-1, 2 checks, or 
            Table 5. TFoot-RP-1, 2 checks, or 
            Table 5. TH-RP-1, 2 checks, or 
            Table 5. THead-RP-1, 2 checks, or 
            Table 5. TOC-RP-1, 2 checks, or 
            Table 5. TOCI-RP-1, 2 checks, or 
            Table 5. TR-RP-1, 2 checks, or 
            Table 5. Table-RP-1, 2 checks, or 
            Table 5. Title-RP-1, 2 checks, or 
            Table 5. WP-RP-1, 2 checks, or 
            Table 5. WT-RP-1, 2 checks, or 
            Table 5. Warichu-RP-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERT' or
            (@clause = 'Table 5. Annot-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-RT' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-RT' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-RT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-RT' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-RT-1, 2 checks, or 
            Table 5. Art-RT-1, 2 checks, or 
            Table 5. Aside-RT-1, 2 checks, or 
            Table 5. BibEntry-RT-1, 2 checks, or 
            Table 5. BlockQuote-RT-1, 2 checks, or 
            Table 5. Caption-RT-1, 2 checks, or 
            Table 5. Code-RT-1, 2 checks, or 
            Table 5. Document-RT-1, 2 checks, or 
            Table 5. DocumentFragment-RT-1, 2 checks, or 
            Table 5. Em-RT-1, 2 checks, or 
            Table 5. FENote-RT-1, 2 checks, or 
            Table 5. Figure-RT-1, 2 checks, or 
            Table 5. Form-RT-1, 2 checks, or 
            Table 5. Formula-RT-1, 2 checks, or 
            Table 5. H-RT-1, 2 checks, or 
            Table 5. Hn-RT-1, 12 checks, or 
            Table 5. Index-RT-1, 2 checks, or 
            Table 5. L-RT-1, 2 checks, or 
            Table 5. LBody-RT-1, 2 checks, or 
            Table 5. LI-RT-1, 2 checks, or 
            Table 5. Lbl-RT-1, 2 checks, or 
            Table 5. Link-RT-1, 2 checks, or 
            Table 5. Note-RT-1, 2 checks, or 
            Table 5. P-RT-1, 2 checks, or 
            Table 5. Quote-RT-1, 2 checks, or 
            Table 5. RB-RT-1, 2 checks, or 
            Table 5. RP-RT-1, 2 checks, or 
            Table 5. RT-RT-1, 2 checks, or 
            Table 5. Reference-RT-1, 2 checks, or 
            Table 5. Sect-RT-1, 2 checks, or 
            Table 5. Span-RT-1, 2 checks, or 
            Table 5. Strong-RT-1, 2 checks, or 
            Table 5. StructTreeRoot-RT-1, 7 checks, or 
            Table 5. Sub-RT-1, 2 checks, or 
            Table 5. TBody-RT-1, 2 checks, or 
            Table 5. TD-RT-1, 2 checks, or 
            Table 5. TFoot-RT-1, 2 checks, or 
            Table 5. TH-RT-1, 2 checks, or 
            Table 5. THead-RT-1, 2 checks, or 
            Table 5. TOC-RT-1, 2 checks, or 
            Table 5. TOCI-RT-1, 2 checks, or 
            Table 5. TR-RT-1, 2 checks, or 
            Table 5. Table-RT-1, 2 checks, or 
            Table 5. Title-RT-1, 2 checks, or 
            Table 5. WP-RT-1, 2 checks, or 
            Table 5. WT-RT-1, 2 checks, or 
            Table 5. Warichu-RT-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEReference' or
            (@clause = 'Table 5. Art-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Reference' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Reference' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Reference' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Art-Reference-1, 2 checks, or 
            Table 5. Document-Reference-1, 2 checks, or 
            Table 5. DocumentFragment-Reference-1, 2 checks, or 
            Table 5. L-Reference-1, 2 checks, or 
            Table 5. LI-Reference-1, 2 checks, or 
            Table 5. Reference-Reference-1, 2 checks, or 
            Table 5. Ruby-Reference-1, 2 checks, or 
            Table 5. Sect-Reference-1, 2 checks, or 
            Table 5. StructTreeRoot-Reference-1, 7 checks, or 
            Table 5. TBody-Reference-1, 2 checks, or 
            Table 5. TFoot-Reference-1, 2 checks, or 
            Table 5. THead-Reference-1, 2 checks, or 
            Table 5. TOC-Reference-1, 2 checks, or 
            Table 5. TR-Reference-1, 2 checks, or 
            Table 5. Table-Reference-1, 2 checks, or 
            Table 5. Warichu-Reference-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERuby' or
            (@clause = '8.2.5.23' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Table 5. Art-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Ruby' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Ruby' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Ruby' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.23-1, 115 checks, or 
            Table 5. Art-Ruby-1, 2 checks, or 
            Table 5. Aside-Ruby-1, 2 checks, or 
            Table 5. BibEntry-Ruby-1, 2 checks, or 
            Table 5. BlockQuote-Ruby-1, 2 checks, or 
            Table 5. Code-Ruby-1, 2 checks, or 
            Table 5. Document-Ruby-1, 2 checks, or 
            Table 5. DocumentFragment-Ruby-1, 2 checks, or 
            Table 5. Form-Ruby-1, 2 checks, or 
            Table 5. Index-Ruby-1, 2 checks, or 
            Table 5. L-Ruby-1, 2 checks, or 
            Table 5. LI-Ruby-1, 2 checks, or 
            Table 5. RB-Ruby-1, 2 checks, or 
            Table 5. RP-Ruby-1, 2 checks, or 
            Table 5. RT-Ruby-1, 2 checks, or 
            Table 5. Reference-Ruby-1, 2 checks, or 
            Table 5. Ruby-Ruby-1, 2 checks, or 
            Table 5. Sect-Ruby-1, 2 checks, or 
            Table 5. StructTreeRoot-Ruby-1, 7 checks, or 
            Table 5. TBody-Ruby-1, 2 checks, or 
            Table 5. TFoot-Ruby-1, 2 checks, or 
            Table 5. THead-Ruby-1, 2 checks, or 
            Table 5. TOC-Ruby-1, 2 checks, or 
            Table 5. TOCI-Ruby-1, 2 checks, or 
            Table 5. TR-Ruby-1, 2 checks, or 
            Table 5. Table-Ruby-1, 2 checks, or 
            Table 5. WP-Ruby-1, 2 checks, or 
            Table 5. WT-Ruby-1, 2 checks, or 
            Table 5. Warichu-Ruby-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESect' or
            (@clause = 'Table 5. BibEntry-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Sect-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Span-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Sect' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Sect' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Sect' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. BibEntry-Sect-1, 2 checks, or 
            Table 5. Code-Sect-1, 2 checks, or 
            Table 5. Em-Sect-1, 2 checks, or 
            Table 5. Form-Sect-1, 2 checks, or 
            Table 5. Formula-Sect-1, 2 checks, or 
            Table 5. L-Sect-1, 2 checks, or 
            Table 5. LI-Sect-1, 2 checks, or 
            Table 5. Lbl-Sect-1, 2 checks, or 
            Table 5. P-Sect-1, 2 checks, or 
            Table 5. Quote-Sect-1, 2 checks, or 
            Table 5. RB-Sect-1, 2 checks, or 
            Table 5. RP-Sect-1, 2 checks, or 
            Table 5. RT-Sect-1, 2 checks, or 
            Table 5. Reference-Sect-1, 2 checks, or 
            Table 5. Ruby-Sect-1, 2 checks, or 
            Table 5. Sect-H-1, 1 check, or 
            Table 5. Sect-content-1, 1 check, or 
            Table 5. Span-Sect-1, 2 checks, or 
            Table 5. Strong-Sect-1, 2 checks, or 
            Table 5. StructTreeRoot-Sect-1, 7 checks, or 
            Table 5. Sub-Sect-1, 2 checks, or 
            Table 5. TBody-Sect-1, 2 checks, or 
            Table 5. TFoot-Sect-1, 2 checks, or 
            Table 5. THead-Sect-1, 2 checks, or 
            Table 5. TOC-Sect-1, 2 checks, or 
            Table 5. TOCI-Sect-1, 2 checks, or 
            Table 5. TR-Sect-1, 2 checks, or 
            Table 5. Table-Sect-1, 2 checks, or 
            Table 5. Title-Sect-1, 2 checks, or 
            Table 5. WP-Sect-1, 2 checks, or 
            Table 5. WT-Sect-1, 2 checks, or 
            Table 5. Warichu-Sect-1, 2 checks</sch:assert>
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
            (@clause = 'Table 5. Art-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Span' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Span' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Span' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Art-Span-1, 2 checks, or 
            Table 5. Aside-Span-1, 2 checks, or 
            Table 5. BlockQuote-Span-1, 2 checks, or 
            Table 5. Document-Span-1, 2 checks, or 
            Table 5. DocumentFragment-Span-1, 2 checks, or 
            Table 5. Form-Span-1, 2 checks, or 
            Table 5. Index-Span-1, 2 checks, or 
            Table 5. L-Span-1, 2 checks, or 
            Table 5. LI-Span-1, 2 checks, or 
            Table 5. Ruby-Span-1, 2 checks, or 
            Table 5. Sect-Span-1, 2 checks, or 
            Table 5. StructTreeRoot-Span-1, 7 checks, or 
            Table 5. TBody-Span-1, 2 checks, or 
            Table 5. TFoot-Span-1, 2 checks, or 
            Table 5. THead-Span-1, 2 checks, or 
            Table 5. TOC-Span-1, 2 checks, or 
            Table 5. TOCI-Span-1, 2 checks, or 
            Table 5. TR-Span-1, 2 checks, or 
            Table 5. Table-Span-1, 2 checks, or 
            Table 5. Warichu-Span-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEStrong' or
            (@clause = 'Table 5. Art-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Strong' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Strong' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Strong' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Art-Strong-1, 2 checks, or 
            Table 5. Aside-Strong-1, 2 checks, or 
            Table 5. BlockQuote-Strong-1, 2 checks, or 
            Table 5. Document-Strong-1, 2 checks, or 
            Table 5. DocumentFragment-Strong-1, 2 checks, or 
            Table 5. Form-Strong-1, 2 checks, or 
            Table 5. Index-Strong-1, 2 checks, or 
            Table 5. L-Strong-1, 2 checks, or 
            Table 5. LI-Strong-1, 2 checks, or 
            Table 5. Ruby-Strong-1, 2 checks, or 
            Table 5. Sect-Strong-1, 2 checks, or 
            Table 5. StructTreeRoot-Strong-1, 7 checks, or 
            Table 5. TBody-Strong-1, 2 checks, or 
            Table 5. TFoot-Strong-1, 2 checks, or 
            Table 5. THead-Strong-1, 2 checks, or 
            Table 5. TOC-Strong-1, 2 checks, or 
            Table 5. TOCI-Strong-1, 2 checks, or 
            Table 5. TR-Strong-1, 2 checks, or 
            Table 5. Table-Strong-1, 2 checks, or 
            Table 5. Warichu-Strong-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESub' or
            (@clause = 'Table 5. Art-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Sub' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-Sub' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Sub' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Art-Sub-1, 2 checks, or 
            Table 5. Aside-Sub-1, 2 checks, or 
            Table 5. BibEntry-Sub-1, 2 checks, or 
            Table 5. BlockQuote-Sub-1, 2 checks, or 
            Table 5. Document-Sub-1, 2 checks, or 
            Table 5. DocumentFragment-Sub-1, 2 checks, or 
            Table 5. Form-Sub-1, 2 checks, or 
            Table 5. Index-Sub-1, 2 checks, or 
            Table 5. L-Sub-1, 2 checks, or 
            Table 5. LI-Sub-1, 2 checks, or 
            Table 5. Reference-Sub-1, 2 checks, or 
            Table 5. Ruby-Sub-1, 2 checks, or 
            Table 5. Sect-Sub-1, 2 checks, or 
            Table 5. StructTreeRoot-Sub-1, 7 checks, or 
            Table 5. Sub-Sub-1, 2 checks, or 
            Table 5. TBody-Sub-1, 2 checks, or 
            Table 5. TD-Sub-1, 2 checks, or 
            Table 5. TFoot-Sub-1, 2 checks, or 
            Table 5. TH-Sub-1, 2 checks, or 
            Table 5. THead-Sub-1, 2 checks, or 
            Table 5. TOC-Sub-1, 2 checks, or 
            Table 5. TOCI-Sub-1, 2 checks, or 
            Table 5. TR-Sub-1, 2 checks, or 
            Table 5. Table-Sub-1, 2 checks, or 
            Table 5. Title-Sub-1, 2 checks, or 
            Table 5. Warichu-Sub-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETBody' or
            (@clause = 'Table 5. Annot-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TBody' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TBody' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. TD-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TBody' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TBody' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-TBody-1, 2 checks, or 
            Table 5. Art-TBody-1, 2 checks, or 
            Table 5. Aside-TBody-1, 2 checks, or 
            Table 5. BibEntry-TBody-1, 2 checks, or 
            Table 5. BlockQuote-TBody-1, 2 checks, or 
            Table 5. Caption-TBody-1, 2 checks, or 
            Table 5. Code-TBody-1, 2 checks, or 
            Table 5. Document-TBody-1, 2 checks, or 
            Table 5. DocumentFragment-TBody-1, 2 checks, or 
            Table 5. Em-TBody-1, 2 checks, or 
            Table 5. FENote-TBody-1, 2 checks, or 
            Table 5. Figure-TBody-1, 2 checks, or 
            Table 5. Form-TBody-1, 2 checks, or 
            Table 5. Formula-TBody-1, 2 checks, or 
            Table 5. H-TBody-1, 2 checks, or 
            Table 5. Hn-TBody-1, 12 checks, or 
            Table 5. Index-TBody-1, 2 checks, or 
            Table 5. L-TBody-1, 2 checks, or 
            Table 5. LBody-TBody-1, 2 checks, or 
            Table 5. LI-TBody-1, 2 checks, or 
            Table 5. Lbl-TBody-1, 2 checks, or 
            Table 5. Link-TBody-1, 2 checks, or 
            Table 5. Note-TBody-1, 2 checks, or 
            Table 5. P-TBody-1, 2 checks, or 
            Table 5. Quote-TBody-1, 2 checks, or 
            Table 5. RB-TBody-1, 2 checks, or 
            Table 5. RP-TBody-1, 2 checks, or 
            Table 5. RT-TBody-1, 2 checks, or 
            Table 5. Reference-TBody-1, 2 checks, or 
            Table 5. Ruby-TBody-1, 2 checks, or 
            Table 5. Sect-TBody-1, 2 checks, or 
            Table 5. Span-TBody-1, 2 checks, or 
            Table 5. Strong-TBody-1, 2 checks, or 
            Table 5. StructTreeRoot-TBody-1, 7 checks, or 
            Table 5. Sub-TBody-1, 2 checks, or 
            Table 5. TBody-TBody-1, 2 checks, or 
            Table 5. TBody-content-1, 1 check, or 
            Table 5. TD-TBody-1, 2 checks, or 
            Table 5. TFoot-TBody-1, 2 checks, or 
            Table 5. TH-TBody-1, 2 checks, or 
            Table 5. THead-TBody-1, 2 checks, or 
            Table 5. TOC-TBody-1, 2 checks, or 
            Table 5. TOCI-TBody-1, 2 checks, or 
            Table 5. TR-TBody-1, 2 checks, or 
            Table 5. Title-TBody-1, 2 checks, or 
            Table 5. WP-TBody-1, 2 checks, or 
            Table 5. WT-TBody-1, 2 checks, or 
            Table 5. Warichu-TBody-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETD' or
            (@clause = 'Table 5. Annot-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TD' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TD' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. TD-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TD' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TD' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-TD-1, 2 checks, or 
            Table 5. Art-TD-1, 2 checks, or 
            Table 5. Aside-TD-1, 2 checks, or 
            Table 5. BibEntry-TD-1, 2 checks, or 
            Table 5. BlockQuote-TD-1, 2 checks, or 
            Table 5. Caption-TD-1, 2 checks, or 
            Table 5. Code-TD-1, 2 checks, or 
            Table 5. Document-TD-1, 2 checks, or 
            Table 5. DocumentFragment-TD-1, 2 checks, or 
            Table 5. Em-TD-1, 2 checks, or 
            Table 5. FENote-TD-1, 2 checks, or 
            Table 5. Figure-TD-1, 2 checks, or 
            Table 5. Form-TD-1, 2 checks, or 
            Table 5. Formula-TD-1, 2 checks, or 
            Table 5. H-TD-1, 2 checks, or 
            Table 5. Hn-TD-1, 12 checks, or 
            Table 5. Index-TD-1, 2 checks, or 
            Table 5. L-TD-1, 2 checks, or 
            Table 5. LBody-TD-1, 2 checks, or 
            Table 5. LI-TD-1, 2 checks, or 
            Table 5. Lbl-TD-1, 2 checks, or 
            Table 5. Link-TD-1, 2 checks, or 
            Table 5. Note-TD-1, 2 checks, or 
            Table 5. P-TD-1, 2 checks, or 
            Table 5. Quote-TD-1, 2 checks, or 
            Table 5. RB-TD-1, 2 checks, or 
            Table 5. RP-TD-1, 2 checks, or 
            Table 5. RT-TD-1, 2 checks, or 
            Table 5. Reference-TD-1, 2 checks, or 
            Table 5. Ruby-TD-1, 2 checks, or 
            Table 5. Sect-TD-1, 2 checks, or 
            Table 5. Span-TD-1, 2 checks, or 
            Table 5. Strong-TD-1, 2 checks, or 
            Table 5. StructTreeRoot-TD-1, 7 checks, or 
            Table 5. Sub-TD-1, 2 checks, or 
            Table 5. TBody-TD-1, 2 checks, or 
            Table 5. TD-H-1, 1 check, or 
            Table 5. TD-TD-1, 2 checks, or 
            Table 5. TFoot-TD-1, 2 checks, or 
            Table 5. TH-TD-1, 2 checks, or 
            Table 5. THead-TD-1, 2 checks, or 
            Table 5. TOC-TD-1, 2 checks, or 
            Table 5. TOCI-TD-1, 2 checks, or 
            Table 5. Table-TD-1, 2 checks, or 
            Table 5. Title-TD-1, 2 checks, or 
            Table 5. WP-TD-1, 2 checks, or 
            Table 5. WT-TD-1, 2 checks, or 
            Table 5. Warichu-TD-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETFoot' or
            (@clause = 'Table 5. Annot-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TFoot' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TFoot' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. TH-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TFoot' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-TFoot-1, 2 checks, or 
            Table 5. Art-TFoot-1, 2 checks, or 
            Table 5. Aside-TFoot-1, 2 checks, or 
            Table 5. BibEntry-TFoot-1, 2 checks, or 
            Table 5. BlockQuote-TFoot-1, 2 checks, or 
            Table 5. Caption-TFoot-1, 2 checks, or 
            Table 5. Code-TFoot-1, 2 checks, or 
            Table 5. Document-TFoot-1, 2 checks, or 
            Table 5. DocumentFragment-TFoot-1, 2 checks, or 
            Table 5. Em-TFoot-1, 2 checks, or 
            Table 5. FENote-TFoot-1, 2 checks, or 
            Table 5. Figure-TFoot-1, 2 checks, or 
            Table 5. Form-TFoot-1, 2 checks, or 
            Table 5. Formula-TFoot-1, 2 checks, or 
            Table 5. H-TFoot-1, 2 checks, or 
            Table 5. Hn-TFoot-1, 12 checks, or 
            Table 5. Index-TFoot-1, 2 checks, or 
            Table 5. L-TFoot-1, 2 checks, or 
            Table 5. LBody-TFoot-1, 2 checks, or 
            Table 5. LI-TFoot-1, 2 checks, or 
            Table 5. Lbl-TFoot-1, 2 checks, or 
            Table 5. Link-TFoot-1, 2 checks, or 
            Table 5. Note-TFoot-1, 2 checks, or 
            Table 5. P-TFoot-1, 2 checks, or 
            Table 5. Quote-TFoot-1, 2 checks, or 
            Table 5. RB-TFoot-1, 2 checks, or 
            Table 5. RP-TFoot-1, 2 checks, or 
            Table 5. RT-TFoot-1, 2 checks, or 
            Table 5. Reference-TFoot-1, 2 checks, or 
            Table 5. Ruby-TFoot-1, 2 checks, or 
            Table 5. Sect-TFoot-1, 2 checks, or 
            Table 5. Span-TFoot-1, 2 checks, or 
            Table 5. Strong-TFoot-1, 2 checks, or 
            Table 5. StructTreeRoot-TFoot-1, 7 checks, or 
            Table 5. Sub-TFoot-1, 2 checks, or 
            Table 5. TBody-TFoot-1, 2 checks, or 
            Table 5. TD-TFoot-1, 2 checks, or 
            Table 5. TFoot-TFoot-1, 2 checks, or 
            Table 5. TFoot-content-1, 1 check, or 
            Table 5. TH-TFoot-1, 2 checks, or 
            Table 5. THead-TFoot-1, 2 checks, or 
            Table 5. TOC-TFoot-1, 2 checks, or 
            Table 5. TOCI-TFoot-1, 2 checks, or 
            Table 5. TR-TFoot-1, 2 checks, or 
            Table 5. Title-TFoot-1, 2 checks, or 
            Table 5. WP-TFoot-1, 2 checks, or 
            Table 5. WT-TFoot-1, 2 checks, or 
            Table 5. Warichu-TFoot-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETH' or
            (@clause = 'Table 5. Annot-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TH' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TH' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-H' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. TH-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TH' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TH' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-TH-1, 2 checks, or 
            Table 5. Art-TH-1, 2 checks, or 
            Table 5. Aside-TH-1, 2 checks, or 
            Table 5. BibEntry-TH-1, 2 checks, or 
            Table 5. BlockQuote-TH-1, 2 checks, or 
            Table 5. Caption-TH-1, 2 checks, or 
            Table 5. Code-TH-1, 2 checks, or 
            Table 5. Document-TH-1, 2 checks, or 
            Table 5. DocumentFragment-TH-1, 2 checks, or 
            Table 5. Em-TH-1, 2 checks, or 
            Table 5. FENote-TH-1, 2 checks, or 
            Table 5. Figure-TH-1, 2 checks, or 
            Table 5. Form-TH-1, 2 checks, or 
            Table 5. Formula-TH-1, 2 checks, or 
            Table 5. H-TH-1, 2 checks, or 
            Table 5. Hn-TH-1, 12 checks, or 
            Table 5. Index-TH-1, 2 checks, or 
            Table 5. L-TH-1, 2 checks, or 
            Table 5. LBody-TH-1, 2 checks, or 
            Table 5. LI-TH-1, 2 checks, or 
            Table 5. Lbl-TH-1, 2 checks, or 
            Table 5. Link-TH-1, 2 checks, or 
            Table 5. Note-TH-1, 2 checks, or 
            Table 5. P-TH-1, 2 checks, or 
            Table 5. Quote-TH-1, 2 checks, or 
            Table 5. RB-TH-1, 2 checks, or 
            Table 5. RP-TH-1, 2 checks, or 
            Table 5. RT-TH-1, 2 checks, or 
            Table 5. Reference-TH-1, 2 checks, or 
            Table 5. Ruby-TH-1, 2 checks, or 
            Table 5. Sect-TH-1, 2 checks, or 
            Table 5. Span-TH-1, 2 checks, or 
            Table 5. Strong-TH-1, 2 checks, or 
            Table 5. StructTreeRoot-TH-1, 7 checks, or 
            Table 5. Sub-TH-1, 2 checks, or 
            Table 5. TBody-TH-1, 2 checks, or 
            Table 5. TD-TH-1, 2 checks, or 
            Table 5. TFoot-TH-1, 2 checks, or 
            Table 5. TH-H-1, 1 check, or 
            Table 5. TH-TH-1, 2 checks, or 
            Table 5. THead-TH-1, 2 checks, or 
            Table 5. TOC-TH-1, 2 checks, or 
            Table 5. TOCI-TH-1, 2 checks, or 
            Table 5. Table-TH-1, 2 checks, or 
            Table 5. Title-TH-1, 2 checks, or 
            Table 5. WP-TH-1, 2 checks, or 
            Table 5. WT-TH-1, 2 checks, or 
            Table 5. Warichu-TH-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETHead' or
            (@clause = 'Table 5. Annot-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-THead' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-THead' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. TOC-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-THead' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-THead' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-THead-1, 2 checks, or 
            Table 5. Art-THead-1, 2 checks, or 
            Table 5. Aside-THead-1, 2 checks, or 
            Table 5. BibEntry-THead-1, 2 checks, or 
            Table 5. BlockQuote-THead-1, 2 checks, or 
            Table 5. Caption-THead-1, 2 checks, or 
            Table 5. Code-THead-1, 2 checks, or 
            Table 5. Document-THead-1, 2 checks, or 
            Table 5. DocumentFragment-THead-1, 2 checks, or 
            Table 5. Em-THead-1, 2 checks, or 
            Table 5. FENote-THead-1, 2 checks, or 
            Table 5. Figure-THead-1, 2 checks, or 
            Table 5. Form-THead-1, 2 checks, or 
            Table 5. Formula-THead-1, 2 checks, or 
            Table 5. H-THead-1, 2 checks, or 
            Table 5. Hn-THead-1, 12 checks, or 
            Table 5. Index-THead-1, 2 checks, or 
            Table 5. L-THead-1, 2 checks, or 
            Table 5. LBody-THead-1, 2 checks, or 
            Table 5. LI-THead-1, 2 checks, or 
            Table 5. Lbl-THead-1, 2 checks, or 
            Table 5. Link-THead-1, 2 checks, or 
            Table 5. Note-THead-1, 2 checks, or 
            Table 5. P-THead-1, 2 checks, or 
            Table 5. Quote-THead-1, 2 checks, or 
            Table 5. RB-THead-1, 2 checks, or 
            Table 5. RP-THead-1, 2 checks, or 
            Table 5. RT-THead-1, 2 checks, or 
            Table 5. Reference-THead-1, 2 checks, or 
            Table 5. Ruby-THead-1, 2 checks, or 
            Table 5. Sect-THead-1, 2 checks, or 
            Table 5. Span-THead-1, 2 checks, or 
            Table 5. Strong-THead-1, 2 checks, or 
            Table 5. StructTreeRoot-THead-1, 7 checks, or 
            Table 5. Sub-THead-1, 2 checks, or 
            Table 5. TBody-THead-1, 2 checks, or 
            Table 5. TD-THead-1, 2 checks, or 
            Table 5. TFoot-THead-1, 2 checks, or 
            Table 5. TH-THead-1, 2 checks, or 
            Table 5. THead-THead-1, 2 checks, or 
            Table 5. THead-content-1, 1 check, or 
            Table 5. TOC-THead-1, 2 checks, or 
            Table 5. TOCI-THead-1, 2 checks, or 
            Table 5. TR-THead-1, 2 checks, or 
            Table 5. Title-THead-1, 2 checks, or 
            Table 5. WP-THead-1, 2 checks, or 
            Table 5. WT-THead-1, 2 checks, or 
            Table 5. Warichu-THead-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETOC' or
            (@clause = 'Table 5. Annot-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TOC' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TOC' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. TOC-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. TR-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TOC' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TOC' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-TOC-1, 2 checks, or 
            Table 5. BibEntry-TOC-1, 2 checks, or 
            Table 5. Caption-TOC-1, 2 checks, or 
            Table 5. Code-TOC-1, 2 checks, or 
            Table 5. Em-TOC-1, 2 checks, or 
            Table 5. FENote-TOC-1, 2 checks, or 
            Table 5. Figure-TOC-1, 2 checks, or 
            Table 5. Form-TOC-1, 2 checks, or 
            Table 5. Formula-TOC-1, 2 checks, or 
            Table 5. H-TOC-1, 2 checks, or 
            Table 5. Hn-TOC-1, 12 checks, or 
            Table 5. Index-TOC-1, 2 checks, or 
            Table 5. L-TOC-1, 2 checks, or 
            Table 5. LBody-TOC-1, 2 checks, or 
            Table 5. LI-TOC-1, 2 checks, or 
            Table 5. Lbl-TOC-1, 2 checks, or 
            Table 5. Link-TOC-1, 2 checks, or 
            Table 5. Note-TOC-1, 2 checks, or 
            Table 5. P-TOC-1, 2 checks, or 
            Table 5. Quote-TOC-1, 2 checks, or 
            Table 5. RB-TOC-1, 2 checks, or 
            Table 5. RP-TOC-1, 2 checks, or 
            Table 5. RT-TOC-1, 2 checks, or 
            Table 5. Reference-TOC-1, 2 checks, or 
            Table 5. Ruby-TOC-1, 2 checks, or 
            Table 5. Span-TOC-1, 2 checks, or 
            Table 5. Strong-TOC-1, 2 checks, or 
            Table 5. StructTreeRoot-TOC-1, 7 checks, or 
            Table 5. Sub-TOC-1, 2 checks, or 
            Table 5. TBody-TOC-1, 2 checks, or 
            Table 5. TD-TOC-1, 2 checks, or 
            Table 5. TFoot-TOC-1, 2 checks, or 
            Table 5. TH-TOC-1, 2 checks, or 
            Table 5. THead-TOC-1, 2 checks, or 
            Table 5. TOC-Caption-1, 1 check, or 
            Table 5. TOC-content-1, 1 check, or 
            Table 5. TR-TOC-1, 2 checks, or 
            Table 5. Table-TOC-1, 2 checks, or 
            Table 5. Title-TOC-1, 2 checks, or 
            Table 5. WP-TOC-1, 2 checks, or 
            Table 5. WT-TOC-1, 2 checks, or 
            Table 5. Warichu-TOC-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETOCI' or
            (@clause = '8.2.5.8' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Table 5. Annot-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TOCI' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TOCI' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. TR-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TOCI' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TOCI' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.8-1, 115 checks, or 
            Table 5. Annot-TOCI-1, 2 checks, or 
            Table 5. Art-TOCI-1, 2 checks, or 
            Table 5. Aside-TOCI-1, 2 checks, or 
            Table 5. BibEntry-TOCI-1, 2 checks, or 
            Table 5. BlockQuote-TOCI-1, 2 checks, or 
            Table 5. Caption-TOCI-1, 2 checks, or 
            Table 5. Code-TOCI-1, 2 checks, or 
            Table 5. Document-TOCI-1, 2 checks, or 
            Table 5. DocumentFragment-TOCI-1, 2 checks, or 
            Table 5. Em-TOCI-1, 2 checks, or 
            Table 5. FENote-TOCI-1, 2 checks, or 
            Table 5. Figure-TOCI-1, 2 checks, or 
            Table 5. Form-TOCI-1, 2 checks, or 
            Table 5. Formula-TOCI-1, 2 checks, or 
            Table 5. H-TOCI-1, 2 checks, or 
            Table 5. Hn-TOCI-1, 12 checks, or 
            Table 5. Index-TOCI-1, 2 checks, or 
            Table 5. L-TOCI-1, 2 checks, or 
            Table 5. LBody-TOCI-1, 2 checks, or 
            Table 5. LI-TOCI-1, 2 checks, or 
            Table 5. Lbl-TOCI-1, 2 checks, or 
            Table 5. Link-TOCI-1, 2 checks, or 
            Table 5. Note-TOCI-1, 2 checks, or 
            Table 5. P-TOCI-1, 2 checks, or 
            Table 5. Quote-TOCI-1, 2 checks, or 
            Table 5. RB-TOCI-1, 2 checks, or 
            Table 5. RP-TOCI-1, 2 checks, or 
            Table 5. RT-TOCI-1, 2 checks, or 
            Table 5. Reference-TOCI-1, 2 checks, or 
            Table 5. Ruby-TOCI-1, 2 checks, or 
            Table 5. Sect-TOCI-1, 2 checks, or 
            Table 5. Span-TOCI-1, 2 checks, or 
            Table 5. Strong-TOCI-1, 2 checks, or 
            Table 5. StructTreeRoot-TOCI-1, 7 checks, or 
            Table 5. Sub-TOCI-1, 2 checks, or 
            Table 5. TBody-TOCI-1, 2 checks, or 
            Table 5. TD-TOCI-1, 2 checks, or 
            Table 5. TFoot-TOCI-1, 2 checks, or 
            Table 5. TH-TOCI-1, 2 checks, or 
            Table 5. THead-TOCI-1, 2 checks, or 
            Table 5. TOCI-TOCI-1, 2 checks, or 
            Table 5. TOCI-content-1, 1 check, or 
            Table 5. TR-TOCI-1, 2 checks, or 
            Table 5. Table-TOCI-1, 2 checks, or 
            Table 5. Title-TOCI-1, 2 checks, or 
            Table 5. WP-TOCI-1, 2 checks, or 
            Table 5. WT-TOCI-1, 2 checks, or 
            Table 5. Warichu-TOCI-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETR' or
            (@clause = 'Table 5. Annot-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-TR' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-TR' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Title-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-TR' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-TR' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-TR-1, 2 checks, or 
            Table 5. Art-TR-1, 2 checks, or 
            Table 5. Aside-TR-1, 2 checks, or 
            Table 5. BibEntry-TR-1, 2 checks, or 
            Table 5. BlockQuote-TR-1, 2 checks, or 
            Table 5. Caption-TR-1, 2 checks, or 
            Table 5. Code-TR-1, 2 checks, or 
            Table 5. Document-TR-1, 2 checks, or 
            Table 5. DocumentFragment-TR-1, 2 checks, or 
            Table 5. Em-TR-1, 2 checks, or 
            Table 5. FENote-TR-1, 2 checks, or 
            Table 5. Figure-TR-1, 2 checks, or 
            Table 5. Form-TR-1, 2 checks, or 
            Table 5. Formula-TR-1, 2 checks, or 
            Table 5. H-TR-1, 2 checks, or 
            Table 5. Hn-TR-1, 12 checks, or 
            Table 5. Index-TR-1, 2 checks, or 
            Table 5. L-TR-1, 2 checks, or 
            Table 5. LBody-TR-1, 2 checks, or 
            Table 5. LI-TR-1, 2 checks, or 
            Table 5. Lbl-TR-1, 2 checks, or 
            Table 5. Link-TR-1, 2 checks, or 
            Table 5. Note-TR-1, 2 checks, or 
            Table 5. P-TR-1, 2 checks, or 
            Table 5. Quote-TR-1, 2 checks, or 
            Table 5. RB-TR-1, 2 checks, or 
            Table 5. RP-TR-1, 2 checks, or 
            Table 5. RT-TR-1, 2 checks, or 
            Table 5. Reference-TR-1, 2 checks, or 
            Table 5. Ruby-TR-1, 2 checks, or 
            Table 5. Sect-TR-1, 2 checks, or 
            Table 5. Span-TR-1, 2 checks, or 
            Table 5. Strong-TR-1, 2 checks, or 
            Table 5. StructTreeRoot-TR-1, 7 checks, or 
            Table 5. Sub-TR-1, 2 checks, or 
            Table 5. TD-TR-1, 2 checks, or 
            Table 5. TH-TR-1, 2 checks, or 
            Table 5. TOC-TR-1, 2 checks, or 
            Table 5. TOCI-TR-1, 2 checks, or 
            Table 5. TR-TR-1, 2 checks, or 
            Table 5. TR-content-1, 1 check, or 
            Table 5. Title-TR-1, 2 checks, or 
            Table 5. WP-TR-1, 2 checks, or 
            Table 5. WT-TR-1, 2 checks, or 
            Table 5. Warichu-TR-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETable' or
            (@clause = 'Table 5. BibEntry-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Table' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. L-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Table' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Table-TFoot' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Table-THead' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Table-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. WP-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Table' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Table' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. BibEntry-Table-1, 2 checks, or 
            Table 5. Code-Table-1, 2 checks, or 
            Table 5. Em-Table-1, 2 checks, or 
            Table 5. H-Table-1, 2 checks, or 
            Table 5. Hn-Table-1, 12 checks, or 
            Table 5. L-Table-1, 2 checks, or 
            Table 5. LI-Table-1, 2 checks, or 
            Table 5. Lbl-Table-1, 2 checks, or 
            Table 5. Quote-Table-1, 2 checks, or 
            Table 5. RB-Table-1, 2 checks, or 
            Table 5. RP-Table-1, 2 checks, or 
            Table 5. RT-Table-1, 2 checks, or 
            Table 5. Reference-Table-1, 2 checks, or 
            Table 5. Ruby-Table-1, 2 checks, or 
            Table 5. Span-Table-1, 2 checks, or 
            Table 5. Strong-Table-1, 2 checks, or 
            Table 5. StructTreeRoot-Table-1, 7 checks, or 
            Table 5. Sub-Table-1, 2 checks, or 
            Table 5. TBody-Table-1, 2 checks, or 
            Table 5. TFoot-Table-1, 2 checks, or 
            Table 5. THead-Table-1, 2 checks, or 
            Table 5. TOC-Table-1, 2 checks, or 
            Table 5. TOCI-Table-1, 2 checks, or 
            Table 5. TR-Table-1, 2 checks, or 
            Table 5. Table-Caption-1, 1 check, or 
            Table 5. Table-TFoot-1, 1 check, or 
            Table 5. Table-THead-1, 1 check, or 
            Table 5. Table-Table-1, 2 checks, or 
            Table 5. Table-content-1, 1 check, or 
            Table 5. WP-Table-1, 2 checks, or 
            Table 5. WT-Table-1, 2 checks, or 
            Table 5. Warichu-Table-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETitle' or
            (@clause = 'Table 5. Aside-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-Title' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Title' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-Caption' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'Table 5. Title-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Title' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Title' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Aside-Title-1, 2 checks, or 
            Table 5. BibEntry-Title-1, 2 checks, or 
            Table 5. BlockQuote-Title-1, 2 checks, or 
            Table 5. Caption-Title-1, 2 checks, or 
            Table 5. Code-Title-1, 2 checks, or 
            Table 5. Em-Title-1, 2 checks, or 
            Table 5. FENote-Title-1, 2 checks, or 
            Table 5. Figure-Title-1, 2 checks, or 
            Table 5. Form-Title-1, 2 checks, or 
            Table 5. Formula-Title-1, 2 checks, or 
            Table 5. H-Title-1, 2 checks, or 
            Table 5. Hn-Title-1, 12 checks, or 
            Table 5. Index-Title-1, 2 checks, or 
            Table 5. L-Title-1, 2 checks, or 
            Table 5. LBody-Title-1, 2 checks, or 
            Table 5. LI-Title-1, 2 checks, or 
            Table 5. Lbl-Title-1, 2 checks, or 
            Table 5. Note-Title-1, 2 checks, or 
            Table 5. P-Title-1, 2 checks, or 
            Table 5. Quote-Title-1, 2 checks, or 
            Table 5. RB-Title-1, 2 checks, or 
            Table 5. RP-Title-1, 2 checks, or 
            Table 5. RT-Title-1, 2 checks, or 
            Table 5. Reference-Title-1, 2 checks, or 
            Table 5. Ruby-Title-1, 2 checks, or 
            Table 5. Span-Title-1, 2 checks, or 
            Table 5. Strong-Title-1, 2 checks, or 
            Table 5. StructTreeRoot-Title-1, 7 checks, or 
            Table 5. Sub-Title-1, 2 checks, or 
            Table 5. TBody-Title-1, 2 checks, or 
            Table 5. TD-Title-1, 2 checks, or 
            Table 5. TFoot-Title-1, 2 checks, or 
            Table 5. TH-Title-1, 2 checks, or 
            Table 5. THead-Title-1, 2 checks, or 
            Table 5. TOC-Title-1, 2 checks, or 
            Table 5. TOCI-Title-1, 2 checks, or 
            Table 5. TR-Title-1, 2 checks, or 
            Table 5. Table-Title-1, 2 checks, or 
            Table 5. Title-Caption-1, 1 check, or 
            Table 5. Title-Title-1, 2 checks, or 
            Table 5. WP-Title-1, 2 checks, or 
            Table 5. WT-Title-1, 2 checks, or 
            Table 5. Warichu-Title-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEWP' or
            (@clause = 'Table 5. Annot-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-WP' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-WP' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-WP' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-WP' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-WP-1, 2 checks, or 
            Table 5. Art-WP-1, 2 checks, or 
            Table 5. Aside-WP-1, 2 checks, or 
            Table 5. BibEntry-WP-1, 2 checks, or 
            Table 5. BlockQuote-WP-1, 2 checks, or 
            Table 5. Caption-WP-1, 2 checks, or 
            Table 5. Code-WP-1, 2 checks, or 
            Table 5. Document-WP-1, 2 checks, or 
            Table 5. DocumentFragment-WP-1, 2 checks, or 
            Table 5. Em-WP-1, 2 checks, or 
            Table 5. FENote-WP-1, 2 checks, or 
            Table 5. Figure-WP-1, 2 checks, or 
            Table 5. Form-WP-1, 2 checks, or 
            Table 5. Formula-WP-1, 2 checks, or 
            Table 5. H-WP-1, 2 checks, or 
            Table 5. Hn-WP-1, 12 checks, or 
            Table 5. Index-WP-1, 2 checks, or 
            Table 5. L-WP-1, 2 checks, or 
            Table 5. LBody-WP-1, 2 checks, or 
            Table 5. LI-WP-1, 2 checks, or 
            Table 5. Lbl-WP-1, 2 checks, or 
            Table 5. Link-WP-1, 2 checks, or 
            Table 5. Note-WP-1, 2 checks, or 
            Table 5. P-WP-1, 2 checks, or 
            Table 5. Quote-WP-1, 2 checks, or 
            Table 5. RB-WP-1, 2 checks, or 
            Table 5. RP-WP-1, 2 checks, or 
            Table 5. RT-WP-1, 2 checks, or 
            Table 5. Reference-WP-1, 2 checks, or 
            Table 5. Ruby-WP-1, 2 checks, or 
            Table 5. Sect-WP-1, 2 checks, or 
            Table 5. Span-WP-1, 2 checks, or 
            Table 5. Strong-WP-1, 2 checks, or 
            Table 5. StructTreeRoot-WP-1, 7 checks, or 
            Table 5. Sub-WP-1, 2 checks, or 
            Table 5. TBody-WP-1, 2 checks, or 
            Table 5. TD-WP-1, 2 checks, or 
            Table 5. TFoot-WP-1, 2 checks, or 
            Table 5. TH-WP-1, 2 checks, or 
            Table 5. THead-WP-1, 2 checks, or 
            Table 5. TOC-WP-1, 2 checks, or 
            Table 5. TOCI-WP-1, 2 checks, or 
            Table 5. TR-WP-1, 2 checks, or 
            Table 5. Table-WP-1, 2 checks, or 
            Table 5. Title-WP-1, 2 checks, or 
            Table 5. WP-WP-1, 2 checks, or 
            Table 5. WT-WP-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEWT' or
            (@clause = 'Table 5. Annot-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Art-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Caption-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Em-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. FENote-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Figure-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Formula-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. H-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Hn-WT' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Table 5. Index-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LBody-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Lbl-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Link-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Note-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. P-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Quote-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Span-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Strong-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-WT' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. Sub-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TBody-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TD-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TH-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Title-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-WT' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-WT' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Table 5. Annot-WT-1, 2 checks, or 
            Table 5. Art-WT-1, 2 checks, or 
            Table 5. Aside-WT-1, 2 checks, or 
            Table 5. BibEntry-WT-1, 2 checks, or 
            Table 5. BlockQuote-WT-1, 2 checks, or 
            Table 5. Caption-WT-1, 2 checks, or 
            Table 5. Code-WT-1, 2 checks, or 
            Table 5. Document-WT-1, 2 checks, or 
            Table 5. DocumentFragment-WT-1, 2 checks, or 
            Table 5. Em-WT-1, 2 checks, or 
            Table 5. FENote-WT-1, 2 checks, or 
            Table 5. Figure-WT-1, 2 checks, or 
            Table 5. Form-WT-1, 2 checks, or 
            Table 5. Formula-WT-1, 2 checks, or 
            Table 5. H-WT-1, 2 checks, or 
            Table 5. Hn-WT-1, 12 checks, or 
            Table 5. Index-WT-1, 2 checks, or 
            Table 5. L-WT-1, 2 checks, or 
            Table 5. LBody-WT-1, 2 checks, or 
            Table 5. LI-WT-1, 2 checks, or 
            Table 5. Lbl-WT-1, 2 checks, or 
            Table 5. Link-WT-1, 2 checks, or 
            Table 5. Note-WT-1, 2 checks, or 
            Table 5. P-WT-1, 2 checks, or 
            Table 5. Quote-WT-1, 2 checks, or 
            Table 5. RB-WT-1, 2 checks, or 
            Table 5. RP-WT-1, 2 checks, or 
            Table 5. RT-WT-1, 2 checks, or 
            Table 5. Reference-WT-1, 2 checks, or 
            Table 5. Ruby-WT-1, 2 checks, or 
            Table 5. Sect-WT-1, 2 checks, or 
            Table 5. Span-WT-1, 2 checks, or 
            Table 5. Strong-WT-1, 2 checks, or 
            Table 5. StructTreeRoot-WT-1, 7 checks, or 
            Table 5. Sub-WT-1, 2 checks, or 
            Table 5. TBody-WT-1, 2 checks, or 
            Table 5. TD-WT-1, 2 checks, or 
            Table 5. TFoot-WT-1, 2 checks, or 
            Table 5. TH-WT-1, 2 checks, or 
            Table 5. THead-WT-1, 2 checks, or 
            Table 5. TOC-WT-1, 2 checks, or 
            Table 5. TOCI-WT-1, 2 checks, or 
            Table 5. TR-WT-1, 2 checks, or 
            Table 5. Table-WT-1, 2 checks, or 
            Table 5. Title-WT-1, 2 checks, or 
            Table 5. WP-WT-1, 2 checks, or 
            Table 5. WT-WT-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEWarichu' or
            (@clause = '8.2.5.24' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = 'Table 5. Art-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Aside-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BibEntry-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. BlockQuote-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Code-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Document-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. DocumentFragment-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Form-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Index-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. L-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. LI-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RB-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RP-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. RT-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Reference-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Ruby-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Sect-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. StructTreeRoot-Warichu' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = 'Table 5. TBody-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TFoot-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. THead-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOC-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TOCI-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. TR-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Table-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WP-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. WT-Warichu' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Table 5. Warichu-Warichu' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            8.2.5.24-1, 115 checks, or 
            Table 5. Art-Warichu-1, 2 checks, or 
            Table 5. Aside-Warichu-1, 2 checks, or 
            Table 5. BibEntry-Warichu-1, 2 checks, or 
            Table 5. BlockQuote-Warichu-1, 2 checks, or 
            Table 5. Code-Warichu-1, 2 checks, or 
            Table 5. Document-Warichu-1, 2 checks, or 
            Table 5. DocumentFragment-Warichu-1, 2 checks, or 
            Table 5. Form-Warichu-1, 2 checks, or 
            Table 5. Index-Warichu-1, 2 checks, or 
            Table 5. L-Warichu-1, 2 checks, or 
            Table 5. LI-Warichu-1, 2 checks, or 
            Table 5. RB-Warichu-1, 2 checks, or 
            Table 5. RP-Warichu-1, 2 checks, or 
            Table 5. RT-Warichu-1, 2 checks, or 
            Table 5. Reference-Warichu-1, 2 checks, or 
            Table 5. Ruby-Warichu-1, 2 checks, or 
            Table 5. Sect-Warichu-1, 2 checks, or 
            Table 5. StructTreeRoot-Warichu-1, 7 checks, or 
            Table 5. TBody-Warichu-1, 2 checks, or 
            Table 5. TFoot-Warichu-1, 2 checks, or 
            Table 5. THead-Warichu-1, 2 checks, or 
            Table 5. TOC-Warichu-1, 2 checks, or 
            Table 5. TOCI-Warichu-1, 2 checks, or 
            Table 5. TR-Warichu-1, 2 checks, or 
            Table 5. Table-Warichu-1, 2 checks, or 
            Table 5. WP-Warichu-1, 2 checks, or 
            Table 5. WT-Warichu-1, 2 checks, or 
            Table 5. Warichu-Warichu-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>


    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
