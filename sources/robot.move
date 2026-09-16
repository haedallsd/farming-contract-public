#[allow(unused_variable, unused_type_parameter)]
module farming::robot;

use farming::core::{Pool, Setting, Deposit};
use farming::manage::ACL;
use sui::clock::Clock;

public fun set_boost(
    acl: &ACL,
    setting: &mut Setting,
    addrs: vector<address>,
    boosts: vector<u64>,
    ctx: &mut TxContext,
) {
    abort 0
}

public fun after_set_boost<DepositCoin>(
    acl: &ACL,
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    clock: &Clock,
    ctx: &mut TxContext,
) {
    abort 0
}

public fun after_set_boost_batch<DepositCoin>(
    acl: &ACL,
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit1: &mut Deposit<DepositCoin>,
    deposit2: &mut Deposit<DepositCoin>,
    deposit3: &mut Deposit<DepositCoin>,
    deposit4: &mut Deposit<DepositCoin>,
    deposit5: &mut Deposit<DepositCoin>,
    clock: &Clock,
    ctx: &mut TxContext,
) {
    abort 0
}

public fun settle_batch<DepositCoin>(
    acl: &ACL,
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit1: &mut Deposit<DepositCoin>,
    deposit2: &mut Deposit<DepositCoin>,
    deposit3: &mut Deposit<DepositCoin>,
    deposit4: &mut Deposit<DepositCoin>,
    deposit5: &mut Deposit<DepositCoin>,
    clock: &Clock,
    ctx: &mut TxContext,
) {
    abort 0
}