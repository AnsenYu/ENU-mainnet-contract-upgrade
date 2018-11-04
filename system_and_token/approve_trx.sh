#!/bin/bash

# please modify the YOUR_BP_ACCOUNT in the below "actor":"YOUR_BP_ACCOUNT" with your bp account

# !!! IMPORTANT NOTICE !!!

PROPOSER=ansenironman
YOUR_BP_ACCOUNT=ansenironman
enuclit multisig approve $PROPOSER deploysystem '{"actor":"YOUR_BP_ACCOUNT", "permission":"active"}' -p $YOUR_BP_ACCOUNT@active
enuclit multisig approve $PROPOSER deploytoken '{"actor":"YOUR_BP_ACCOUNT", "permission":"active"}' -p $YOUR_BP_ACCOUNT@active
