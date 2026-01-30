use crate::bignum::BigNum;
use crate::bignum::derive_bignum;
use crate::params::BigNumParams;

/// DKG parameters set corresponding to INSECURE_DKG_512.
pub global INSECURE_DKG_512: BigNumParams<1, 51> = BigNumParams {
    has_multiplicative_inverse: true,
    modulus: [0x07fffffffe0001],
    double_modulus: [0x0100000000000000000ffffffffc0001],
    redc_param: [0x800000001ffff0],
};

#[derive_bignum(1, 51, quote { INSECURE_DKG_512 })]
pub struct InsecureDkg512 {
    limbs: [u128; 1],
}
