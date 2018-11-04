# Upgrade enu.system and enu.token contract with multisig

### Step1 

Generate set contract transaction with compile code for both system and token.
Everyone can do this to generate code and use to compare with the leader's proposal.

> sh gen_trx.sh

### Setp 2

A leader propose the new contracts.

!!!! IMPORTANT NOTICE !!!

Before the leader propose, remember to modify both the producer_permission.json  and deploy_system_contract_trx.json:
1. producer_permission.json: changes to the selected bp's
2. deploy_xxx_contract_trx.json: changes the expiration to a future time far enough for enough bp's to approve, change the ref_block_num and ref_block_prefix to 0.

> sh propose_trx.sh


### Step 3

BP's review the proposal and approve.

> sh approve_trx.sh


### Step 4

The leader needs to wait for enough approvals and then execute the proposal within one hour before the expiration of the proposal transaction. Too early or too later will both fail.

> sh exec_trx.sh
