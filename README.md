# OP-1 Field Firmware Archive

A Bash script for downloading historical OP-1 Field firmware files from the Internet Archive.

## Usage

Clone the repository, make the script executable, and run it:

```sh
git clone <repository-url>
cd dl-op1-firmware-archive
chmod +x dl-op1f-firmware-archive.sh
./dl-op1f-firmware-archive.sh [output-directory]
```

The output directory is optional and defaults to `op1f-firmware`.

## Expected Output

```text
Fetching op1_field_firmware_1_7_3.tfw ... saved (SHA-256 e58539115a8579ddf554a48ddb1439f6d5aa3c25bea4f2c19ceee2b5c946cc82)
Fetching op1_field_firmware_1_7_0.tfw ... saved (SHA-256 a8e2f6cf9c056e7503b816ce33dceed562d06ac106d0b2b6ffe763d0351e66ac)
Fetching op1_field_firmware_1_6_9.tfw ... saved (SHA-256 2053f4df807b6380bc774d6a0ef6dc05ebc6ed263e82a524b2fe6853d22318b1)
Fetching op1_field_firmware_1_6_7.tfw ... saved (SHA-256 345730b0c6bab07b73ceb3495481567d3255f954e747d1bf47fc6660219584e4)
Fetching op1_field_firmware_1_6_5.tfw ... saved (SHA-256 50e02a8d2f75f36523df991c1b6c7ec80e3ee2876fbdacb6af668adacfe2653e)
Fetching op1_field_firmware_1_6_2.tfw ... saved (SHA-256 daef24d873598dcc462288359a85e12eb7eb53ac1b02bd5a0cc339b88063e464)
Fetching op1_field_firmware_1_6_0.tfw ... saved (SHA-256 c74b4661869c0e611f8b3d5c22fd32a5f0f13ce2c321b579d48503bb5dff1cd0)
Fetching op1_field_firmware_1_5_7.tfw ... saved (SHA-256 dc9fbfaee7fce99203ce215c9dcdafa39ee48cc50aeb4980db0ba6e7c55bcccc)
Fetching op1_field_firmware_1_5_6.tfw ... saved (SHA-256 a465ff0d97f2c3ecea94efa9e2f57fcc182506937653f12c8592a25c1ab63ff9)
Fetching op1_field_firmware_1_5_0.tfw ... saved (SHA-256 1c11b1bd72303dbd759e3174226cbbc57b52d6b4a31fde2f238e9cd79fccfcf4)
Fetching op1_field_firmware_1_4_7.tfw ... saved (SHA-256 96951bd95ddf2ae04d36fe72505e545e974179346e909ea1692e8ad30bc8d780)
Fetching op1_field_firmware_1_4_5.tfw ... saved (SHA-256 299c6a985f82fa86a0399b5d6b6b7e5af7d92d8c190665c4a2db010e96a11a90)
Fetching op1_field_firmware_1_4_2.tfw ... saved (SHA-256 885244dc215df0982c4626f91375ef4038b0094f116ea3fa49e639f90aa68222)
Fetching op1_field_firmware_1_3_7.tfw ... saved (SHA-256 c694f5f6109041fe0190ccaaead9b11d0c616c0f91bbff43691cabba83070071)
Fetching op1_field_firmware_1_3_2.tfw ... saved (SHA-256 8f3dd4e73b46b6bf0426e19f2351905d37924c4175a08438673a350229bd49f1)
Fetching op1_field_firmware_1_2_9.tfw ... saved (SHA-256 555841cee83e7c9490428b27ec9665d3219a20c8a35bfc063cc2fc47a3868874)
Fetching op1_field_firmware_1_2_7.tfw ... saved (SHA-256 bd7d6ae6e49f08efcdbe71ac53dc0ec6515b0740e0b956b8fee46fb884ca2186)
Fetching op1_field_firmware_1_2_5.tfw ... saved (SHA-256 e8eda4e4b157494564c45d279474e1ea8c63a5707da32a2ec0222eaa040f726c)
Fetching op1_field_firmware_1_1_6.tfw ... saved (SHA-256 8e0b695bd5db9791008b605d0404deb6a0550cc10003875f7ada69cd890d0d9e)
Fetching op1_field_firmware_1_1_4.tfw ... saved (SHA-256 1ea7b6e381b943ff74a106cdf14fbd49dda9cc0f0afcd4e8ce33c8419be96a9e)
Fetching op1_field_firmware_1_1_2.tfw ... saved (SHA-256 04d2118b68ad777c0fcba93f80d701a8ae1d4dcb57be3ef5ad7cb2ba2af11c18)
```

Each download is checked for an HTTP 200 response and the expected `babecafe` file header. Valid files are saved as `op1_field_firmware_<version>.tfw`, and their SHA-256 checksums are printed. Failed downloads or files that do not pass validation are reported and their temporary files are removed.
