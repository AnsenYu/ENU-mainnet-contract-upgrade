#!/bin/bash
RPC="https://filter.qsx.io"

# sign transaction with your producer's active private key
enucli -u $RPC sign --chain-id cf057bbfb72640471fd910bcb67639c22df9f92470936cddc1ade0e2f2e7dc4f upgrade_enumsig_contract_official_trx.json

# after signing, get the signature of output and send to the leader


# bp's who want to validate the new contract can exec the same command in 'step_2_leader.sh', to get his own json file
# then use diff to compare with the one provided by the leader
# the only difference should be expiration, ref block and ref block prefix 
