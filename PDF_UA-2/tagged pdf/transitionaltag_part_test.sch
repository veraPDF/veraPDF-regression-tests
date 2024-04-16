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
            <sch:assert test="(@failedRules = '99')">Failed check, Expected: 99</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.2' and @testNumber = '4' and @failedChecks = '5') or 
            (@clause = '6.2' and @testNumber = '5' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '6' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '7' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '8' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '9' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '11' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '12' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '13' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '14' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '15' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '16' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '17' and @failedChecks = '6') or 
            (@clause = '6.2' and @testNumber = '18' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '21' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '24' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '25' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '26' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '27' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '28' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '29' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '30' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '31' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '32' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '33' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '34' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '35' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '36' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '38' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '39' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '40' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '41' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '42' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '43' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '44' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '45' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '46' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '47' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '48' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '49' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '50' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '51' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '52' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '111' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '112' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '113' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '114' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '115' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '116' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '117' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '118' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '119' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '120' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '121' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '122' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '123' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '124' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '125' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '126' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '127' and @failedChecks = '114') or 
            (@clause = '6.2' and @testNumber = '128' and @failedChecks = '57') or 
            (@clause = '6.2' and @testNumber = '185' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '233' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '387' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '472' and @failedChecks = '12') or 
            (@clause = '6.2' and @testNumber = '503' and @failedChecks = '2') or 
            (@clause = '6.2' and @testNumber = '534' and @failedChecks = '2') or 
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
            (@clause = '6.2' and @testNumber = '1546' and @failedChecks = '2') or 
            (@clause = '8.2.2' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = '8.2.4' and @testNumber = '1' and @failedChecks = '920') or 
            (@clause = '8.2.5.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '8.2.5.8' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = '8.2.5.12' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = '8.2.5.14' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = '8.2.5.23' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = '8.2.5.24' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = '8.2.5.27' and @testNumber = '1' and @failedChecks = '57') or 
            (@clause = '8.2.5.28.2' and @testNumber = '1' and @failedChecks = '115') or 
            (@clause = '8.4.4' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '8.4.5.5.1' and @testNumber = '1' and @failedChecks = '114') or 
            (@clause = '8.11.2' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.2-4, 5 checks, or 
            6.2-5, 1 check, or 
            6.2-6, 1 check, or 
            6.2-7, 1 check, or 
            6.2-8, 1 check, or 
            6.2-9, 1 check, or 
            6.2-11, 1 check, or 
            6.2-12, 1 check, or 
            6.2-13, 1 check, or 
            6.2-14, 1 check, or 
            6.2-15, 1 check, or 
            6.2-16, 1 check, or 
            6.2-17, 6 checks, or 
            6.2-18, 1 check, or 
            6.2-21, 1 check, or 
            6.2-24, 1 check, or 
            6.2-25, 1 check, or 
            6.2-26, 1 check, or 
            6.2-27, 1 check, or 
            6.2-28, 1 check, or 
            6.2-29, 1 check, or 
            6.2-30, 1 check, or 
            6.2-31, 1 check, or 
            6.2-32, 1 check, or 
            6.2-33, 1 check, or 
            6.2-34, 1 check, or 
            6.2-35, 1 check, or 
            6.2-36, 1 check, or 
            6.2-38, 1 check, or 
            6.2-39, 1 check, or 
            6.2-40, 1 check, or 
            6.2-41, 1 check, or 
            6.2-42, 1 check, or 
            6.2-43, 1 check, or 
            6.2-44, 1 check, or 
            6.2-45, 1 check, or 
            6.2-46, 1 check, or 
            6.2-47, 1 check, or 
            6.2-48, 1 check, or 
            6.2-49, 1 check, or 
            6.2-50, 1 check, or 
            6.2-51, 1 check, or 
            6.2-52, 1 check, or 
            6.2-111, 114 checks, or 
            6.2-112, 114 checks, or 
            6.2-113, 114 checks, or 
            6.2-114, 114 checks, or 
            6.2-115, 114 checks, or 
            6.2-116, 114 checks, or 
            6.2-117, 114 checks, or 
            6.2-118, 114 checks, or 
            6.2-119, 114 checks, or 
            6.2-120, 114 checks, or 
            6.2-121, 114 checks, or 
            6.2-122, 114 checks, or 
            6.2-123, 114 checks, or 
            6.2-124, 114 checks, or 
            6.2-125, 114 checks, or 
            6.2-126, 114 checks, or 
            6.2-127, 114 checks, or 
            6.2-128, 57 checks, or 
            6.2-185, 2 checks, or 
            6.2-233, 2 checks, or 
            6.2-387, 2 checks, or 
            6.2-472, 12 checks, or 
            6.2-503, 2 checks, or 
            6.2-534, 2 checks, or 
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
            6.2-1546, 2 checks, or 
            8.2.2-1, 114 checks, or 
            8.2.4-1, 920 checks, or 
            8.2.5.2-1, 1 check, or 
            8.2.5.8-1, 115 checks, or 
            8.2.5.12-1, 115 checks, or 
            8.2.5.14-1, 115 checks, or 
            8.2.5.23-1, 115 checks, or 
            8.2.5.24-1, 115 checks, or 
            8.2.5.27-1, 57 checks, or 
            8.2.5.28.2-1, 115 checks, or 
            8.4.4-1, 1 check, or 
            8.4.5.5.1-1, 114 checks, or 
            8.11.2-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
