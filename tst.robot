*** Settings ***
Library           JMeterLib.py
Library           Collections

*** Test Cases ***


tc3_runJMeterAndAnalyseAndConvertLog
    ${result}    run jmeter analyse jtl convert    ${CURDIR}/Application/bin/jmeter.sh    ${CURDIR}/Tests/SciFXrobot.jmx    ${CURDIR}/Tests/scifxROBOT.jtl
    log    ${result}
    :FOR    ${ELEMENT}    IN    @{result}
    \    log dictionary    ${ELEMENT}