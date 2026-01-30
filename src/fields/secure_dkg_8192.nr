use crate::bignum::BigNum;
use crate::bignum::derive_bignum;
use crate::params::BigNumParams;

/// DKG parameters set corresponding to SECURE_DKG_8192.
pub global SECURE_DKG_8192: BigNumParams<1, 113> = BigNumParams {
    has_multiplicative_inverse: false,
    modulus: [0x010000000418000203d8ac04180001],
    double_modulus: [0x01020000000830000407b15808300001],
    redc_param: [0x3ffffffef9ffff833a650308b8b343],
};

#[derive_bignum(1, 113, quote { SECURE_DKG_8192 })]
pub struct SecureDkg8192 {
    limbs: [u128; 1],
}
