#!/bin/bash

# Usage: globalprotect_connect email@server.tld
function globalprotect_connect() {
  globalprotect connect --portal portal-nasa.vpn.pivotal.io -u "${@}"
}
