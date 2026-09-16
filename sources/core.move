#[allow(unused_variable, unused_type_parameter)]
module farming::core;

use std::type_name::TypeName;
use sui::balance::Balance;
use sui::clock::Clock;
use sui::coin::Coin;
use sui::table::Table;
use sui::vec_map::VecMap;

// === Structs ===

public struct Setting has key {
    id: UID,
    version: u64,
    pools: VecMap<TypeName, address>, // Deposit coin type -> Pool address
    boosts: VecMap<address, u64>, // User address -> Boost
}

public struct Pool<phantom DepositCoin> has key, store {
    id: UID,
    active: bool,
    balance: Balance<DepositCoin>,
    total_share: u128,
    total_boost_share: u128,
    reward_configs: VecMap<TypeName, RewardConfig>, // Reward coins this pool support
    users: Table<address, address>, // User -> Deposit to this pool
}

// If now < rate_change_at, reward_rate_before is active
// if now >= rate_change_at, reward_rate_after is active
public struct RewardConfig has store {
    reward_rate_before: u64,
    rate_change_at: u64,
    reward_rate_after: u64,
    per_share: u128,
    last_update_time: u64,
    bank: address, // Bank address to store reward coin
    boost_active: bool, // Boost is active or not
}

public struct Bank<phantom DepositCoin, phantom RewardCoin> has key {
    id: UID,
    pool: address,
    balance: Balance<RewardCoin>,
}

public struct Deposit<phantom DepositCoin> has key {
    id: UID,
    pool: address,
    amount: u64,
    share: u128,
    boost_share: u128,
    debts: VecMap<TypeName, u64>, // Reward coin type -> Debt, debt is the reward that has been already harvested
    credits: VecMap<TypeName, u64>, // Reward coin type -> Credit, credit is the reward that has not been harvested
    owner: address,
}

public struct DepositInfo<phantom DepositCoin> has key {
    id: UID,
    pool: address,
    deposit: address,
}

// === Events ===

public struct AddPoolEvent<phantom DepositCoin> has copy, drop {
    pool: address,
    coin_type: TypeName,
}

public struct SetPoolEvent<phantom DepositCoin> has copy, drop {
    pool: address,
    active: bool,
}

public struct AddRewardConfigEvent<phantom DepositCoin> has copy, drop {
    pool: address,
    reward_type: TypeName,
    reward_rate: u64,
    start_at: u64,
    bank: address,
    boost_active: bool,
}

public struct SetRewardConfigEvent<phantom DepositCoin> has copy, drop {
    pool: address,
    reward_type: TypeName,
    reward_rate: u64,
    start_at: u64,
}

public struct FlipBoostEvent has copy, drop {
    pool: address,
    reward_type: TypeName,
}

public struct SettleEvent has copy, drop {
    pool: address,
    deposit: address,
    old_debts: VecMap<TypeName, u64>,
    new_debts: VecMap<TypeName, u64>,
}

public struct AfterSetBoostEvent has copy, drop {
    pool: address,
    deposit: address,
    boost: u64,
    old_boost_share: u128,
    old_share: u128,
    new_boost_share: u128,
    new_share: u128,
    old_debts: VecMap<TypeName, u64>,
    new_debts: VecMap<TypeName, u64>,
}

public struct FundingBankEvent<phantom RewardCoin> has copy, drop {
    bank: address,
    amount: u64,
}

public struct DepositEvent<phantom DepositCoin> has copy, drop {
    deposit: address,
    owner: address,
    pool: address,
    amount: u64,
}

public struct AddDepositEvent<phantom DepositCoin> has copy, drop {
    deposit: address,
    amount: u64,
}

public struct WithdrawEvent<phantom DepositCoin> has copy, drop {
    deposit: address,
    amount: u64,
}

public struct HarvestEvent<phantom DepositCoin> has copy, drop {
    deposit: address,
    reward_type: TypeName,
    amount: u64,
}

public struct SetBoostEvent has copy, drop {
    addr: address,
    boost: u64,
}

