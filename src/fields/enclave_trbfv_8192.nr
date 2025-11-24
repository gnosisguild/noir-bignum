use crate::bignum::BigNum;
use crate::bignum::derive_bignum;
use crate::params::BigNumParams;

/// TRBFV parameters set corresponding to SET_8192_100_4.
pub global Enclave_TRBFV_8192_PARAMS: BigNumParams<2, 208> = BigNumParams {
    has_multiplicative_inverse: false,
    modulus: [0xfe38ce2cf15ff03368791001340001, 0x8000000db0002869ba02ea],
    double_modulus: [0x01fc719c59e2bfe066d0f22002680002, 0x010000001b600050d37405d4],
    redc_param: [0x447d587f4015acebd23b19ddd6f6c5, 0x1ffffffc93fff6433e016463],
};

#[derive_bignum(2, 208, quote { Enclave_TRBFV_8192_PARAMS })]
pub struct Enclave_TRBFV_8192 {
    limbs: [u128; 2],
}
