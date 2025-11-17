use crate::bignum::BigNum;
use crate::bignum::derive_bignum;
use crate::params::BigNumParams;

pub global Enclave_PARAMS: BigNumParams<2, 221> = BigNumParams {
        has_multiplicative_inverse: false,
        modulus: [
            0x5ac1e026ae35d6b469cdb0084c0001, 0x1000000109800086736c064ad3
        ],
        double_modulus: [
            0x01b583c04d5c6bad68d39b6010980002, 0x200000021300010ce6d80c95a5
        ],
        redc_param: [
            0xee5b8de771f2568cb9857153c5771a, 0x03ffffffbd9fffe2b08e02816c47
        ]
    };

#[derive_bignum(2, 221, quote { Enclave_PARAMS })]
pub struct Enclave {limbs: [u128; 2]}
