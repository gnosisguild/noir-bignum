use crate::bignum::BigNum;
use crate::bignum::derive_bignum;
use crate::params::BigNumParams;

/// BFV parameters set corresponding to SET_8192_100_4.
pub global Enclave_BFV_8192_PARAMS: BigNumParams<1, 113> = BigNumParams {
    has_multiplicative_inverse: false,
    modulus: [0x010000000418000203d8ac04180001],
    double_modulus: [0x01020000000830000407b15808300001],
    redc_param: [0x3ffffffef9ffff833a650308b8b343],
};

#[derive_bignum(1, 113, quote { Enclave_BFV_8192_PARAMS })]
pub struct Enclave_BFV_8192 {
    limbs: [u128; 1],
}
