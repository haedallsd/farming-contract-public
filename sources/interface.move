#[allow(unused_variable)]
module farming::interface;

use farming::core::{Setting, Pool, Bank, Deposit};
use std::type_name::TypeName;
use sui::clock::Clock;
use sui::coin::Coin;
use sui::vec_map::VecMap;

/// User use this interface to deposit coin to a pool
public entry fun deposit<DepositCoin>(
    setting: &Setting,
    coin: Coin<DepositCoin>,
    pool: &mut Pool<DepositCoin>,
    clock: &Clock,
    ctx: &mut TxContext,
) {
    abort 0
}

/// If the user want to deposit more, he should use add deposit function
public entry fun add_deposit<DepositCoin>(
    setting: &Setting,
    coin: Coin<DepositCoin>,
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    clock: &Clock,
) {
    abort 0
}

public entry fun get_deposit<DepositCoin>(
    pool: &mut Pool<DepositCoin>,
    ctx: &mut TxContext,
): address {
    abort 0
}

/// User can withdraw some deposit coin of a pool
public fun raw_withdraw<DepositCoin>(
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    amount: u64,
    clock: &Clock,
    ctx: &mut TxContext,
): Coin<DepositCoin> {
    abort 0
}

public entry fun withdraw<DepositCoin>(
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    amount: u64,
    clock: &Clock,
    ctx: &mut TxContext,
) {
    abort 0
}

/// User can harvest reward coin of a pool
public fun raw_harvest<DepositCoin, RewardCoin>(
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    bank: &mut Bank<DepositCoin, RewardCoin>,
    clock: &Clock,
    ctx: &mut TxContext,
): Coin<RewardCoin> {
    abort 0
}

public entry fun harvest<DepositCoin, RewardCoin>(
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    bank: &mut Bank<DepositCoin, RewardCoin>,
    clock: &Clock,
    ctx: &mut TxContext,
) {
    abort 0
}

public entry fun settle<DepositCoin>(
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    clock: &Clock,
) {
    abort 0
}

/// Readonly, user can check his remaining rewards
public entry fun remaining<DepositCoin>(
    pool: &Pool<DepositCoin>,
    deposit: &Deposit<DepositCoin>,
    clock: &Clock,
): VecMap<TypeName, u64> {
    abort 0
}

