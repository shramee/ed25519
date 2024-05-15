use ed25519::verify_signature;

#[test]
#[available_gas(3200000000)]
fn verify_signature_test_3() {
    let pub_key: u256 = 0x040369a47bcee3ae0cb373037ec0d2e36cae4a3762e388ff0682962aef49f444;

    let msg: Span<u8> = array![0x12, 0x34, 0x56, 0x78].span();

    let r_sign: u256 = 0xc71970448f7368c295d11cd64bb4fc7bb8899c830d9055832b6686b3f606b76d;
    let s_sign: u256 = 0x68e015fa8775659d1f40a01e1f69b8af4409046f4dc8ff02cdb04fdc3585eb0d;
    let signature = array![r_sign, s_sign];

    assert!(verify_signature(msg, signature.span(), pub_key), "Invalid signature");
}
