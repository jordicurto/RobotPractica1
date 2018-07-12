*** Settings ***
Suite Setup  Init suite
Suite Teardown  Final suite

*** Keywords ***
Init suite
    log  suite... INIT  console=true

Final suite
    log  suite... FIN  console=true