#[allow(unused_variable)]
module farming::breaker;

use farming::core::{Bank, Setting};
use farming::manage::ACL;
use sui::coin::Coin;

public fun funding_bank<DepositCoin, RewardCoin>(
    acl: &ACL,
    setting: &Setting,
    bank: &mut Bank<DepositCoin, RewardCoin>,
    reward: Coin<RewardCoin>,
    ctx: &mut TxContext,
) {
    abort 0
}

