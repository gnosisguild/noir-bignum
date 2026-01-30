use crate::bignum::BigNum;
use crate::bignum::derive_bignum;
use crate::params::BigNumParams;

/// Threshold parameters set corresponding to INSECURE_THRESHOLD_512.
pub global INSECURE_THRESHOLD_512: BigNumParams<1, 72> = BigNumParams {
    has_multiplicative_inverse: false,
    modulus: [0xffffb2002437fb2001],
    double_modulus: [0x01000000000001ffff6400486ff64001],
    redc_param: [0x100004dfff38bf60b973],
};

#[derive_bignum(1, 72, quote { INSECURE_THRESHOLD_512 })]
pub struct InsecureThreshold512 {
    limbs: [u128; 1],
}
