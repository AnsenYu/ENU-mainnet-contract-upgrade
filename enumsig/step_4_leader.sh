#!/bin/bash
RPC="https://filter.qsx.io"

# after the leader collect enough signatures of the BP's, than he/she
# fill the signatures in the upgrade_enumsig_contract_official_trx.json and 
# rename to upgrade_enumsig_contract_official_signed_trx.json, then push to the blockchain
enucli -u $RPC push transaction --skip-sign upgrade_enumsig_contract_official_signed_trx.json
