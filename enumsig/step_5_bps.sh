#!/bin/bash
RPC="https://filter.qsx.io"

# download the original contract
enucli -u $RPC get code -c new_enumsig_contract.wasm --wasm -a new_enumsig_contract.abi enu.msig
