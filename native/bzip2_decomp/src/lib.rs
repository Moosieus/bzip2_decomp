use bzip2_rs::DecoderReader;
use rustler::{Binary, Error, NifResult, OwnedBinary};
use std::io::Read;

#[rustler::nif(schedule = "DirtyCpu")]
fn decompress<'a>(encoded: Binary<'a>) -> NifResult<OwnedBinary> {
    let mut buf: Vec<u8> = Vec::new();
    let mut reader = DecoderReader::new(encoded.as_slice());

    reader
        .read_to_end(&mut buf)
        .map_err(|e| Error::Term(Box::new(e.to_string())))?;

    let mut bin = OwnedBinary::new(buf.len()).unwrap();

    bin.as_mut_slice().copy_from_slice(&mut buf);

    Ok(bin)
}

rustler::init!("Elixir.Bzip2", [decompress]);
