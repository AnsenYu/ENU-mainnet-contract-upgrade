# Steps to upgrade enu.msig contract with offline signing
There are four steps to upgrade enu.msig contract, step 1 and 3 are done by all bp's. Step 2 and 4 is done by me(ansenironman).

### Setp 1 \[optional : anyone \]
BP's run this script to keep the original abi/wasm of enu.msig
> sh step_1_bps.sh 

### Step 2 \[required : me \]
At about 2018.11.06 12:00:00, I(ansenironman) will release a generated non-signed transaction of setting contract of enu.msig and save it to `upgrade_enumsig_contract_trx.json`, then modify the expiration of the transaction to Beijing 2018.11.06 21:00:00. Then I will rename it to `upgrade_enumsig_contract_official_trx.json` and upload to this repo.
> sh step_2_leader.sh

### Step 3 \[required : 21 BP's \]
Before 2018.11.06 12:00:00 and 2018.11.06 21:00:00, BP's please pull the latest version of this repo, there should be a `upgrade_enumsig_contract_official_trx.json` file in this dircectory.

It's required more than 15 bp's sign the transaction `upgrade_enumsig_contract_official_trx.json` with the producer's **active private key**. 

Just run the following command and it will ask you to input the key.

> ./step_3_bps.sh

After input the private key and press enter, you will get the output with the last few lines like this

>   "transaction_extensions": [],
>
>  "signatures": [
>
>    **"SIG_K1_JuuiwMk3yW58CN8Ww5ZdzjV6daavLDXT85WfCaBxfyenxY2f18JHUeCGSi4mqs7cQxAVhoV5atCer2zPSNocTGDJwy8Wb8"**
>
>  ],
>
>  "context_free_data": []
>
>}

Please post your bp's mainnet account and the signature in this [issue](https://github.com/AnsenYu/ENU-mainnet-contract-upgrade/issues/1).

Those bp's who want to validate the new contract can compile **enumivo.contracts** project and exec the same script of `step_2_leader.sh`(change the CONTRCACT_ROOT_PATH variable in the script first), to get his own generate transaction json file. 
 Then use diff command to compare with the one provided in this repo.
 The only difference should be expiration, ref block and ref block prefix.


### Step 4 \[required : me \]
After I collect signatures from more than 15 of the BP's, then I will
 fill the signatures in the upgrade_enumsig_contract_official_trx.json and 
 rename it to upgrade_enumsig_contract_official_signed_trx.json, then push to the blockchain.

> sh step_4_leader.sh

### Step 5 \[optional : anyone \]
Anyone can run the `step_5_bps.sh` scripts to get the new abi & wasm of the enu.msig contract. 