public struct VersionUpdatedEvent has copy, drop {
    old: u64,
    new: u64,
}

// === System ===

public fun assert_version(setting: &Setting) {
    abort 0
}

public(package) fun migrate(setting: &mut Setting) {
    abort 0
}

// === Init ===

fun init(ctx: &mut TxContext) {
    abort 0
}

// === Tools ===

public fun get_boost(setting: &Setting, addr: &address): u64 {
    abort 0
}

public(package) fun per_share_of_period(start: u64, end: u64, rate: u64, size: u128): u128 {
    abort 0
}

public(package) fun calculate_per_share_of_reward_config(
    reward_rate_before: u64,
    rate_change_at: u64,
    reward_rate_after: u64,
    per_share: u128,
    last_update_time: u64,
    total_share: u128,
    now_timestamp: u64,
): u128 {
    abort 0
}

// === Management ===

public(package) fun add_pool<DepositCoin>(setting: &mut Setting, ctx: &mut TxContext) {
    abort 0
}

public(package) fun set_pool<DepositCoin>(pool: &mut Pool<DepositCoin>, active: bool) {
    abort 0
}

public(package) fun add_reward_config<DepositCoin, RewardCoin>(
    pool: &mut Pool<DepositCoin>,
    start_at: u64,
    reward_rate: u64,
    boost_active: bool,
    clock: &Clock,
    ctx: &mut TxContext,
) {
    abort 0
}

public(package) fun set_reward_config<DepositCoin, RewardCoin>(
    pool: &mut Pool<DepositCoin>,
    start_at: u64,
    reward_rate: u64,
    clock: &Clock,
) {
    abort 0
}

public(package) fun funding_bank<DepositCoin, RewardCoin>(
    bank: &mut Bank<DepositCoin, RewardCoin>,
    reward: Coin<RewardCoin>,
) {
    abort 0
}

public(package) fun extract_bank<DepositCoin, RewardCoin>(
    bank: &mut Bank<DepositCoin, RewardCoin>,
    amount: u64,
    ctx: &mut TxContext,
): Coin<RewardCoin> {
    abort 0
}

// === Centralized Operation ===

public(package) fun flip_boost<DepositCoin, RewardCoin>(
    pool: &mut Pool<DepositCoin>,
    clock: &Clock,
) {
    abort 0
}

public(package) fun settle<DepositCoin>(
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    clock: &Clock,
) {
    abort 0
}

public(package) fun set_boost(setting: &mut Setting, addr: address, boost: u64) {
    abort 0
}

public(package) fun after_set_boost<DepositCoin>(
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    clock: &Clock,
) {
    abort 0
}

// === User Operations ===

public(package) fun deposit<DepositCoin>(
    setting: &Setting,
    coin: Coin<DepositCoin>,
    pool: &mut Pool<DepositCoin>,
    clock: &Clock,
    ctx: &mut TxContext,
) {
    abort 0
}

public(package) fun add_deposit<DepositCoin>(
    setting: &Setting,
    coin: Coin<DepositCoin>,
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    clock: &Clock,
) {
    abort 0
}

public(package) fun get_deposit<DepositCoin>(pool: &Pool<DepositCoin>, ctx: &TxContext): address {
    abort 0
}

public(package) fun withdraw<DepositCoin>(
    setting: &Setting,
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    amount: u64,
    clock: &Clock,
    ctx: &mut TxContext,
): Coin<DepositCoin> {
    abort 0
}

public(package) fun harvest<DepositCoin, RewardCoin>(
    pool: &mut Pool<DepositCoin>,
    deposit: &mut Deposit<DepositCoin>,
    bank: &mut Bank<DepositCoin, RewardCoin>,
    clock: &Clock,
    ctx: &mut TxContext,
): Coin<RewardCoin> {
    abort 0
}

public(package) fun remaining<DepositCoin>(
    pool: &Pool<DepositCoin>,
    deposit: &Deposit<DepositCoin>,
    clock: &Clock,
): VecMap<TypeName, u64> {
    abort 0
}
