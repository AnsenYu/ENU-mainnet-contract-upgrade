#!/bin/bash
# generate set contract transaction with compile code for both system and token
# one may need to change the path of the enumivo.contracts

ENUMIVO_CONTRACTS_PATH=../../enumivo.contracts
enucli set contract -s -j -d enumivo $ENUMIVO_CONTRACTS_PATH/build/enu.system/ > deploy_system_contract_trx.json
enucli set contract -s -j -d enu.token $ENUMIVO_CONTRACTS_PATH/build/enu.token/ > deploy_token_contract_trx.json
