#[allow(unused_variable, unused_type_parameter)]
module farming::minorsign;

use farming::core::{Pool, Setting};
use farming::manage::ACL;
use sui::clock::Clock;

public fun add_pool<DepositCoin>(
    acl: &ACL,
    setting: &mut Setting,
    ctx: &mut TxContext,
) {
    abort 0
}

public fun set_pool<DepositCoin>(
    acl: &ACL,
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    active: bool,
    ctx: &mut TxContext,
) {
    abort 0
}

public fun add_reward_config<DepositCoin, RewardCoin>(
    acl: &ACL,
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    start_at: u64,
    reward_rate: u64,
    boost_active: bool,
    clock: &Clock,
    ctx: &mut TxContext,
) {
    abort 0
}

public fun set_reward_config<DepositCoin, RewardCoin>(
    acl: &ACL,
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    start_at: u64,
    reward_rate: u64,
    clock: &Clock,
    ctx: &mut TxContext,
) {
    abort 0
}

public fun flip_boost<DepositCoin, RewardCoin>(
    acl: &ACL,
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    clock: &Clock,
    ctx: &mut TxContext,
) {
    abort 0
}