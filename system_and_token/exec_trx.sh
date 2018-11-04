#!/bin/bash

# the leader needs to wait for enough approvals and 
# execute the propose within one hour before the expiration of the proposal transaction

PROPOSER=ansenironman 
EXECUTOR=ansenironman 
enuclit multisig exec $PROPOSER deploysystem $EXECUTOR
enuclit multisig exec $PROPOSER deploytoken $EXECUTOR
