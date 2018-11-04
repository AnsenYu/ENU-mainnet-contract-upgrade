#!/bin/bash
# propose the new contract
# !!!! IMPORTANT NOTICE !!!
# before propose, remember to modify both the producer_permission.json  and deploy_system_contract_trx.json
# 1. producer_permission.json: changes to the selected bp's
# 2. deploy_xxx_contract_trx.json: changes the expiration to a future time far enough for enough bp's to approve, change the ref_block_num and ref_block_prefix to 0.

PROPOSER=ansenironman
enucli multisig propose_trx deploysystem producer_permission.json deploy_system_contract_trx.json $PROPOSER
enucli multisig propose_trx deploytoken producer_permission.json deploy_token_contract_trx.json $PROPOSER
