# OP Firmware Archive

A Bash script for downloading historical OP-1 Field and OP-XY firmware files from the Internet Archive and checks for the `babecafe` header.

## OP-1 Field Versions

The OP-1 Field downloader does not omit any versions.

## OP-XY Versions

The OP-XY downloader omits versions that are not listed on the current downloads page but are archived on the Internet Archive: `1_1_33`, `1_1_32`, `1_1_25`, `1_1_21`, `1_1_18`, `1_1_17`, and `1_0_29`.

## Usage

Clone the repository, make the script executable, and run it. With no device selected, it downloads both set of firmware:

```sh
git clone <repository-url>
cd dl-op1-firmware-archive
chmod +x dl-op-firmware-archive.sh
./dl-op-firmware-archive.sh
```

Pass `op1f` or `opxy` to download firmware for only one device. By default, files go into `op1f-firmware` and `opxy-firmware`. An optional output directory can follow the selector; with `all`, it is used as the parent directory for both device folders.

```sh
./dl-op-firmware-archive.sh op1f [output-directory]
./dl-op-firmware-archive.sh opxy [output-directory]
```

Newer OP-1 Field and XY `+1` variants are intentionally excluded and can be downloaded directly from TE.

## Expected Output

### OP-1 Field

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

### OP-XY

```text
Fetching opxy_firmware_1_1_15.tfw ... saved (SHA-256 fb91b5884a626d77d8fee16fbdc7611802de86409c91f9ba3a56bf58a870da41)
Fetching opxy_firmware_1_1_4.tfw ... saved (SHA-256 7951a8658b3cd7b1eafb70c95a310ee95966929d130523ddb78160fba6b633d9)
Fetching opxy_firmware_1_1_3.tfw ... saved (SHA-256 43353cd118b72ea2ab4a2b915ecbe82054bf6b5a0e52b3bcfd073e26e99bec1c)
Fetching opxy_firmware_1_1_0.tfw ... saved (SHA-256 01bb6b235e95d84454d57102398ca2a96c00c4a31fd068cb487f2cd4979642f8)
Fetching opxy_firmware_1_0_50.tfw ... saved (SHA-256 9c9047ab59cd99788e4b505de80bfaa6c3a34fe3d6047c9ebf5e4330566d50fd)
Fetching opxy_firmware_1_0_45.tfw ... saved (SHA-256 0801f7053398a814f79661d0fb6bef16879921ac4aeba59e5b814afcc3dbadce)
Fetching opxy_firmware_1_0_40.tfw ... saved (SHA-256 16722b2f5455610aac5553b21e2d8da70e51f87a5c050b34a515c806020c605e)
Fetching opxy_firmware_1_0_38.tfw ... saved (SHA-256 844f84bd59dfadcb672c1b2fd9f1986841ac6741dcd203d9818f8086271171ee)
Fetching opxy_firmware_1_0_36.tfw ... saved (SHA-256 c26235022f4948dc3c92e2cb8b5b6a49a2e646e83f516f4940641256749928a4)
Fetching opxy_firmware_1_0_32.tfw ... saved (SHA-256 75a963d383edb77444af40d20dbe114190da6c1558e51692eab929b559c3880d)
Fetching opxy_firmware_1_0_25.tfw ... saved (SHA-256 5b5ed7e228b36d59853a8a67d5b47e142bb4fcc7f36aae7bce26dba4e36e0c0c)
Fetching opxy_firmware_1_0_21.tfw ... saved (SHA-256 0eb2fe4b53f87148da1c485ecd100a3acd0f3a81d60e2d6a2c6a4b5e77dc5e7d)
Fetching opxy_firmware_1_0_15.tfw ... saved (SHA-256 2a038a3c98cd03166ffd0b2825bdb7cff30bec8fd91877622ddc1a60cc327cda)
Fetching opxy_firmware_1_0_13.tfw ... saved (SHA-256 5d6821f404da53c144d927a6d9346b96d4fbbaa0d4bb3cdebac92e3ac564ee95)
Fetching opxy_firmware_1_0_9.tfw ... saved (SHA-256 d66fc1d3c413f907aabe4b043121cc73a9945012ddcadcd3c15caaaae19c133e)
```

