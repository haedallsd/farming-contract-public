#[allow(unused_variable, unused_type_parameter)]
module farming::operate;

use farming::core::{Pool, Setting, Bank, Deposit};
use farming::manage::OperatorCap;
use sui::clock::Clock;
use sui::coin::Coin;

/// Operator can create a new pool of a coin to deposit
public entry fun add_pool<DepositCoin>(
    _: &OperatorCap,
    setting: &mut Setting,
    ctx: &mut TxContext,
) {
    abort 0
}

/// Operator can set some params of the pool
public entry fun set_pool<DepositCoin>(
    _: &OperatorCap,
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    active: bool,
) {
    abort 0
}

/// Operator can add a new reward coin of a pool
public entry fun add_reward_config<DepositCoin, RewardCoin>(
    _: &OperatorCap,
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

/// Operator can set the release rate of the reward coin of the pool
public entry fun set_reward_config<DepositCoin, RewardCoin>(
    _: &OperatorCap,
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    start_at: u64,
    reward_rate: u64,
    clock: &Clock,
) {
    abort 0
}

/// Operator can set the release rate of the reward coin of the pool
public entry fun flip_boost<DepositCoin, RewardCoin>(
    _: &OperatorCap,
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    clock: &Clock,
) {
    abort 0
}

public entry fun set_boost(_: &OperatorCap, setting: &mut Setting, addrs: vector<address>, boosts: vector<u64>) {
    abort 0
}

public entry fun after_set_boost<DepositCoin>(
    _: &OperatorCap,
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    clock: &Clock,
) {
    abort 0
}

public entry fun after_set_boost_batch<DepositCoin>(
    _: &OperatorCap,
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit1: &mut Deposit<DepositCoin>,
    deposit2: &mut Deposit<DepositCoin>,
    deposit3: &mut Deposit<DepositCoin>,
    deposit4: &mut Deposit<DepositCoin>,
    deposit5: &mut Deposit<DepositCoin>,
    clock: &Clock,
) {
    abort 0
}

public entry fun settle_batch<DepositCoin>(
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit1: &mut Deposit<DepositCoin>,
    deposit2: &mut Deposit<DepositCoin>,
    deposit3: &mut Deposit<DepositCoin>,
    deposit4: &mut Deposit<DepositCoin>,
    deposit5: &mut Deposit<DepositCoin>,
    clock: &Clock,
) {
    abort 0
}

/// Operator can funding coins to banks
public entry fun funding_bank<DepositCoin, RewardCoin>(
    _: &OperatorCap,
    setting: &Setting,
    bank: &mut Bank<DepositCoin, RewardCoin>,
    reward: Coin<RewardCoin>,
) {
    abort 0
}

/// Operator can extract coins from banks
public entry fun extract_bank<DepositCoin, RewardCoin>(
    _: &OperatorCap,
    setting: &Setting,
    bank: &mut Bank<DepositCoin, RewardCoin>,
    amount: u64,
    ctx: &mut TxContext,
) {
    abort 0
}

