<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: transitionaltag_div_test.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '1650')">Failed check, Expected: 1650</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'CosDocument' or
            (@clause = '8.11.2' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.11.2-1, 1 check</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDDocument' or
            (@clause = '8.4.4' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            8.4.4-1, 1 check</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDFont' or
            (@clause = '8.4.5.5.1' and @testNumber = '1' and @failedChecks = '114')">Failed rules, Expected: 
            8.4.5.5.1-1, 114 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDStructElem' or
            (@clause = '8.2.5.27' and @testNumber = '1' and @failedChecks = '114')">Failed rules, Expected: 
            8.2.5.27-1, 114 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDStructTreeRoot' or
            (@clause = '6.2' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '8.2.5.2' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.2-2, 1 check, or 
            8.2.5.2-1, 1 check</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEAnnot' or
            (@clause = '6.2' and @testNumber = '28' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '205' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '250' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '781' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '824' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '991' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1175' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1221' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1326' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1374' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1470' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1519' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1568' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-28, 5 checks, or 
            6.2-205, 2 checks, or 
            6.2-250, 2 checks, or 
            6.2-781, 2 checks, or 
            6.2-824, 2 checks, or 
            6.2-991, 2 checks, or 
            6.2-1175, 2 checks, or 
            6.2-1221, 2 checks, or 
            6.2-1326, 2 checks, or 
            6.2-1374, 2 checks, or 
            6.2-1470, 2 checks, or 
            6.2-1519, 2 checks, or 
            6.2-1568, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEArt' or
            (@clause = '6.2' and @testNumber = '5' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '131' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '133' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '186' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '234' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '330' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '357' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '388' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '434' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '535' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '567' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '598' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '629' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '660' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '709' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '765' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '803' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '850' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '890' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '930' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '970' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1018' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1058' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1118' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1154' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1202' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1268' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1305' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1353' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1449' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1498' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1547' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1634' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-5, 5 checks, or 
            6.2-131, 2 checks, or 
            6.2-133, 1 check, or 
            6.2-186, 2 checks, or 
            6.2-234, 2 checks, or 
            6.2-330, 2 checks, or 
            6.2-357, 2 checks, or 
            6.2-388, 2 checks, or 
            6.2-434, 2 checks, or 
            6.2-535, 2 checks, or 
            6.2-567, 2 checks, or 
            6.2-598, 2 checks, or 
            6.2-629, 2 checks, or 
            6.2-660, 2 checks, or 
            6.2-709, 2 checks, or 
            6.2-765, 2 checks, or 
            6.2-803, 2 checks, or 
            6.2-850, 2 checks, or 
            6.2-890, 2 checks, or 
            6.2-930, 2 checks, or 
            6.2-970, 2 checks, or 
            6.2-1018, 2 checks, or 
            6.2-1058, 2 checks, or 
            6.2-1118, 2 checks, or 
            6.2-1154, 2 checks, or 
            6.2-1202, 2 checks, or 
            6.2-1268, 2 checks, or 
            6.2-1305, 2 checks, or 
            6.2-1353, 2 checks, or 
            6.2-1449, 2 checks, or 
            6.2-1498, 2 checks, or 
            6.2-1547, 2 checks, or 
            6.2-1634, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEArtifact' or
            (@clause = '6.2' and @testNumber = '53' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '846' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1014' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1654' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1655' and @failedChecks = '1')">Failed rules, Expected: 
            6.2-53, 5 checks, or 
            6.2-846, 2 checks, or 
            6.2-1014, 2 checks, or 
            6.2-1654, 1 check, or 
            6.2-1655, 1 check</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEAside' or
            (@clause = '6.2' and @testNumber = '10' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '189' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '237' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '277' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '278' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '301' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '303' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '362' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '393' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '438' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '478' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '509' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '540' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '572' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '603' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '634' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '665' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '714' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '769' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '808' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '855' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '895' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '935' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '975' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1023' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1063' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1121' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1159' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1206' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1272' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1310' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1358' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1403' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1427' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1454' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1503' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1552' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-10, 5 checks, or 
            6.2-189, 2 checks, or 
            6.2-237, 2 checks, or 
            6.2-277, 2 checks, or 
            6.2-278, 1 check, or 
            6.2-301, 1 check, or 
            6.2-303, 2 checks, or 
            6.2-362, 2 checks, or 
            6.2-393, 2 checks, or 
            6.2-438, 2 checks, or 
            6.2-478, 12 checks, or 
            6.2-509, 2 checks, or 
            6.2-540, 2 checks, or 
            6.2-572, 2 checks, or 
            6.2-603, 2 checks, or 
            6.2-634, 2 checks, or 
            6.2-665, 2 checks, or 
            6.2-714, 2 checks, or 
            6.2-769, 2 checks, or 
            6.2-808, 2 checks, or 
            6.2-855, 2 checks, or 
            6.2-895, 2 checks, or 
            6.2-935, 2 checks, or 
            6.2-975, 2 checks, or 
            6.2-1023, 2 checks, or 
            6.2-1063, 2 checks, or 
            6.2-1121, 2 checks, or 
            6.2-1159, 2 checks, or 
            6.2-1206, 2 checks, or 
            6.2-1272, 2 checks, or 
            6.2-1310, 2 checks, or 
            6.2-1358, 2 checks, or 
            6.2-1403, 2 checks, or 
            6.2-1427, 2 checks, or 
            6.2-1454, 2 checks, or 
            6.2-1503, 2 checks, or 
            6.2-1552, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEBibEntry' or
            (@clause = '6.2' and @testNumber = '42' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '73' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '100' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '149' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '175' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '219' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '264' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '294' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '320' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '835' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '876' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '916' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '956' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1003' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1044' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1084' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1109' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1143' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1187' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1234' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1292' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1340' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1388' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1484' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1533' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1582' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-42, 5 checks, or 
            6.2-73, 2 checks, or 
            6.2-100, 2 checks, or 
            6.2-149, 2 checks, or 
            6.2-175, 2 checks, or 
            6.2-219, 2 checks, or 
            6.2-264, 2 checks, or 
            6.2-294, 2 checks, or 
            6.2-320, 2 checks, or 
            6.2-835, 2 checks, or 
            6.2-876, 2 checks, or 
            6.2-916, 2 checks, or 
            6.2-956, 2 checks, or 
            6.2-1003, 2 checks, or 
            6.2-1044, 2 checks, or 
            6.2-1084, 2 checks, or 
            6.2-1109, 2 checks, or 
            6.2-1143, 2 checks, or 
            6.2-1187, 2 checks, or 
            6.2-1234, 2 checks, or 
            6.2-1292, 2 checks, or 
            6.2-1340, 2 checks, or 
            6.2-1388, 2 checks, or 
            6.2-1484, 2 checks, or 
            6.2-1533, 2 checks, or 
            6.2-1582, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEBlockQuote' or
            (@clause = '6.2' and @testNumber = '11' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '190' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '238' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '304' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '327' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '334' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '363' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '394' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '439' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '479' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '510' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '541' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '573' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '604' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '635' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '666' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '715' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '770' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '809' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '856' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '896' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '936' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '976' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1024' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1064' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1122' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1160' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1207' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1273' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1311' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1359' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1404' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1428' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1455' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1504' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1553' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-11, 5 checks, or 
            6.2-190, 2 checks, or 
            6.2-238, 2 checks, or 
            6.2-304, 1 check, or 
            6.2-327, 1 check, or 
            6.2-334, 2 checks, or 
            6.2-363, 2 checks, or 
            6.2-394, 2 checks, or 
            6.2-439, 2 checks, or 
            6.2-479, 12 checks, or 
            6.2-510, 2 checks, or 
            6.2-541, 2 checks, or 
            6.2-573, 2 checks, or 
            6.2-604, 2 checks, or 
            6.2-635, 2 checks, or 
            6.2-666, 2 checks, or 
            6.2-715, 2 checks, or 
            6.2-770, 2 checks, or 
            6.2-809, 2 checks, or 
            6.2-856, 2 checks, or 
            6.2-896, 2 checks, or 
            6.2-936, 2 checks, or 
            6.2-976, 2 checks, or 
            6.2-1024, 2 checks, or 
            6.2-1064, 2 checks, or 
            6.2-1122, 2 checks, or 
            6.2-1160, 2 checks, or 
            6.2-1207, 2 checks, or 
            6.2-1273, 2 checks, or 
            6.2-1311, 2 checks, or 
            6.2-1359, 2 checks, or 
            6.2-1404, 2 checks, or 
            6.2-1428, 2 checks, or 
            6.2-1455, 2 checks, or 
            6.2-1504, 2 checks, or 
            6.2-1553, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SECaption' or
            (@clause = '6.2' and @testNumber = '50' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '80' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '107' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '272' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '384' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '413' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '467' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '500' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '531' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '563' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '594' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '625' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '656' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '687' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '743' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '843' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '884' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '924' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '964' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1011' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1052' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1092' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1242' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1300' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1394' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1421' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1445' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1491' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1540' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1589' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1596' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1611' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-50, 5 checks, or 
            6.2-80, 2 checks, or 
            6.2-107, 2 checks, or 
            6.2-272, 2 checks, or 
            6.2-384, 2 checks, or 
            6.2-413, 2 checks, or 
            6.2-467, 2 checks, or 
            6.2-500, 12 checks, or 
            6.2-531, 2 checks, or 
            6.2-563, 2 checks, or 
            6.2-594, 2 checks, or 
            6.2-625, 2 checks, or 
            6.2-656, 2 checks, or 
            6.2-687, 2 checks, or 
            6.2-743, 2 checks, or 
            6.2-843, 2 checks, or 
            6.2-884, 2 checks, or 
            6.2-924, 2 checks, or 
            6.2-964, 2 checks, or 
            6.2-1011, 2 checks, or 
            6.2-1052, 2 checks, or 
            6.2-1092, 2 checks, or 
            6.2-1242, 2 checks, or 
            6.2-1300, 2 checks, or 
            6.2-1394, 2 checks, or 
            6.2-1421, 2 checks, or 
            6.2-1445, 2 checks, or 
            6.2-1491, 2 checks, or 
            6.2-1540, 2 checks, or 
            6.2-1589, 2 checks, or 
            6.2-1596, 1 check, or 
            6.2-1611, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SECode' or
            (@clause = '6.2' and @testNumber = '16' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '193' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '240' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '441' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '717' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '812' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '859' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '899' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '939' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '979' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1027' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1067' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1123' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1163' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1210' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1274' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1314' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1362' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1458' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1507' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1556' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-16, 5 checks, or 
            6.2-193, 2 checks, or 
            6.2-240, 2 checks, or 
            6.2-441, 2 checks, or 
            6.2-717, 2 checks, or 
            6.2-812, 2 checks, or 
            6.2-859, 2 checks, or 
            6.2-899, 2 checks, or 
            6.2-939, 2 checks, or 
            6.2-979, 2 checks, or 
            6.2-1027, 2 checks, or 
            6.2-1067, 2 checks, or 
            6.2-1123, 2 checks, or 
            6.2-1163, 2 checks, or 
            6.2-1210, 2 checks, or 
            6.2-1274, 2 checks, or 
            6.2-1314, 2 checks, or 
            6.2-1362, 2 checks, or 
            6.2-1458, 2 checks, or 
            6.2-1507, 2 checks, or 
            6.2-1556, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEDiv' or
            (@clause = '6.2' and @testNumber = '6' and @failedChecks = '9') or 
            (@clause = '6.2' and @testNumber = '129' and @failedChecks = '57') or 
            (@clause = '6.2' and @testNumber = '187' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '358' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '389' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '474' and @failedChecks = '24') or 
            (@clause = '6.2' and @testNumber = '505' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '536' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '568' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '599' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '630' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '661' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '710' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '804' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '851' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '891' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '931' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '971' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '1019' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '1059' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '1155' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '1306' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '1354' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '1450' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '1499' and @failedChecks = '4') or 
            (@clause = '6.2' and @testNumber = '1548' and @failedChecks = '4')">Failed rules, Expected: 
            6.2-6, 9 checks, or 
            6.2-129, 57 checks, or 
            6.2-187, 4 checks, or 
            6.2-358, 4 checks, or 
            6.2-389, 4 checks, or 
            6.2-474, 24 checks, or 
            6.2-505, 4 checks, or 
            6.2-536, 4 checks, or 
            6.2-568, 4 checks, or 
            6.2-599, 4 checks, or 
            6.2-630, 4 checks, or 
            6.2-661, 4 checks, or 
            6.2-710, 4 checks, or 
            6.2-804, 4 checks, or 
            6.2-851, 4 checks, or 
            6.2-891, 4 checks, or 
            6.2-931, 4 checks, or 
            6.2-971, 4 checks, or 
            6.2-1019, 4 checks, or 
            6.2-1059, 4 checks, or 
            6.2-1155, 4 checks, or 
            6.2-1306, 4 checks, or 
            6.2-1354, 4 checks, or 
            6.2-1450, 4 checks, or 
            6.2-1499, 4 checks, or 
            6.2-1548, 4 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEDocument' or
            (@clause = '6.2' and @testNumber = '56' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '130' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '157' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '183' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '231' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '328' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '354' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '385' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '414' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '433' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '470' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '501' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '532' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '564' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '595' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '626' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '657' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '688' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '706' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '745' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '763' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '800' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '847' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '887' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '927' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '967' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1015' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1055' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1095' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1116' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1151' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1199' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1245' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1266' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1302' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1350' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1398' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1422' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1446' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1495' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1544' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1593' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1612' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1632' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-56, 1 check, or 
            6.2-130, 2 checks, or 
            6.2-157, 2 checks, or 
            6.2-183, 2 checks, or 
            6.2-231, 2 checks, or 
            6.2-328, 2 checks, or 
            6.2-354, 2 checks, or 
            6.2-385, 2 checks, or 
            6.2-414, 2 checks, or 
            6.2-433, 2 checks, or 
            6.2-470, 12 checks, or 
            6.2-501, 2 checks, or 
            6.2-532, 2 checks, or 
            6.2-564, 2 checks, or 
            6.2-595, 2 checks, or 
            6.2-626, 2 checks, or 
            6.2-657, 2 checks, or 
            6.2-688, 2 checks, or 
            6.2-706, 2 checks, or 
            6.2-745, 2 checks, or 
            6.2-763, 2 checks, or 
            6.2-800, 2 checks, or 
            6.2-847, 2 checks, or 
            6.2-887, 2 checks, or 
            6.2-927, 2 checks, or 
            6.2-967, 2 checks, or 
            6.2-1015, 2 checks, or 
            6.2-1055, 2 checks, or 
            6.2-1095, 2 checks, or 
            6.2-1116, 2 checks, or 
            6.2-1151, 2 checks, or 
            6.2-1199, 2 checks, or 
            6.2-1245, 2 checks, or 
            6.2-1266, 2 checks, or 
            6.2-1302, 2 checks, or 
            6.2-1350, 2 checks, or 
            6.2-1398, 2 checks, or 
            6.2-1422, 2 checks, or 
            6.2-1446, 2 checks, or 
            6.2-1495, 2 checks, or 
            6.2-1544, 2 checks, or 
            6.2-1593, 2 checks, or 
            6.2-1612, 2 checks, or 
            6.2-1632, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEDocumentFragment' or
            (@clause = '6.2' and @testNumber = '3' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '83' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '184' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '232' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '329' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '355' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '386' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '471' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '502' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '533' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '565' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '596' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '627' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '658' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '707' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '764' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '801' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '848' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '888' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '928' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '968' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1016' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1056' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1117' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1152' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1200' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1246' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1267' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1303' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1351' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1399' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1423' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1447' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1496' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1545' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1613' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1633' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-3, 5 checks, or 
            6.2-83, 1 check, or 
            6.2-184, 2 checks, or 
            6.2-232, 2 checks, or 
            6.2-329, 2 checks, or 
            6.2-355, 2 checks, or 
            6.2-386, 2 checks, or 
            6.2-471, 12 checks, or 
            6.2-502, 2 checks, or 
            6.2-533, 2 checks, or 
            6.2-565, 2 checks, or 
            6.2-596, 2 checks, or 
            6.2-627, 2 checks, or 
            6.2-658, 2 checks, or 
            6.2-707, 2 checks, or 
            6.2-764, 2 checks, or 
            6.2-801, 2 checks, or 
            6.2-848, 2 checks, or 
            6.2-888, 2 checks, or 
            6.2-928, 2 checks, or 
            6.2-968, 2 checks, or 
            6.2-1016, 2 checks, or 
            6.2-1056, 2 checks, or 
            6.2-1117, 2 checks, or 
            6.2-1152, 2 checks, or 
            6.2-1200, 2 checks, or 
            6.2-1246, 2 checks, or 
            6.2-1267, 2 checks, or 
            6.2-1303, 2 checks, or 
            6.2-1351, 2 checks, or 
            6.2-1399, 2 checks, or 
            6.2-1423, 2 checks, or 
            6.2-1447, 2 checks, or 
            6.2-1496, 2 checks, or 
            6.2-1545, 2 checks, or 
            6.2-1613, 2 checks, or 
            6.2-1633, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEEm' or
            (@clause = '6.2' and @testNumber = '22' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '59' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '86' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '109' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '135' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '161' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '199' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '245' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '281' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '307' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '776' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '818' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '985' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1127' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1169' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1215' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1320' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1368' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1464' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1513' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1562' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-22, 5 checks, or 
            6.2-59, 2 checks, or 
            6.2-86, 2 checks, or 
            6.2-109, 2 checks, or 
            6.2-135, 2 checks, or 
            6.2-161, 2 checks, or 
            6.2-199, 2 checks, or 
            6.2-245, 2 checks, or 
            6.2-281, 2 checks, or 
            6.2-307, 2 checks, or 
            6.2-776, 2 checks, or 
            6.2-818, 2 checks, or 
            6.2-985, 2 checks, or 
            6.2-1127, 2 checks, or 
            6.2-1169, 2 checks, or 
            6.2-1215, 2 checks, or 
            6.2-1320, 2 checks, or 
            6.2-1368, 2 checks, or 
            6.2-1464, 2 checks, or 
            6.2-1513, 2 checks, or 
            6.2-1562, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEFENote' or
            (@clause = '6.2' and @testNumber = '37' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '214' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '259' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '830' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '871' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '911' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '951' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '998' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1039' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1079' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1184' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1230' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1335' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1383' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1479' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1528' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1577' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-37, 5 checks, or 
            6.2-214, 2 checks, or 
            6.2-259, 2 checks, or 
            6.2-830, 2 checks, or 
            6.2-871, 2 checks, or 
            6.2-911, 2 checks, or 
            6.2-951, 2 checks, or 
            6.2-998, 2 checks, or 
            6.2-1039, 2 checks, or 
            6.2-1079, 2 checks, or 
            6.2-1184, 2 checks, or 
            6.2-1230, 2 checks, or 
            6.2-1335, 2 checks, or 
            6.2-1383, 2 checks, or 
            6.2-1479, 2 checks, or 
            6.2-1528, 2 checks, or 
            6.2-1577, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEFigure' or
            (@clause = '6.2' and @testNumber = '51' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '228' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '273' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '468' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '844' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '885' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '925' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '965' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1012' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1053' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1093' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1196' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1243' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1347' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1395' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1492' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1541' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1590' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1616' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1631' and @failedChecks = '1') or 
            (@clause = '8.2.5.28.2' and @testNumber = '1' and @failedChecks = '115')">Failed rules, Expected: 
            6.2-51, 5 checks, or 
            6.2-228, 2 checks, or 
            6.2-273, 2 checks, or 
            6.2-468, 2 checks, or 
            6.2-844, 2 checks, or 
            6.2-885, 2 checks, or 
            6.2-925, 2 checks, or 
            6.2-965, 2 checks, or 
            6.2-1012, 2 checks, or 
            6.2-1053, 2 checks, or 
            6.2-1093, 2 checks, or 
            6.2-1196, 2 checks, or 
            6.2-1243, 2 checks, or 
            6.2-1347, 2 checks, or 
            6.2-1395, 2 checks, or 
            6.2-1492, 2 checks, or 
            6.2-1541, 2 checks, or 
            6.2-1590, 2 checks, or 
            6.2-1616, 1 check, or 
            6.2-1631, 1 check, or 
            8.2.5.28.2-1, 115 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEForm' or
            (@clause = '6.2' and @testNumber = '29' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '206' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '251' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '448' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '724' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '782' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '799' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '825' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '992' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1132' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1176' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1222' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1280' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1327' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1375' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1471' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1520' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1569' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-29, 5 checks, or 
            6.2-206, 2 checks, or 
            6.2-251, 2 checks, or 
            6.2-448, 2 checks, or 
            6.2-724, 2 checks, or 
            6.2-782, 2 checks, or 
            6.2-799, 1 check, or 
            6.2-825, 2 checks, or 
            6.2-992, 2 checks, or 
            6.2-1132, 2 checks, or 
            6.2-1176, 2 checks, or 
            6.2-1222, 2 checks, or 
            6.2-1280, 2 checks, or 
            6.2-1327, 2 checks, or 
            6.2-1375, 2 checks, or 
            6.2-1471, 2 checks, or 
            6.2-1520, 2 checks, or 
            6.2-1569, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEFormula' or
            (@clause = '6.2' and @testNumber = '52' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '229' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '274' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '469' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '744' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '845' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '886' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '926' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '966' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1013' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1054' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1094' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1197' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1244' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1301' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1348' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1396' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1493' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1542' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1591' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1638' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1653' and @failedChecks = '1')">Failed rules, Expected: 
            6.2-52, 5 checks, or 
            6.2-229, 2 checks, or 
            6.2-274, 2 checks, or 
            6.2-469, 2 checks, or 
            6.2-744, 2 checks, or 
            6.2-845, 2 checks, or 
            6.2-886, 2 checks, or 
            6.2-926, 2 checks, or 
            6.2-966, 2 checks, or 
            6.2-1013, 2 checks, or 
            6.2-1054, 2 checks, or 
            6.2-1094, 2 checks, or 
            6.2-1197, 2 checks, or 
            6.2-1244, 2 checks, or 
            6.2-1301, 2 checks, or 
            6.2-1348, 2 checks, or 
            6.2-1396, 2 checks, or 
            6.2-1493, 2 checks, or 
            6.2-1542, 2 checks, or 
            6.2-1591, 2 checks, or 
            6.2-1638, 1 check, or 
            6.2-1653, 1 check</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEH' or
            (@clause = '6.2' and @testNumber = '18' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '195' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '242' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '336' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '366' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '397' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '418' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '443' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '482' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '504' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '506' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '513' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '544' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '576' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '607' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '638' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '669' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '719' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '773' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '814' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '861' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '901' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '941' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '981' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1029' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1069' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1099' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1165' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1212' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1276' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1316' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1364' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1460' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1509' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1558' and @failedChecks = '2') or 
            (@clause = '8.2.5.12' and @testNumber = '1' and @failedChecks = '115')">Failed rules, Expected: 
            6.2-18, 5 checks, or 
            6.2-195, 2 checks, or 
            6.2-242, 2 checks, or 
            6.2-336, 2 checks, or 
            6.2-366, 2 checks, or 
            6.2-397, 2 checks, or 
            6.2-418, 2 checks, or 
            6.2-443, 2 checks, or 
            6.2-482, 12 checks, or 
            6.2-504, 1 check, or 
            6.2-506, 1 check, or 
            6.2-513, 2 checks, or 
            6.2-544, 2 checks, or 
            6.2-576, 2 checks, or 
            6.2-607, 2 checks, or 
            6.2-638, 2 checks, or 
            6.2-669, 2 checks, or 
            6.2-719, 2 checks, or 
            6.2-773, 2 checks, or 
            6.2-814, 2 checks, or 
            6.2-861, 2 checks, or 
            6.2-901, 2 checks, or 
            6.2-941, 2 checks, or 
            6.2-981, 2 checks, or 
            6.2-1029, 2 checks, or 
            6.2-1069, 2 checks, or 
            6.2-1099, 2 checks, or 
            6.2-1165, 2 checks, or 
            6.2-1212, 2 checks, or 
            6.2-1276, 2 checks, or 
            6.2-1316, 2 checks, or 
            6.2-1364, 2 checks, or 
            6.2-1460, 2 checks, or 
            6.2-1509, 2 checks, or 
            6.2-1558, 2 checks, or 
            8.2.5.12-1, 115 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEHn' or
            (@clause = '6.2' and @testNumber = '17' and @failedChecks = '30') or 
            (@clause = '6.2' and @testNumber = '194' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '241' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '335' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '365' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '396' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '417' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '442' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '473' and @failedChecks = '6') or 
            (@clause = '6.2' and @testNumber = '475' and @failedChecks = '6') or 
            (@clause = '6.2' and @testNumber = '481' and @failedChecks = '72') or 
            (@clause = '6.2' and @testNumber = '512' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '543' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '575' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '606' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '637' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '668' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '718' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '772' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '813' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '860' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '900' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '940' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '980' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '1028' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '1068' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '1098' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '1164' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '1211' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '1275' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '1315' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '1363' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '1459' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '1508' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '1557' and @failedChecks = '12')">Failed rules, Expected: 
            6.2-17, 30 checks, or 
            6.2-194, 12 checks, or 
            6.2-241, 12 checks, or 
            6.2-335, 12 checks, or 
            6.2-365, 12 checks, or 
            6.2-396, 12 checks, or 
            6.2-417, 12 checks, or 
            6.2-442, 12 checks, or 
            6.2-473, 6 checks, or 
            6.2-475, 6 checks, or 
            6.2-481, 72 checks, or 
            6.2-512, 12 checks, or 
            6.2-543, 12 checks, or 
            6.2-575, 12 checks, or 
            6.2-606, 12 checks, or 
            6.2-637, 12 checks, or 
            6.2-668, 12 checks, or 
            6.2-718, 12 checks, or 
            6.2-772, 12 checks, or 
            6.2-813, 12 checks, or 
            6.2-860, 12 checks, or 
            6.2-900, 12 checks, or 
            6.2-940, 12 checks, or 
            6.2-980, 12 checks, or 
            6.2-1028, 12 checks, or 
            6.2-1068, 12 checks, or 
            6.2-1098, 12 checks, or 
            6.2-1164, 12 checks, or 
            6.2-1211, 12 checks, or 
            6.2-1275, 12 checks, or 
            6.2-1315, 12 checks, or 
            6.2-1363, 12 checks, or 
            6.2-1459, 12 checks, or 
            6.2-1508, 12 checks, or 
            6.2-1557, 12 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEIndex' or
            (@clause = '6.2' and @testNumber = '38' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '215' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '260' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '344' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '374' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '404' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '456' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '489' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '520' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '552' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '583' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '614' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '645' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '676' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '697' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '732' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '754' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '790' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '831' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '872' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '912' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '952' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '999' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1040' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1080' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1106' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1140' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1185' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1231' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1288' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1336' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1384' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1480' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1529' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1578' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-38, 5 checks, or 
            6.2-215, 2 checks, or 
            6.2-260, 2 checks, or 
            6.2-344, 2 checks, or 
            6.2-374, 2 checks, or 
            6.2-404, 2 checks, or 
            6.2-456, 2 checks, or 
            6.2-489, 12 checks, or 
            6.2-520, 2 checks, or 
            6.2-552, 2 checks, or 
            6.2-583, 2 checks, or 
            6.2-614, 2 checks, or 
            6.2-645, 2 checks, or 
            6.2-676, 2 checks, or 
            6.2-697, 2 checks, or 
            6.2-732, 2 checks, or 
            6.2-754, 2 checks, or 
            6.2-790, 2 checks, or 
            6.2-831, 2 checks, or 
            6.2-872, 2 checks, or 
            6.2-912, 2 checks, or 
            6.2-952, 2 checks, or 
            6.2-999, 2 checks, or 
            6.2-1040, 2 checks, or 
            6.2-1080, 2 checks, or 
            6.2-1106, 2 checks, or 
            6.2-1140, 2 checks, or 
            6.2-1185, 2 checks, or 
            6.2-1231, 2 checks, or 
            6.2-1288, 2 checks, or 
            6.2-1336, 2 checks, or 
            6.2-1384, 2 checks, or 
            6.2-1480, 2 checks, or 
            6.2-1529, 2 checks, or 
            6.2-1578, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEL' or
            (@clause = '6.2' and @testNumber = '39' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '216' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '261' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '457' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '490' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '521' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '553' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '584' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '615' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '646' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '677' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '733' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '832' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '873' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '913' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '953' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1000' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1041' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1081' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1195' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1232' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1289' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1337' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1385' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1481' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1530' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1579' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-39, 5 checks, or 
            6.2-216, 2 checks, or 
            6.2-261, 2 checks, or 
            6.2-457, 2 checks, or 
            6.2-490, 12 checks, or 
            6.2-521, 2 checks, or 
            6.2-553, 2 checks, or 
            6.2-584, 2 checks, or 
            6.2-615, 2 checks, or 
            6.2-646, 2 checks, or 
            6.2-677, 2 checks, or 
            6.2-733, 2 checks, or 
            6.2-832, 2 checks, or 
            6.2-873, 2 checks, or 
            6.2-913, 2 checks, or 
            6.2-953, 2 checks, or 
            6.2-1000, 2 checks, or 
            6.2-1041, 2 checks, or 
            6.2-1081, 2 checks, or 
            6.2-1195, 1 check, or 
            6.2-1232, 2 checks, or 
            6.2-1289, 2 checks, or 
            6.2-1337, 2 checks, or 
            6.2-1385, 2 checks, or 
            6.2-1481, 2 checks, or 
            6.2-1530, 2 checks, or 
            6.2-1579, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELBody' or
            (@clause = '6.2' and @testNumber = '41' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '72' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '99' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '121' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '148' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '174' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '218' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '263' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '293' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '319' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '346' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '376' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '406' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '426' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '459' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '492' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '523' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '555' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '586' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '617' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '648' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '679' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '699' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '735' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '756' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '792' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '834' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '875' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '915' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '955' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1002' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1043' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1083' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1108' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1142' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1186' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1249' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1258' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1265' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1291' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1339' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1387' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1414' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1438' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1483' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1532' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1581' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1604' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1624' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1646' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-41, 5 checks, or 
            6.2-72, 2 checks, or 
            6.2-99, 2 checks, or 
            6.2-121, 2 checks, or 
            6.2-148, 2 checks, or 
            6.2-174, 2 checks, or 
            6.2-218, 2 checks, or 
            6.2-263, 2 checks, or 
            6.2-293, 2 checks, or 
            6.2-319, 2 checks, or 
            6.2-346, 2 checks, or 
            6.2-376, 2 checks, or 
            6.2-406, 2 checks, or 
            6.2-426, 2 checks, or 
            6.2-459, 2 checks, or 
            6.2-492, 12 checks, or 
            6.2-523, 2 checks, or 
            6.2-555, 2 checks, or 
            6.2-586, 2 checks, or 
            6.2-617, 2 checks, or 
            6.2-648, 2 checks, or 
            6.2-679, 2 checks, or 
            6.2-699, 2 checks, or 
            6.2-735, 2 checks, or 
            6.2-756, 2 checks, or 
            6.2-792, 2 checks, or 
            6.2-834, 2 checks, or 
            6.2-875, 2 checks, or 
            6.2-915, 2 checks, or 
            6.2-955, 2 checks, or 
            6.2-1002, 2 checks, or 
            6.2-1043, 2 checks, or 
            6.2-1083, 2 checks, or 
            6.2-1108, 2 checks, or 
            6.2-1142, 2 checks, or 
            6.2-1186, 2 checks, or 
            6.2-1249, 1 check, or 
            6.2-1258, 2 checks, or 
            6.2-1265, 1 check, or 
            6.2-1291, 2 checks, or 
            6.2-1339, 2 checks, or 
            6.2-1387, 2 checks, or 
            6.2-1414, 2 checks, or 
            6.2-1438, 2 checks, or 
            6.2-1483, 2 checks, or 
            6.2-1532, 2 checks, or 
            6.2-1581, 2 checks, or 
            6.2-1604, 2 checks, or 
            6.2-1624, 2 checks, or 
            6.2-1646, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELI' or
            (@clause = '6.2' and @testNumber = '40' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '71' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '98' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '120' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '147' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '173' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '217' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '262' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '292' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '318' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '345' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '375' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '405' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '425' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '458' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '491' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '522' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '554' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '585' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '616' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '647' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '678' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '698' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '734' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '755' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '791' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '833' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '874' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '914' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '954' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1001' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1042' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1082' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1107' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1141' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1233' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1257' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1290' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1338' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1386' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1413' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1437' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1482' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1531' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1580' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1603' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1623' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1645' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-40, 5 checks, or 
            6.2-71, 2 checks, or 
            6.2-98, 2 checks, or 
            6.2-120, 2 checks, or 
            6.2-147, 2 checks, or 
            6.2-173, 2 checks, or 
            6.2-217, 2 checks, or 
            6.2-262, 2 checks, or 
            6.2-292, 2 checks, or 
            6.2-318, 2 checks, or 
            6.2-345, 2 checks, or 
            6.2-375, 2 checks, or 
            6.2-405, 2 checks, or 
            6.2-425, 2 checks, or 
            6.2-458, 2 checks, or 
            6.2-491, 12 checks, or 
            6.2-522, 2 checks, or 
            6.2-554, 2 checks, or 
            6.2-585, 2 checks, or 
            6.2-616, 2 checks, or 
            6.2-647, 2 checks, or 
            6.2-678, 2 checks, or 
            6.2-698, 2 checks, or 
            6.2-734, 2 checks, or 
            6.2-755, 2 checks, or 
            6.2-791, 2 checks, or 
            6.2-833, 2 checks, or 
            6.2-874, 2 checks, or 
            6.2-914, 2 checks, or 
            6.2-954, 2 checks, or 
            6.2-1001, 2 checks, or 
            6.2-1042, 2 checks, or 
            6.2-1082, 2 checks, or 
            6.2-1107, 2 checks, or 
            6.2-1141, 2 checks, or 
            6.2-1233, 2 checks, or 
            6.2-1257, 2 checks, or 
            6.2-1290, 2 checks, or 
            6.2-1338, 2 checks, or 
            6.2-1386, 2 checks, or 
            6.2-1413, 2 checks, or 
            6.2-1437, 2 checks, or 
            6.2-1482, 2 checks, or 
            6.2-1531, 2 checks, or 
            6.2-1580, 2 checks, or 
            6.2-1603, 2 checks, or 
            6.2-1623, 2 checks, or 
            6.2-1645, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELbl' or
            (@clause = '6.2' and @testNumber = '21' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '58' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '85' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '198' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '446' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '546' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '817' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '863' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '903' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '943' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '984' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1031' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1071' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1126' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1168' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1251' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1319' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1367' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1463' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1512' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1561' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-21, 5 checks, or 
            6.2-58, 2 checks, or 
            6.2-85, 2 checks, or 
            6.2-198, 2 checks, or 
            6.2-446, 2 checks, or 
            6.2-546, 2 checks, or 
            6.2-817, 2 checks, or 
            6.2-863, 2 checks, or 
            6.2-903, 2 checks, or 
            6.2-943, 2 checks, or 
            6.2-984, 2 checks, or 
            6.2-1031, 2 checks, or 
            6.2-1071, 2 checks, or 
            6.2-1126, 2 checks, or 
            6.2-1168, 2 checks, or 
            6.2-1251, 2 checks, or 
            6.2-1319, 2 checks, or 
            6.2-1367, 2 checks, or 
            6.2-1463, 2 checks, or 
            6.2-1512, 2 checks, or 
            6.2-1561, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SELink' or
            (@clause = '6.2' and @testNumber = '26' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '203' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '249' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '691' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '780' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '822' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '989' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1131' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1173' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1219' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1324' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1372' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1468' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1517' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1566' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-26, 5 checks, or 
            6.2-203, 2 checks, or 
            6.2-249, 2 checks, or 
            6.2-691, 2 checks, or 
            6.2-780, 2 checks, or 
            6.2-822, 2 checks, or 
            6.2-989, 2 checks, or 
            6.2-1131, 2 checks, or 
            6.2-1173, 2 checks, or 
            6.2-1219, 2 checks, or 
            6.2-1324, 2 checks, or 
            6.2-1372, 2 checks, or 
            6.2-1468, 2 checks, or 
            6.2-1517, 2 checks, or 
            6.2-1566, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SENonStruct' or
            (@clause = '6.2' and @testNumber = '12' and @failedChecks = '5')">Failed rules, Expected: 
            6.2-12, 5 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SENote' or
            (@clause = '6.2' and @testNumber = '15' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '192' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '239' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '811' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '858' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '898' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '938' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '978' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1026' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1066' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1162' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1209' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1313' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1361' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1457' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1506' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1555' and @failedChecks = '2') or 
            (@clause = '8.2.5.14' and @testNumber = '1' and @failedChecks = '115')">Failed rules, Expected: 
            6.2-15, 5 checks, or 
            6.2-192, 2 checks, or 
            6.2-239, 2 checks, or 
            6.2-811, 2 checks, or 
            6.2-858, 2 checks, or 
            6.2-898, 2 checks, or 
            6.2-938, 2 checks, or 
            6.2-978, 2 checks, or 
            6.2-1026, 2 checks, or 
            6.2-1066, 2 checks, or 
            6.2-1162, 2 checks, or 
            6.2-1209, 2 checks, or 
            6.2-1313, 2 checks, or 
            6.2-1361, 2 checks, or 
            6.2-1457, 2 checks, or 
            6.2-1506, 2 checks, or 
            6.2-1555, 2 checks, or 
            8.2.5.14-1, 115 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEP' or
            (@clause = '6.2' and @testNumber = '14' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '191' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '364' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '395' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '440' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '480' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '511' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '542' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '574' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '605' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '636' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '667' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '716' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '771' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '810' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '857' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '897' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '937' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '977' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1025' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1065' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1161' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1208' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1312' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1360' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1456' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1505' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1554' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-14, 5 checks, or 
            6.2-191, 2 checks, or 
            6.2-364, 2 checks, or 
            6.2-395, 2 checks, or 
            6.2-440, 2 checks, or 
            6.2-480, 12 checks, or 
            6.2-511, 2 checks, or 
            6.2-542, 2 checks, or 
            6.2-574, 2 checks, or 
            6.2-605, 2 checks, or 
            6.2-636, 2 checks, or 
            6.2-667, 2 checks, or 
            6.2-716, 2 checks, or 
            6.2-771, 2 checks, or 
            6.2-810, 2 checks, or 
            6.2-857, 2 checks, or 
            6.2-897, 2 checks, or 
            6.2-937, 2 checks, or 
            6.2-977, 2 checks, or 
            6.2-1025, 2 checks, or 
            6.2-1065, 2 checks, or 
            6.2-1161, 2 checks, or 
            6.2-1208, 2 checks, or 
            6.2-1312, 2 checks, or 
            6.2-1360, 2 checks, or 
            6.2-1456, 2 checks, or 
            6.2-1505, 2 checks, or 
            6.2-1554, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEPart' or
            (@clause = '6.2' and @testNumber = '4' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '185' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '233' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '356' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '387' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '472' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '503' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '534' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '566' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '597' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '628' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '659' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '708' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '802' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '849' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '889' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '929' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '969' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1017' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1057' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1153' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1201' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1304' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1352' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1400' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1424' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1448' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1497' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1546' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-4, 5 checks, or 
            6.2-185, 2 checks, or 
            6.2-233, 2 checks, or 
            6.2-356, 2 checks, or 
            6.2-387, 2 checks, or 
            6.2-472, 12 checks, or 
            6.2-503, 2 checks, or 
            6.2-534, 2 checks, or 
            6.2-566, 2 checks, or 
            6.2-597, 2 checks, or 
            6.2-628, 2 checks, or 
            6.2-659, 2 checks, or 
            6.2-708, 2 checks, or 
            6.2-802, 2 checks, or 
            6.2-849, 2 checks, or 
            6.2-889, 2 checks, or 
            6.2-929, 2 checks, or 
            6.2-969, 2 checks, or 
            6.2-1017, 2 checks, or 
            6.2-1057, 2 checks, or 
            6.2-1153, 2 checks, or 
            6.2-1201, 2 checks, or 
            6.2-1304, 2 checks, or 
            6.2-1352, 2 checks, or 
            6.2-1400, 2 checks, or 
            6.2-1424, 2 checks, or 
            6.2-1448, 2 checks, or 
            6.2-1497, 2 checks, or 
            6.2-1546, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEPrivate' or
            (@clause = '6.2' and @testNumber = '13' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '748' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-13, 5 checks, or 
            6.2-748, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEQuote' or
            (@clause = '6.2' and @testNumber = '25' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '62' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '89' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '112' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '138' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '164' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '202' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '248' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '284' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '310' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '447' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '722' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '779' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '821' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '988' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1130' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1172' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1218' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1279' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1323' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1371' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1467' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1516' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1565' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-25, 5 checks, or 
            6.2-62, 2 checks, or 
            6.2-89, 2 checks, or 
            6.2-112, 2 checks, or 
            6.2-138, 2 checks, or 
            6.2-164, 2 checks, or 
            6.2-202, 2 checks, or 
            6.2-248, 2 checks, or 
            6.2-284, 2 checks, or 
            6.2-310, 2 checks, or 
            6.2-447, 2 checks, or 
            6.2-722, 2 checks, or 
            6.2-779, 2 checks, or 
            6.2-821, 2 checks, or 
            6.2-988, 2 checks, or 
            6.2-1130, 2 checks, or 
            6.2-1172, 2 checks, or 
            6.2-1218, 2 checks, or 
            6.2-1279, 2 checks, or 
            6.2-1323, 2 checks, or 
            6.2-1371, 2 checks, or 
            6.2-1467, 2 checks, or 
            6.2-1516, 2 checks, or 
            6.2-1565, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERB' or
            (@clause = '6.2' and @testNumber = '31' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '65' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '92' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '114' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '141' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '167' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '208' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '253' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '286' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '312' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '339' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '369' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '399' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '420' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '450' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '484' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '515' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '547' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '578' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '609' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '640' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '671' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '692' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '726' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '749' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '784' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '865' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '905' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '945' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '994' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1033' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1073' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1101' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1134' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1178' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1224' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1252' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1282' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1329' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1377' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1408' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1432' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1473' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1522' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1571' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1598' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1618' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1640' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-31, 5 checks, or 
            6.2-65, 2 checks, or 
            6.2-92, 2 checks, or 
            6.2-114, 2 checks, or 
            6.2-141, 2 checks, or 
            6.2-167, 2 checks, or 
            6.2-208, 2 checks, or 
            6.2-253, 2 checks, or 
            6.2-286, 2 checks, or 
            6.2-312, 2 checks, or 
            6.2-339, 2 checks, or 
            6.2-369, 2 checks, or 
            6.2-399, 2 checks, or 
            6.2-420, 2 checks, or 
            6.2-450, 2 checks, or 
            6.2-484, 12 checks, or 
            6.2-515, 2 checks, or 
            6.2-547, 2 checks, or 
            6.2-578, 2 checks, or 
            6.2-609, 2 checks, or 
            6.2-640, 2 checks, or 
            6.2-671, 2 checks, or 
            6.2-692, 2 checks, or 
            6.2-726, 2 checks, or 
            6.2-749, 2 checks, or 
            6.2-784, 2 checks, or 
            6.2-865, 2 checks, or 
            6.2-905, 2 checks, or 
            6.2-945, 2 checks, or 
            6.2-994, 2 checks, or 
            6.2-1033, 2 checks, or 
            6.2-1073, 2 checks, or 
            6.2-1101, 2 checks, or 
            6.2-1134, 2 checks, or 
            6.2-1178, 2 checks, or 
            6.2-1224, 2 checks, or 
            6.2-1252, 2 checks, or 
            6.2-1282, 2 checks, or 
            6.2-1329, 2 checks, or 
            6.2-1377, 2 checks, or 
            6.2-1408, 2 checks, or 
            6.2-1432, 2 checks, or 
            6.2-1473, 2 checks, or 
            6.2-1522, 2 checks, or 
            6.2-1571, 2 checks, or 
            6.2-1598, 2 checks, or 
            6.2-1618, 2 checks, or 
            6.2-1640, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERP' or
            (@clause = '6.2' and @testNumber = '33' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '67' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '94' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '116' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '143' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '169' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '210' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '255' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '288' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '314' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '341' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '371' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '401' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '422' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '452' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '486' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '517' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '549' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '580' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '611' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '642' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '673' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '694' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '728' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '751' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '786' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '867' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '907' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '947' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '996' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1035' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1075' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1103' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1136' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1180' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1226' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1254' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1284' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1331' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1379' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1410' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1434' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1475' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1524' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1573' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1600' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1620' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1642' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-33, 5 checks, or 
            6.2-67, 2 checks, or 
            6.2-94, 2 checks, or 
            6.2-116, 2 checks, or 
            6.2-143, 2 checks, or 
            6.2-169, 2 checks, or 
            6.2-210, 2 checks, or 
            6.2-255, 2 checks, or 
            6.2-288, 2 checks, or 
            6.2-314, 2 checks, or 
            6.2-341, 2 checks, or 
            6.2-371, 2 checks, or 
            6.2-401, 2 checks, or 
            6.2-422, 2 checks, or 
            6.2-452, 2 checks, or 
            6.2-486, 12 checks, or 
            6.2-517, 2 checks, or 
            6.2-549, 2 checks, or 
            6.2-580, 2 checks, or 
            6.2-611, 2 checks, or 
            6.2-642, 2 checks, or 
            6.2-673, 2 checks, or 
            6.2-694, 2 checks, or 
            6.2-728, 2 checks, or 
            6.2-751, 2 checks, or 
            6.2-786, 2 checks, or 
            6.2-867, 2 checks, or 
            6.2-907, 2 checks, or 
            6.2-947, 2 checks, or 
            6.2-996, 2 checks, or 
            6.2-1035, 2 checks, or 
            6.2-1075, 2 checks, or 
            6.2-1103, 2 checks, or 
            6.2-1136, 2 checks, or 
            6.2-1180, 2 checks, or 
            6.2-1226, 2 checks, or 
            6.2-1254, 2 checks, or 
            6.2-1284, 2 checks, or 
            6.2-1331, 2 checks, or 
            6.2-1379, 2 checks, or 
            6.2-1410, 2 checks, or 
            6.2-1434, 2 checks, or 
            6.2-1475, 2 checks, or 
            6.2-1524, 2 checks, or 
            6.2-1573, 2 checks, or 
            6.2-1600, 2 checks, or 
            6.2-1620, 2 checks, or 
            6.2-1642, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERT' or
            (@clause = '6.2' and @testNumber = '32' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '66' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '93' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '115' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '142' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '168' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '209' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '254' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '287' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '313' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '340' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '370' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '400' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '421' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '451' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '485' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '516' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '548' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '579' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '610' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '641' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '672' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '693' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '727' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '750' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '785' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '866' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '906' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '946' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '995' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1034' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1074' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1102' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1135' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1179' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1225' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1253' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1283' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1330' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1378' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1409' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1433' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1474' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1523' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1572' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1599' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1619' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1641' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-32, 5 checks, or 
            6.2-66, 2 checks, or 
            6.2-93, 2 checks, or 
            6.2-115, 2 checks, or 
            6.2-142, 2 checks, or 
            6.2-168, 2 checks, or 
            6.2-209, 2 checks, or 
            6.2-254, 2 checks, or 
            6.2-287, 2 checks, or 
            6.2-313, 2 checks, or 
            6.2-340, 2 checks, or 
            6.2-370, 2 checks, or 
            6.2-400, 2 checks, or 
            6.2-421, 2 checks, or 
            6.2-451, 2 checks, or 
            6.2-485, 12 checks, or 
            6.2-516, 2 checks, or 
            6.2-548, 2 checks, or 
            6.2-579, 2 checks, or 
            6.2-610, 2 checks, or 
            6.2-641, 2 checks, or 
            6.2-672, 2 checks, or 
            6.2-693, 2 checks, or 
            6.2-727, 2 checks, or 
            6.2-750, 2 checks, or 
            6.2-785, 2 checks, or 
            6.2-866, 2 checks, or 
            6.2-906, 2 checks, or 
            6.2-946, 2 checks, or 
            6.2-995, 2 checks, or 
            6.2-1034, 2 checks, or 
            6.2-1074, 2 checks, or 
            6.2-1102, 2 checks, or 
            6.2-1135, 2 checks, or 
            6.2-1179, 2 checks, or 
            6.2-1225, 2 checks, or 
            6.2-1253, 2 checks, or 
            6.2-1283, 2 checks, or 
            6.2-1330, 2 checks, or 
            6.2-1378, 2 checks, or 
            6.2-1409, 2 checks, or 
            6.2-1433, 2 checks, or 
            6.2-1474, 2 checks, or 
            6.2-1523, 2 checks, or 
            6.2-1572, 2 checks, or 
            6.2-1599, 2 checks, or 
            6.2-1619, 2 checks, or 
            6.2-1641, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEReference' or
            (@clause = '6.2' and @testNumber = '27' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '63' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '90' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '139' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '165' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '204' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '723' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '823' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '990' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1174' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1220' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1325' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1373' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1469' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1518' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1567' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-27, 5 checks, or 
            6.2-63, 2 checks, or 
            6.2-90, 2 checks, or 
            6.2-139, 2 checks, or 
            6.2-165, 2 checks, or 
            6.2-204, 2 checks, or 
            6.2-723, 2 checks, or 
            6.2-823, 2 checks, or 
            6.2-990, 2 checks, or 
            6.2-1174, 2 checks, or 
            6.2-1220, 2 checks, or 
            6.2-1325, 2 checks, or 
            6.2-1373, 2 checks, or 
            6.2-1469, 2 checks, or 
            6.2-1518, 2 checks, or 
            6.2-1567, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SERuby' or
            (@clause = '6.2' and @testNumber = '30' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '64' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '91' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '113' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '140' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '166' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '207' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '252' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '285' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '311' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '449' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '725' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '783' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '826' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '864' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '904' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '944' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '993' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1032' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1072' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1133' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1177' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1223' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1281' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1328' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1376' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1472' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1521' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1570' and @failedChecks = '2') or 
            (@clause = '8.2.5.23' and @testNumber = '1' and @failedChecks = '115')">Failed rules, Expected: 
            6.2-30, 5 checks, or 
            6.2-64, 2 checks, or 
            6.2-91, 2 checks, or 
            6.2-113, 2 checks, or 
            6.2-140, 2 checks, or 
            6.2-166, 2 checks, or 
            6.2-207, 2 checks, or 
            6.2-252, 2 checks, or 
            6.2-285, 2 checks, or 
            6.2-311, 2 checks, or 
            6.2-449, 2 checks, or 
            6.2-725, 2 checks, or 
            6.2-783, 2 checks, or 
            6.2-826, 2 checks, or 
            6.2-864, 2 checks, or 
            6.2-904, 2 checks, or 
            6.2-944, 2 checks, or 
            6.2-993, 2 checks, or 
            6.2-1032, 2 checks, or 
            6.2-1072, 2 checks, or 
            6.2-1133, 2 checks, or 
            6.2-1177, 2 checks, or 
            6.2-1223, 2 checks, or 
            6.2-1281, 2 checks, or 
            6.2-1328, 2 checks, or 
            6.2-1376, 2 checks, or 
            6.2-1472, 2 checks, or 
            6.2-1521, 2 checks, or 
            6.2-1570, 2 checks, or 
            8.2.5.23-1, 115 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESect' or
            (@clause = '6.2' and @testNumber = '7' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '159' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '188' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '235' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '331' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '359' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '390' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '435' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '537' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '569' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '600' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '631' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '662' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '711' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '766' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '805' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '852' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '892' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '932' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '972' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1020' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1060' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1156' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1203' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1269' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1307' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1355' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1451' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1500' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1549' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1635' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-7, 5 checks, or 
            6.2-159, 1 check, or 
            6.2-188, 2 checks, or 
            6.2-235, 2 checks, or 
            6.2-331, 2 checks, or 
            6.2-359, 2 checks, or 
            6.2-390, 2 checks, or 
            6.2-435, 2 checks, or 
            6.2-537, 2 checks, or 
            6.2-569, 2 checks, or 
            6.2-600, 2 checks, or 
            6.2-631, 2 checks, or 
            6.2-662, 2 checks, or 
            6.2-711, 2 checks, or 
            6.2-766, 2 checks, or 
            6.2-805, 2 checks, or 
            6.2-852, 2 checks, or 
            6.2-892, 2 checks, or 
            6.2-932, 2 checks, or 
            6.2-972, 2 checks, or 
            6.2-1020, 2 checks, or 
            6.2-1060, 2 checks, or 
            6.2-1156, 2 checks, or 
            6.2-1203, 2 checks, or 
            6.2-1269, 2 checks, or 
            6.2-1307, 2 checks, or 
            6.2-1355, 2 checks, or 
            6.2-1451, 2 checks, or 
            6.2-1500, 2 checks, or 
            6.2-1549, 2 checks, or 
            6.2-1635, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESimpleContentItem' or
            (@clause = '8.2.2' and @testNumber = '1' and @failedChecks = '114')">Failed rules, Expected: 
            8.2.2-1, 114 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESpan' or
            (@clause = '6.2' and @testNumber = '24' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '61' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '88' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '111' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '137' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '163' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '201' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '247' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '283' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '309' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '778' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '820' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '987' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1129' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1171' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1217' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1322' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1370' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1466' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1515' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1564' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-24, 5 checks, or 
            6.2-61, 2 checks, or 
            6.2-88, 2 checks, or 
            6.2-111, 2 checks, or 
            6.2-137, 2 checks, or 
            6.2-163, 2 checks, or 
            6.2-201, 2 checks, or 
            6.2-247, 2 checks, or 
            6.2-283, 2 checks, or 
            6.2-309, 2 checks, or 
            6.2-778, 2 checks, or 
            6.2-820, 2 checks, or 
            6.2-987, 2 checks, or 
            6.2-1129, 2 checks, or 
            6.2-1171, 2 checks, or 
            6.2-1217, 2 checks, or 
            6.2-1322, 2 checks, or 
            6.2-1370, 2 checks, or 
            6.2-1466, 2 checks, or 
            6.2-1515, 2 checks, or 
            6.2-1564, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEStrong' or
            (@clause = '6.2' and @testNumber = '23' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '60' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '87' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '110' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '136' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '162' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '200' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '246' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '282' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '308' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '777' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '819' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '986' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1128' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1170' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1216' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1321' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1369' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1465' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1514' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1563' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-23, 5 checks, or 
            6.2-60, 2 checks, or 
            6.2-87, 2 checks, or 
            6.2-110, 2 checks, or 
            6.2-136, 2 checks, or 
            6.2-162, 2 checks, or 
            6.2-200, 2 checks, or 
            6.2-246, 2 checks, or 
            6.2-282, 2 checks, or 
            6.2-308, 2 checks, or 
            6.2-777, 2 checks, or 
            6.2-819, 2 checks, or 
            6.2-986, 2 checks, or 
            6.2-1128, 2 checks, or 
            6.2-1170, 2 checks, or 
            6.2-1216, 2 checks, or 
            6.2-1321, 2 checks, or 
            6.2-1369, 2 checks, or 
            6.2-1465, 2 checks, or 
            6.2-1514, 2 checks, or 
            6.2-1563, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SESub' or
            (@clause = '6.2' and @testNumber = '20' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '57' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '84' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '134' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '160' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '197' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '244' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '280' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '306' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '338' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '368' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '721' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '775' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '816' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '983' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1125' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1167' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1214' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1278' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1318' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1366' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1407' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1431' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1462' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1511' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1560' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-20, 5 checks, or 
            6.2-57, 2 checks, or 
            6.2-84, 2 checks, or 
            6.2-134, 2 checks, or 
            6.2-160, 2 checks, or 
            6.2-197, 2 checks, or 
            6.2-244, 2 checks, or 
            6.2-280, 2 checks, or 
            6.2-306, 2 checks, or 
            6.2-338, 2 checks, or 
            6.2-368, 2 checks, or 
            6.2-721, 2 checks, or 
            6.2-775, 2 checks, or 
            6.2-816, 2 checks, or 
            6.2-983, 2 checks, or 
            6.2-1125, 2 checks, or 
            6.2-1167, 2 checks, or 
            6.2-1214, 2 checks, or 
            6.2-1278, 2 checks, or 
            6.2-1318, 2 checks, or 
            6.2-1366, 2 checks, or 
            6.2-1407, 2 checks, or 
            6.2-1431, 2 checks, or 
            6.2-1462, 2 checks, or 
            6.2-1511, 2 checks, or 
            6.2-1560, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETBody' or
            (@clause = '6.2' and @testNumber = '48' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '78' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '105' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '126' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '154' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '180' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '225' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '270' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '299' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '325' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '351' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '382' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '411' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '431' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '465' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '498' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '529' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '561' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '592' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '623' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '654' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '685' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '704' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '741' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '761' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '797' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '841' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '882' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '922' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '962' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1009' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1050' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1090' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1114' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1148' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1193' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1240' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1263' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1298' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1392' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1419' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1443' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1489' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1538' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1587' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1609' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1629' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1651' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-48, 5 checks, or 
            6.2-78, 2 checks, or 
            6.2-105, 2 checks, or 
            6.2-126, 2 checks, or 
            6.2-154, 2 checks, or 
            6.2-180, 2 checks, or 
            6.2-225, 2 checks, or 
            6.2-270, 2 checks, or 
            6.2-299, 2 checks, or 
            6.2-325, 2 checks, or 
            6.2-351, 2 checks, or 
            6.2-382, 2 checks, or 
            6.2-411, 2 checks, or 
            6.2-431, 2 checks, or 
            6.2-465, 2 checks, or 
            6.2-498, 12 checks, or 
            6.2-529, 2 checks, or 
            6.2-561, 2 checks, or 
            6.2-592, 2 checks, or 
            6.2-623, 2 checks, or 
            6.2-654, 2 checks, or 
            6.2-685, 2 checks, or 
            6.2-704, 2 checks, or 
            6.2-741, 2 checks, or 
            6.2-761, 2 checks, or 
            6.2-797, 2 checks, or 
            6.2-841, 2 checks, or 
            6.2-882, 2 checks, or 
            6.2-922, 2 checks, or 
            6.2-962, 2 checks, or 
            6.2-1009, 2 checks, or 
            6.2-1050, 2 checks, or 
            6.2-1090, 2 checks, or 
            6.2-1114, 2 checks, or 
            6.2-1148, 2 checks, or 
            6.2-1193, 2 checks, or 
            6.2-1240, 2 checks, or 
            6.2-1263, 2 checks, or 
            6.2-1298, 2 checks, or 
            6.2-1392, 2 checks, or 
            6.2-1419, 2 checks, or 
            6.2-1443, 2 checks, or 
            6.2-1489, 2 checks, or 
            6.2-1538, 2 checks, or 
            6.2-1587, 2 checks, or 
            6.2-1609, 2 checks, or 
            6.2-1629, 2 checks, or 
            6.2-1651, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETD' or
            (@clause = '6.2' and @testNumber = '46' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '76' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '103' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '124' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '152' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '178' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '223' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '268' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '297' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '323' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '349' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '380' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '409' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '429' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '463' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '496' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '527' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '559' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '590' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '621' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '652' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '683' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '702' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '739' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '759' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '795' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '839' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '880' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '920' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '960' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1007' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1048' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1088' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1112' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1146' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1191' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1238' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1261' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1296' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1343' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1417' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1429' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1441' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1487' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1536' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1585' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1607' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1627' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1649' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-46, 5 checks, or 
            6.2-76, 2 checks, or 
            6.2-103, 2 checks, or 
            6.2-124, 2 checks, or 
            6.2-152, 2 checks, or 
            6.2-178, 2 checks, or 
            6.2-223, 2 checks, or 
            6.2-268, 2 checks, or 
            6.2-297, 2 checks, or 
            6.2-323, 2 checks, or 
            6.2-349, 2 checks, or 
            6.2-380, 2 checks, or 
            6.2-409, 2 checks, or 
            6.2-429, 2 checks, or 
            6.2-463, 2 checks, or 
            6.2-496, 12 checks, or 
            6.2-527, 2 checks, or 
            6.2-559, 2 checks, or 
            6.2-590, 2 checks, or 
            6.2-621, 2 checks, or 
            6.2-652, 2 checks, or 
            6.2-683, 2 checks, or 
            6.2-702, 2 checks, or 
            6.2-739, 2 checks, or 
            6.2-759, 2 checks, or 
            6.2-795, 2 checks, or 
            6.2-839, 2 checks, or 
            6.2-880, 2 checks, or 
            6.2-920, 2 checks, or 
            6.2-960, 2 checks, or 
            6.2-1007, 2 checks, or 
            6.2-1048, 2 checks, or 
            6.2-1088, 2 checks, or 
            6.2-1112, 2 checks, or 
            6.2-1146, 2 checks, or 
            6.2-1191, 2 checks, or 
            6.2-1238, 2 checks, or 
            6.2-1261, 2 checks, or 
            6.2-1296, 2 checks, or 
            6.2-1343, 2 checks, or 
            6.2-1417, 2 checks, or 
            6.2-1429, 1 check, or 
            6.2-1441, 2 checks, or 
            6.2-1487, 2 checks, or 
            6.2-1536, 2 checks, or 
            6.2-1585, 2 checks, or 
            6.2-1607, 2 checks, or 
            6.2-1627, 2 checks, or 
            6.2-1649, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETFoot' or
            (@clause = '6.2' and @testNumber = '49' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '79' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '106' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '127' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '155' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '181' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '226' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '271' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '300' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '326' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '352' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '383' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '412' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '432' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '466' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '499' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '530' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '562' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '593' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '624' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '655' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '686' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '705' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '742' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '762' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '798' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '842' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '883' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '923' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '963' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1010' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1051' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1091' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1115' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1149' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1194' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1241' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1264' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1299' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1393' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1420' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1444' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1490' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1539' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1588' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1610' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1630' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1652' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-49, 5 checks, or 
            6.2-79, 2 checks, or 
            6.2-106, 2 checks, or 
            6.2-127, 2 checks, or 
            6.2-155, 2 checks, or 
            6.2-181, 2 checks, or 
            6.2-226, 2 checks, or 
            6.2-271, 2 checks, or 
            6.2-300, 2 checks, or 
            6.2-326, 2 checks, or 
            6.2-352, 2 checks, or 
            6.2-383, 2 checks, or 
            6.2-412, 2 checks, or 
            6.2-432, 2 checks, or 
            6.2-466, 2 checks, or 
            6.2-499, 12 checks, or 
            6.2-530, 2 checks, or 
            6.2-562, 2 checks, or 
            6.2-593, 2 checks, or 
            6.2-624, 2 checks, or 
            6.2-655, 2 checks, or 
            6.2-686, 2 checks, or 
            6.2-705, 2 checks, or 
            6.2-742, 2 checks, or 
            6.2-762, 2 checks, or 
            6.2-798, 2 checks, or 
            6.2-842, 2 checks, or 
            6.2-883, 2 checks, or 
            6.2-923, 2 checks, or 
            6.2-963, 2 checks, or 
            6.2-1010, 2 checks, or 
            6.2-1051, 2 checks, or 
            6.2-1091, 2 checks, or 
            6.2-1115, 2 checks, or 
            6.2-1149, 2 checks, or 
            6.2-1194, 2 checks, or 
            6.2-1241, 2 checks, or 
            6.2-1264, 2 checks, or 
            6.2-1299, 2 checks, or 
            6.2-1393, 2 checks, or 
            6.2-1420, 2 checks, or 
            6.2-1444, 2 checks, or 
            6.2-1490, 2 checks, or 
            6.2-1539, 2 checks, or 
            6.2-1588, 2 checks, or 
            6.2-1610, 2 checks, or 
            6.2-1630, 2 checks, or 
            6.2-1652, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETH' or
            (@clause = '6.2' and @testNumber = '45' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '75' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '102' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '123' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '151' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '177' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '222' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '267' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '296' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '322' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '348' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '379' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '408' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '428' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '462' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '495' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '526' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '558' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '589' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '620' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '651' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '682' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '701' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '738' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '758' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '794' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '838' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '879' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '919' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '959' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1006' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1047' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1087' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1111' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1145' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1190' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1237' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1260' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1295' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1342' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1405' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1416' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1440' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1486' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1535' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1584' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1606' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1626' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1648' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-45, 5 checks, or 
            6.2-75, 2 checks, or 
            6.2-102, 2 checks, or 
            6.2-123, 2 checks, or 
            6.2-151, 2 checks, or 
            6.2-177, 2 checks, or 
            6.2-222, 2 checks, or 
            6.2-267, 2 checks, or 
            6.2-296, 2 checks, or 
            6.2-322, 2 checks, or 
            6.2-348, 2 checks, or 
            6.2-379, 2 checks, or 
            6.2-408, 2 checks, or 
            6.2-428, 2 checks, or 
            6.2-462, 2 checks, or 
            6.2-495, 12 checks, or 
            6.2-526, 2 checks, or 
            6.2-558, 2 checks, or 
            6.2-589, 2 checks, or 
            6.2-620, 2 checks, or 
            6.2-651, 2 checks, or 
            6.2-682, 2 checks, or 
            6.2-701, 2 checks, or 
            6.2-738, 2 checks, or 
            6.2-758, 2 checks, or 
            6.2-794, 2 checks, or 
            6.2-838, 2 checks, or 
            6.2-879, 2 checks, or 
            6.2-919, 2 checks, or 
            6.2-959, 2 checks, or 
            6.2-1006, 2 checks, or 
            6.2-1047, 2 checks, or 
            6.2-1087, 2 checks, or 
            6.2-1111, 2 checks, or 
            6.2-1145, 2 checks, or 
            6.2-1190, 2 checks, or 
            6.2-1237, 2 checks, or 
            6.2-1260, 2 checks, or 
            6.2-1295, 2 checks, or 
            6.2-1342, 2 checks, or 
            6.2-1405, 1 check, or 
            6.2-1416, 2 checks, or 
            6.2-1440, 2 checks, or 
            6.2-1486, 2 checks, or 
            6.2-1535, 2 checks, or 
            6.2-1584, 2 checks, or 
            6.2-1606, 2 checks, or 
            6.2-1626, 2 checks, or 
            6.2-1648, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETHead' or
            (@clause = '6.2' and @testNumber = '47' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '77' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '104' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '125' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '153' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '179' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '224' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '269' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '298' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '324' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '350' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '381' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '410' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '430' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '464' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '497' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '528' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '560' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '591' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '622' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '653' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '684' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '703' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '740' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '760' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '796' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '840' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '881' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '921' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '961' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1008' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1049' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1089' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1113' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1147' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1192' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1239' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1262' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1297' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1391' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1418' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1442' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1488' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1537' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1586' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1608' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1628' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1650' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-47, 5 checks, or 
            6.2-77, 2 checks, or 
            6.2-104, 2 checks, or 
            6.2-125, 2 checks, or 
            6.2-153, 2 checks, or 
            6.2-179, 2 checks, or 
            6.2-224, 2 checks, or 
            6.2-269, 2 checks, or 
            6.2-298, 2 checks, or 
            6.2-324, 2 checks, or 
            6.2-350, 2 checks, or 
            6.2-381, 2 checks, or 
            6.2-410, 2 checks, or 
            6.2-430, 2 checks, or 
            6.2-464, 2 checks, or 
            6.2-497, 12 checks, or 
            6.2-528, 2 checks, or 
            6.2-560, 2 checks, or 
            6.2-591, 2 checks, or 
            6.2-622, 2 checks, or 
            6.2-653, 2 checks, or 
            6.2-684, 2 checks, or 
            6.2-703, 2 checks, or 
            6.2-740, 2 checks, or 
            6.2-760, 2 checks, or 
            6.2-796, 2 checks, or 
            6.2-840, 2 checks, or 
            6.2-881, 2 checks, or 
            6.2-921, 2 checks, or 
            6.2-961, 2 checks, or 
            6.2-1008, 2 checks, or 
            6.2-1049, 2 checks, or 
            6.2-1089, 2 checks, or 
            6.2-1113, 2 checks, or 
            6.2-1147, 2 checks, or 
            6.2-1192, 2 checks, or 
            6.2-1239, 2 checks, or 
            6.2-1262, 2 checks, or 
            6.2-1297, 2 checks, or 
            6.2-1391, 2 checks, or 
            6.2-1418, 2 checks, or 
            6.2-1442, 2 checks, or 
            6.2-1488, 2 checks, or 
            6.2-1537, 2 checks, or 
            6.2-1586, 2 checks, or 
            6.2-1608, 2 checks, or 
            6.2-1628, 2 checks, or 
            6.2-1650, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETOC' or
            (@clause = '6.2' and @testNumber = '8' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '227' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '332' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '360' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '391' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '415' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '436' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '476' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '507' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '538' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '570' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '601' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '632' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '663' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '689' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '712' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '746' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '767' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '806' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '853' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '893' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '933' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '973' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1021' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1061' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1096' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1119' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1157' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1204' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1247' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1270' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1308' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1356' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1401' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1425' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1452' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1501' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1550' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1594' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1614' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1636' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-8, 5 checks, or 
            6.2-227, 1 check, or 
            6.2-332, 2 checks, or 
            6.2-360, 2 checks, or 
            6.2-391, 2 checks, or 
            6.2-415, 2 checks, or 
            6.2-436, 2 checks, or 
            6.2-476, 12 checks, or 
            6.2-507, 2 checks, or 
            6.2-538, 2 checks, or 
            6.2-570, 2 checks, or 
            6.2-601, 2 checks, or 
            6.2-632, 2 checks, or 
            6.2-663, 2 checks, or 
            6.2-689, 2 checks, or 
            6.2-712, 2 checks, or 
            6.2-746, 2 checks, or 
            6.2-767, 2 checks, or 
            6.2-806, 2 checks, or 
            6.2-853, 2 checks, or 
            6.2-893, 2 checks, or 
            6.2-933, 2 checks, or 
            6.2-973, 2 checks, or 
            6.2-1021, 2 checks, or 
            6.2-1061, 2 checks, or 
            6.2-1096, 2 checks, or 
            6.2-1119, 2 checks, or 
            6.2-1157, 2 checks, or 
            6.2-1204, 2 checks, or 
            6.2-1247, 2 checks, or 
            6.2-1270, 2 checks, or 
            6.2-1308, 2 checks, or 
            6.2-1356, 2 checks, or 
            6.2-1401, 2 checks, or 
            6.2-1425, 2 checks, or 
            6.2-1452, 2 checks, or 
            6.2-1501, 2 checks, or 
            6.2-1550, 2 checks, or 
            6.2-1594, 2 checks, or 
            6.2-1614, 2 checks, or 
            6.2-1636, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETOCI' or
            (@clause = '6.2' and @testNumber = '9' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '55' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '82' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '132' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '158' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '236' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '276' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '302' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '333' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '361' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '392' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '416' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '437' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '477' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '508' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '539' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '571' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '602' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '633' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '664' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '690' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '713' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '747' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '768' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '807' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '854' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '894' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '934' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '974' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1022' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1062' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1097' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1120' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1158' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1205' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1248' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1271' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1309' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1357' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1402' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1426' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1453' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1502' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1551' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1595' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1615' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1637' and @failedChecks = '2') or 
            (@clause = '8.2.5.8' and @testNumber = '1' and @failedChecks = '115')">Failed rules, Expected: 
            6.2-9, 5 checks, or 
            6.2-55, 2 checks, or 
            6.2-82, 2 checks, or 
            6.2-132, 2 checks, or 
            6.2-158, 2 checks, or 
            6.2-236, 2 checks, or 
            6.2-276, 2 checks, or 
            6.2-302, 2 checks, or 
            6.2-333, 2 checks, or 
            6.2-361, 2 checks, or 
            6.2-392, 2 checks, or 
            6.2-416, 2 checks, or 
            6.2-437, 2 checks, or 
            6.2-477, 12 checks, or 
            6.2-508, 2 checks, or 
            6.2-539, 2 checks, or 
            6.2-571, 2 checks, or 
            6.2-602, 2 checks, or 
            6.2-633, 2 checks, or 
            6.2-664, 2 checks, or 
            6.2-690, 2 checks, or 
            6.2-713, 2 checks, or 
            6.2-747, 2 checks, or 
            6.2-768, 2 checks, or 
            6.2-807, 2 checks, or 
            6.2-854, 2 checks, or 
            6.2-894, 2 checks, or 
            6.2-934, 2 checks, or 
            6.2-974, 2 checks, or 
            6.2-1022, 2 checks, or 
            6.2-1062, 2 checks, or 
            6.2-1097, 2 checks, or 
            6.2-1120, 2 checks, or 
            6.2-1158, 2 checks, or 
            6.2-1205, 2 checks, or 
            6.2-1248, 2 checks, or 
            6.2-1271, 2 checks, or 
            6.2-1309, 2 checks, or 
            6.2-1357, 2 checks, or 
            6.2-1402, 2 checks, or 
            6.2-1426, 2 checks, or 
            6.2-1453, 2 checks, or 
            6.2-1502, 2 checks, or 
            6.2-1551, 2 checks, or 
            6.2-1595, 2 checks, or 
            6.2-1615, 2 checks, or 
            6.2-1637, 2 checks, or 
            8.2.5.8-1, 115 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETR' or
            (@clause = '6.2' and @testNumber = '44' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '74' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '101' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '122' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '150' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '176' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '221' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '266' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '295' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '321' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '347' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '378' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '407' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '427' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '461' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '494' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '525' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '557' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '588' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '619' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '650' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '681' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '700' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '737' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '757' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '793' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '837' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '878' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '918' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '958' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1005' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1046' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1086' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1110' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1144' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1189' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1236' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1259' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1294' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1390' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1415' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1439' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1605' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1625' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1647' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-44, 5 checks, or 
            6.2-74, 2 checks, or 
            6.2-101, 2 checks, or 
            6.2-122, 2 checks, or 
            6.2-150, 2 checks, or 
            6.2-176, 2 checks, or 
            6.2-221, 2 checks, or 
            6.2-266, 2 checks, or 
            6.2-295, 2 checks, or 
            6.2-321, 2 checks, or 
            6.2-347, 2 checks, or 
            6.2-378, 2 checks, or 
            6.2-407, 2 checks, or 
            6.2-427, 2 checks, or 
            6.2-461, 2 checks, or 
            6.2-494, 12 checks, or 
            6.2-525, 2 checks, or 
            6.2-557, 2 checks, or 
            6.2-588, 2 checks, or 
            6.2-619, 2 checks, or 
            6.2-650, 2 checks, or 
            6.2-681, 2 checks, or 
            6.2-700, 2 checks, or 
            6.2-737, 2 checks, or 
            6.2-757, 2 checks, or 
            6.2-793, 2 checks, or 
            6.2-837, 2 checks, or 
            6.2-878, 2 checks, or 
            6.2-918, 2 checks, or 
            6.2-958, 2 checks, or 
            6.2-1005, 2 checks, or 
            6.2-1046, 2 checks, or 
            6.2-1086, 2 checks, or 
            6.2-1110, 2 checks, or 
            6.2-1144, 2 checks, or 
            6.2-1189, 2 checks, or 
            6.2-1236, 2 checks, or 
            6.2-1259, 2 checks, or 
            6.2-1294, 2 checks, or 
            6.2-1390, 2 checks, or 
            6.2-1415, 2 checks, or 
            6.2-1439, 2 checks, or 
            6.2-1605, 2 checks, or 
            6.2-1625, 2 checks, or 
            6.2-1647, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETable' or
            (@clause = '6.2' and @testNumber = '43' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '220' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '265' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '377' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '460' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '493' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '524' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '556' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '587' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '618' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '649' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '680' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '736' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '836' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '877' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '917' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '957' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1004' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1045' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1085' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1188' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1235' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1293' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1341' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1344' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1345' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1346' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1389' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1485' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1534' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1583' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-43, 5 checks, or 
            6.2-220, 2 checks, or 
            6.2-265, 2 checks, or 
            6.2-377, 2 checks, or 
            6.2-460, 2 checks, or 
            6.2-493, 12 checks, or 
            6.2-524, 2 checks, or 
            6.2-556, 2 checks, or 
            6.2-587, 2 checks, or 
            6.2-618, 2 checks, or 
            6.2-649, 2 checks, or 
            6.2-680, 2 checks, or 
            6.2-736, 2 checks, or 
            6.2-836, 2 checks, or 
            6.2-877, 2 checks, or 
            6.2-917, 2 checks, or 
            6.2-957, 2 checks, or 
            6.2-1004, 2 checks, or 
            6.2-1045, 2 checks, or 
            6.2-1085, 2 checks, or 
            6.2-1188, 2 checks, or 
            6.2-1235, 2 checks, or 
            6.2-1293, 2 checks, or 
            6.2-1341, 2 checks, or 
            6.2-1344, 1 check, or 
            6.2-1345, 1 check, or 
            6.2-1346, 1 check, or 
            6.2-1389, 2 checks, or 
            6.2-1485, 2 checks, or 
            6.2-1534, 2 checks, or 
            6.2-1583, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETitle' or
            (@clause = '6.2' and @testNumber = '19' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '196' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '243' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '279' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '305' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '337' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '353' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '367' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '398' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '419' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '444' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '483' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '514' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '545' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '577' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '608' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '639' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '670' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '720' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '774' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '815' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '862' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '902' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '942' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '982' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1030' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1070' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1100' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1124' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1166' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1213' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1250' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1277' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1317' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1365' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1406' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1430' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1461' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1510' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1559' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1597' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1617' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1639' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-19, 5 checks, or 
            6.2-196, 2 checks, or 
            6.2-243, 2 checks, or 
            6.2-279, 2 checks, or 
            6.2-305, 2 checks, or 
            6.2-337, 2 checks, or 
            6.2-353, 1 check, or 
            6.2-367, 2 checks, or 
            6.2-398, 2 checks, or 
            6.2-419, 2 checks, or 
            6.2-444, 2 checks, or 
            6.2-483, 12 checks, or 
            6.2-514, 2 checks, or 
            6.2-545, 2 checks, or 
            6.2-577, 2 checks, or 
            6.2-608, 2 checks, or 
            6.2-639, 2 checks, or 
            6.2-670, 2 checks, or 
            6.2-720, 2 checks, or 
            6.2-774, 2 checks, or 
            6.2-815, 2 checks, or 
            6.2-862, 2 checks, or 
            6.2-902, 2 checks, or 
            6.2-942, 2 checks, or 
            6.2-982, 2 checks, or 
            6.2-1030, 2 checks, or 
            6.2-1070, 2 checks, or 
            6.2-1100, 2 checks, or 
            6.2-1124, 2 checks, or 
            6.2-1166, 2 checks, or 
            6.2-1213, 2 checks, or 
            6.2-1250, 2 checks, or 
            6.2-1277, 2 checks, or 
            6.2-1317, 2 checks, or 
            6.2-1365, 2 checks, or 
            6.2-1406, 2 checks, or 
            6.2-1430, 2 checks, or 
            6.2-1461, 2 checks, or 
            6.2-1510, 2 checks, or 
            6.2-1559, 2 checks, or 
            6.2-1597, 2 checks, or 
            6.2-1617, 2 checks, or 
            6.2-1639, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEWP' or
            (@clause = '6.2' and @testNumber = '36' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '70' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '97' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '119' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '146' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '172' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '213' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '258' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '291' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '317' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '343' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '373' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '403' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '424' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '455' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '488' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '519' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '551' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '582' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '613' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '644' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '675' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '696' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '731' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '753' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '789' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '829' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '870' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '910' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '950' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1038' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1078' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1105' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1139' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1183' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1229' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1256' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1287' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1334' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1382' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1412' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1436' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1478' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1527' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1576' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1602' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1622' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1644' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-36, 5 checks, or 
            6.2-70, 2 checks, or 
            6.2-97, 2 checks, or 
            6.2-119, 2 checks, or 
            6.2-146, 2 checks, or 
            6.2-172, 2 checks, or 
            6.2-213, 2 checks, or 
            6.2-258, 2 checks, or 
            6.2-291, 2 checks, or 
            6.2-317, 2 checks, or 
            6.2-343, 2 checks, or 
            6.2-373, 2 checks, or 
            6.2-403, 2 checks, or 
            6.2-424, 2 checks, or 
            6.2-455, 2 checks, or 
            6.2-488, 12 checks, or 
            6.2-519, 2 checks, or 
            6.2-551, 2 checks, or 
            6.2-582, 2 checks, or 
            6.2-613, 2 checks, or 
            6.2-644, 2 checks, or 
            6.2-675, 2 checks, or 
            6.2-696, 2 checks, or 
            6.2-731, 2 checks, or 
            6.2-753, 2 checks, or 
            6.2-789, 2 checks, or 
            6.2-829, 2 checks, or 
            6.2-870, 2 checks, or 
            6.2-910, 2 checks, or 
            6.2-950, 2 checks, or 
            6.2-1038, 2 checks, or 
            6.2-1078, 2 checks, or 
            6.2-1105, 2 checks, or 
            6.2-1139, 2 checks, or 
            6.2-1183, 2 checks, or 
            6.2-1229, 2 checks, or 
            6.2-1256, 2 checks, or 
            6.2-1287, 2 checks, or 
            6.2-1334, 2 checks, or 
            6.2-1382, 2 checks, or 
            6.2-1412, 2 checks, or 
            6.2-1436, 2 checks, or 
            6.2-1478, 2 checks, or 
            6.2-1527, 2 checks, or 
            6.2-1576, 2 checks, or 
            6.2-1602, 2 checks, or 
            6.2-1622, 2 checks, or 
            6.2-1644, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEWT' or
            (@clause = '6.2' and @testNumber = '35' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '69' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '96' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '118' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '145' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '171' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '212' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '257' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '290' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '316' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '342' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '372' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '402' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '423' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '454' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '487' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '518' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '550' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '581' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '612' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '643' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '674' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '695' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '730' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '752' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '788' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '828' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '869' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '909' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '949' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1037' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1077' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1104' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1138' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1182' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1228' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1255' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1286' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1333' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1381' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1411' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1435' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1477' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1526' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1575' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1601' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1621' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1643' and @failedChecks = '2')">Failed rules, Expected: 
            6.2-35, 5 checks, or 
            6.2-69, 2 checks, or 
            6.2-96, 2 checks, or 
            6.2-118, 2 checks, or 
            6.2-145, 2 checks, or 
            6.2-171, 2 checks, or 
            6.2-212, 2 checks, or 
            6.2-257, 2 checks, or 
            6.2-290, 2 checks, or 
            6.2-316, 2 checks, or 
            6.2-342, 2 checks, or 
            6.2-372, 2 checks, or 
            6.2-402, 2 checks, or 
            6.2-423, 2 checks, or 
            6.2-454, 2 checks, or 
            6.2-487, 12 checks, or 
            6.2-518, 2 checks, or 
            6.2-550, 2 checks, or 
            6.2-581, 2 checks, or 
            6.2-612, 2 checks, or 
            6.2-643, 2 checks, or 
            6.2-674, 2 checks, or 
            6.2-695, 2 checks, or 
            6.2-730, 2 checks, or 
            6.2-752, 2 checks, or 
            6.2-788, 2 checks, or 
            6.2-828, 2 checks, or 
            6.2-869, 2 checks, or 
            6.2-909, 2 checks, or 
            6.2-949, 2 checks, or 
            6.2-1037, 2 checks, or 
            6.2-1077, 2 checks, or 
            6.2-1104, 2 checks, or 
            6.2-1138, 2 checks, or 
            6.2-1182, 2 checks, or 
            6.2-1228, 2 checks, or 
            6.2-1255, 2 checks, or 
            6.2-1286, 2 checks, or 
            6.2-1333, 2 checks, or 
            6.2-1381, 2 checks, or 
            6.2-1411, 2 checks, or 
            6.2-1435, 2 checks, or 
            6.2-1477, 2 checks, or 
            6.2-1526, 2 checks, or 
            6.2-1575, 2 checks, or 
            6.2-1601, 2 checks, or 
            6.2-1621, 2 checks, or 
            6.2-1643, 2 checks</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SEWarichu' or
            (@clause = '6.2' and @testNumber = '34' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '68' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '95' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '117' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '144' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '170' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '211' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '256' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '289' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '315' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '453' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '729' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '787' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '827' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '868' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '908' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '948' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '997' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1036' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1076' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1137' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1181' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1227' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1285' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1332' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1380' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1476' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1525' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '1574' and @failedChecks = '2') or 
            (@clause = '8.2.5.24' and @testNumber = '1' and @failedChecks = '115')">Failed rules, Expected: 
            6.2-34, 5 checks, or 
            6.2-68, 2 checks, or 
            6.2-95, 2 checks, or 
            6.2-117, 2 checks, or 
            6.2-144, 2 checks, or 
            6.2-170, 2 checks, or 
            6.2-211, 2 checks, or 
            6.2-256, 2 checks, or 
            6.2-289, 2 checks, or 
            6.2-315, 2 checks, or 
            6.2-453, 2 checks, or 
            6.2-729, 2 checks, or 
            6.2-787, 2 checks, or 
            6.2-827, 2 checks, or 
            6.2-868, 2 checks, or 
            6.2-908, 2 checks, or 
            6.2-948, 2 checks, or 
            6.2-997, 2 checks, or 
            6.2-1036, 2 checks, or 
            6.2-1076, 2 checks, or 
            6.2-1137, 2 checks, or 
            6.2-1181, 2 checks, or 
            6.2-1227, 2 checks, or 
            6.2-1285, 2 checks, or 
            6.2-1332, 2 checks, or 
            6.2-1380, 2 checks, or 
            6.2-1476, 2 checks, or 
            6.2-1525, 2 checks, or 
            6.2-1574, 2 checks, or 
            8.2.5.24-1, 115 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
