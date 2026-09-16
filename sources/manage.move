#[allow(unused_variable)]
module farming::manage;

use farming::core::Setting;

/// `AdminCap` is used by an administrator.
public struct AdminCap has key, store {
    id: UID,
}

/// `OperatorCap` is used by the offchain programs.
public struct OperatorCap has key, store {
    id: UID,
}

public struct ACL has store, key {
    id: UID,
    minor_signs: vector<address>,
    breakers: vector<address>,
    robots: vector<address>,
}

fun init(ctx: &mut TxContext) {
    abort 0
}

public fun set_operator_cap_to_address(_: &AdminCap, account: address, ctx: &mut TxContext) {
    abort 0
}

public fun share_acl(_: &AdminCap, ctx: &mut TxContext) {
    abort 0
}

public fun add_minor_signs_to_acl(_: &AdminCap, acl: &mut ACL, account: address) {
    abort 0
}

public fun del_minor_signs(_: &AdminCap, acl: &mut ACL, account: address) {
    abort 0
}

public fun add_breaker_to_acl(_: &AdminCap, acl: &mut ACL, account: address) {
    abort 0
}

public fun del_breaker_to_acl(_: &AdminCap, acl: &mut ACL, account: address) {
    abort 0
}

public fun add_robot_to_acl(_: &AdminCap, acl: &mut ACL, account: address) {
    abort 0
}

public fun del_robot_to_acl(_: &AdminCap, acl: &mut ACL, account: address) {
    abort 0
}

public fun is_minor_sign(acl: &ACL, account: address): bool {
    abort 0
}

public fun is_breaker(acl: &ACL, account: address): bool {
    abort 0
}

public fun is_robot(acl: &ACL, account: address): bool {
    abort 0
}

/// Migrate the data version, this is called by the new package after upgrade.
public fun migrate(_: &AdminCap, setting: &mut Setting) {
    abort 0
}

