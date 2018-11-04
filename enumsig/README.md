# Steps to upgrade enu.msig contract with offline signing
There are four steps to upgrade enu.msig contract, step 1 and 4 is done by all bp's. step 2 and 3 is done by a leader.

### Setp 1
All bp's run this script to keep the original abi/wasm of enu.msig
> sh step_1_bps.sh 

### Step 2
A leader generates a non-signed transaction of setting contract of enu.msig, then give to all bp's to review and sign.

The leader modify the expiration of the generated upgrade_enumsig_contract_trx.json make it some time (less than 9 hours) in the future before publishing.
> sh step_2_leader.sh

### Step 3
All bp's sign the transaction with your producer's active private key.

After signing, get the signature of output and send to the leader.

Those bp's who want to validate the new contract can exec the same command in 'step_2_leader.sh', to get his own json file
 then use diff command to compare with the one provided by the leader.
 The only difference should be expiration, ref block and ref block prefix.

> sh step_3_bps.sh


### Step 4
After the leader collect enough signatures of the BP's, then he/she
 fills the signatures in the upgrade_enumsig_contract_official_trx.json and 
 rename it to upgrade_enumsig_contract_official_signed_trx.json, then push to the blockchain.

> sh step_4_leader.sh
