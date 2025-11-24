use crate::bignum::BigNum;
use crate::bignum::derive_bignum;
use crate::params::BigNumParams;

/// TRBFV parameters set corresponding to INSECURE_SET_512_10_1.
pub global Enclave_TRBFV_512_PARAMS: BigNumParams<1, 72> = BigNumParams {
    has_multiplicative_inverse: false,
    modulus: [0xffffb2002437fb2001],
    double_modulus: [0x01000000000001ffff6400486ff64001],
    redc_param: [0x100004dfff38bf60b973],
};

#[derive_bignum(1, 72, quote { Enclave_TRBFV_512_PARAMS })]
pub struct Enclave_TRBFV_512 {
    limbs: [u128; 1],
}
