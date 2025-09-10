<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 01408.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '5')">Failed check, Expected: 5</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '5' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '3' and @failedChecks = '7462') or 
            (@clause = '7.3' and @testNumber = '1' and @failedChecks = '50') or 
            (@clause = '7.4.2' and @testNumber = '1' and @failedChecks = '8')">Failed rules, Expected: 
            5-1, 1 check, or 
            6.2-1, 1 check, or 
            7.1-3, 7462 checks, or 
            7.3-1, 50 checks, or 
            7.4.2-1, 8 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '100'">Failed check, Expected: 100</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "MarkedInfo must be a &apos;COSDictionary&apos; but got: COS_UNDEFINED") and @occurrences = "3" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 219 0 obj is different from the actual parent struct element 360 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 220 0 obj is different from the actual parent struct element 360 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 221 0 obj is different from the actual parent struct element 360 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 224 0 obj is different from the actual parent struct element 361 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 225 0 obj is different from the actual parent struct element 361 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 226 0 obj is different from the actual parent struct element 361 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 227 0 obj is different from the actual parent struct element 361 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 228 0 obj is different from the actual parent struct element 361 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 229 0 obj is different from the actual parent struct element 361 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 230 0 obj is different from the actual parent struct element 361 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 231 0 obj is different from the actual parent struct element 361 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 239 0 obj is different from the actual parent struct element 362 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 240 0 obj is different from the actual parent struct element 362 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 241 0 obj is different from the actual parent struct element 362 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 242 0 obj is different from the actual parent struct element 362 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 249 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 250 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 251 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 252 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 254 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 255 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 256 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 257 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 258 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 259 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 260 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 261 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 263 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 264 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 265 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 266 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 267 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 268 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 269 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 270 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 271 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 272 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 274 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 275 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 276 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 277 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 278 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 279 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 280 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 281 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 282 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 284 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 285 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 286 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 287 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 288 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 289 0 obj is different from the actual parent struct element 363 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 293 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 294 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 295 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 296 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 298 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 299 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 300 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 302 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 303 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 304 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 306 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 307 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 308 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 309 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 311 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 312 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 313 0 obj is different from the actual parent struct element 364 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 317 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 318 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 319 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 321 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 327 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 328 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 329 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 330 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 331 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 332 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 333 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 334 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 335 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 336 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 337 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 338 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 339 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 340 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 341 0 obj is different from the actual parent struct element 365 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 345 0 obj is different from the actual parent struct element 366 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 346 0 obj is different from the actual parent struct element 366 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 347 0 obj is different from the actual parent struct element 366 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 348 0 obj is different from the actual parent struct element 366 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 353 0 obj is different from the actual parent struct element 366 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 354 0 obj is different from the actual parent struct element 366 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 355 0 obj is different from the actual parent struct element 366 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 356 0 obj is different from the actual parent struct element 366 0 obj") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The value of P key of struct element 357 0 obj is different from the actual parent struct element 366 0 obj") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: MarkedInfo must be a 'COSDictionary' but got: COS_UNDEFINED' with 3 occurrences, or 
            'WARNING: The value of P key of struct element 219 0 obj is different from the actual parent struct element 360 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 220 0 obj is different from the actual parent struct element 360 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 221 0 obj is different from the actual parent struct element 360 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 224 0 obj is different from the actual parent struct element 361 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 225 0 obj is different from the actual parent struct element 361 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 226 0 obj is different from the actual parent struct element 361 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 227 0 obj is different from the actual parent struct element 361 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 228 0 obj is different from the actual parent struct element 361 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 229 0 obj is different from the actual parent struct element 361 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 230 0 obj is different from the actual parent struct element 361 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 231 0 obj is different from the actual parent struct element 361 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 239 0 obj is different from the actual parent struct element 362 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 240 0 obj is different from the actual parent struct element 362 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 241 0 obj is different from the actual parent struct element 362 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 242 0 obj is different from the actual parent struct element 362 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 249 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 250 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 251 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 252 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 254 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 255 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 256 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 257 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 258 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 259 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 260 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 261 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 263 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 264 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 265 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 266 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 267 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 268 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 269 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 270 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 271 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 272 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 274 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 275 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 276 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 277 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 278 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 279 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 280 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 281 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 282 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 284 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 285 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 286 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 287 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 288 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 289 0 obj is different from the actual parent struct element 363 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 293 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 294 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 295 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 296 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 298 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 299 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 300 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 302 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 303 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 304 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 306 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 307 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 308 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 309 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 311 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 312 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 313 0 obj is different from the actual parent struct element 364 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 317 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 318 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 319 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 321 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 327 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 328 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 329 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 330 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 331 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 332 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 333 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 334 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 335 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 336 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 337 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 338 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 339 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 340 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 341 0 obj is different from the actual parent struct element 365 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 345 0 obj is different from the actual parent struct element 366 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 346 0 obj is different from the actual parent struct element 366 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 347 0 obj is different from the actual parent struct element 366 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 348 0 obj is different from the actual parent struct element 366 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 353 0 obj is different from the actual parent struct element 366 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 354 0 obj is different from the actual parent struct element 366 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 355 0 obj is different from the actual parent struct element 366 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 356 0 obj is different from the actual parent struct element 366 0 obj' with 1 occurrences, or 
            'WARNING: The value of P key of struct element 357 0 obj is different from the actual parent struct element 366 0 obj' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
