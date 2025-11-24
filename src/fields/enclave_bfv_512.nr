use crate::bignum::BigNum;
use crate::bignum::derive_bignum;
use crate::params::BigNumParams;

/// BFV parameters set corresponding to INSECURE_SET_512_10_1.
pub global Enclave_BFV_512_PARAMS: BigNumParams<1, 51> = BigNumParams {
    has_multiplicative_inverse: true,
    modulus: [0x07fffffffe0001],
    double_modulus: [0x0100000000000000000ffffffffc0001],
    redc_param: [0x800000001ffff0],
};

#[derive_bignum(1, 51, quote { Enclave_BFV_512_PARAMS })]
pub struct Enclave_BFV_512 {
    limbs: [u128; 1],
}
