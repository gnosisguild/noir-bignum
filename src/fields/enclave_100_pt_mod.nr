use crate::bignum::BigNum;
use crate::bignum::derive_bignum;
use crate::params::BigNumParams;

pub global Enclave_100_PT_MOD_PARAMS: BigNumParams<1, 7> = BigNumParams {
        has_multiplicative_inverse: false,
        modulus: [
            0x64
        ],
        double_modulus: [
            0x010000000000000000000000000000c7
        ],
        redc_param: [
            0x0a3d
        ]
    };

#[derive_bignum(1, 7, quote { Enclave_100_PT_MOD_PARAMS })]
pub struct Enclave_100_Pt_Mod {limbs: [u128; 1]}