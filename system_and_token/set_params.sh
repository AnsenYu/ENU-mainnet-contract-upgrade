# propose set system parameters
# In the case that the upgrade contract action may takes more cpu time then the global
# limitation. May get : 
#    Error 3080004: transaction exceeded the current CPU usage limit imposed on the transaction
# 
# So we may need to change the parameters max_transaction_cpu_usage(in microseconds).

# You may need to adust the permission and accounts in the command below

enucli multisig propose setparams '[{"actor": "ansenironman", "permission": "active"},{"actor": "stanlee", "permission": "active"}]' '[{"actor": "enumivo", "permission": "active"}]' enumivo setparams '{"params":{ "max_block_net_usage": 1048576, "target_block_net_usage_pct": 1000, "max_transaction_net_usage": 524288, "base_per_transaction_net_usage": 12, "net_usage_leeway": 500, "context_free_discount_net_usage_num": 20, "context_free_discount_net_usage_den": 100, "max_block_cpu_usage": 100000, "target_block_cpu_usage_pct": 500, "max_transaction_cpu_usage": 90000, "min_transaction_cpu_usage": 100, "max_transaction_lifetime": 3600, "deferred_trx_expiration_window": 600, "max_transaction_delay": 3888000, "max_inline_action_size": 4096, "max_inline_action_depth": 4, "max_authority_depth": 6}}' -p ansenironman@active

