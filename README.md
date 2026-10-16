# OP Firmware Archive

A Bash script for downloading historical OP-1 Field, OP-XY, TX-6, and TP-7 firmware files from the Internet Archive. Downloads are checked for the `babecafe` header and their SHA-256 checksums are printed.

## OP-1 Field Versions

The OP-1 Field downloader does not omit any versions.

## OP-XY Versions

The OP-XY downloader omits versions that are unavailable on the Internet Archive: `1_1_33`, `1_1_32`, `1_1_25`, `1_1_21`, `1_1_18`, `1_1_17`, and `1_0_29`.

## TX-6 Versions

The TX-6 does not omit any versions.

## TP-7 Versions

The TP-7 does not omit any versions.

## Usage

Clone the repository, make the script executable, and run it. With no product selected, it downloads all four sets of firmware:

```sh
git clone <repository-url>
cd dl-op1-firmware-archive
chmod +x dl-op-firmware-archive.sh
./dl-op-firmware-archive.sh
```

Pass `op1f`, `opxy`, `tx6`, or `tp7` to download firmware for one product. By default, files go into `op1f-firmware`, `opxy-firmware`, `tx6-firmware`, and `tp7-firmware`. An optional output directory can follow the selector; with `all`, it is used as the parent directory for all four product folders.

```sh
./dl-op-firmware-archive.sh op1f [output-directory]
./dl-op-firmware-archive.sh opxy [output-directory]
./dl-op-firmware-archive.sh tx6 [output-directory]
./dl-op-firmware-archive.sh tp7 [output-directory]
```

Newer `+1` variants are intentionally excluded from the archive downloader and can be downloaded directly from TE.

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

### TX-6

```text
Fetching tx-6_firmware_1_0_8.tfw ... saved (SHA-256 0ad3a15ba8e9574c0fe1b9371469d2adb958cd68d0696861facdb4475d350001)
Fetching tx-6_firmware_1_1_4.tfw ... saved (SHA-256 a31352105d691a1358d4ab9fd8f61bc8a2363f0015ff6e97de5ebbcc1b8d7912)
Fetching tx-6_firmware_1_2_10.tfw ... saved (SHA-256 9eee04af6a8a1e7e4433e64416ec499682dbbcebe353527b8f6b074095303aee)
Fetching tx-6_firmware_1_2_12.tfw ... saved (SHA-256 29e968d4c104b3131406c9f186a6f5524c905fdd07b37e8911f1db50fc4a5728)
Fetching tx-6_firmware_1_2_13.tfw ... saved (SHA-256 74fc46761ffc0ee455a3fdf2d8314417f1c8119540dede8ba5ea6cea5a60e0f7)
Fetching tx-6_firmware_1_2_15.tfw ... saved (SHA-256 bfb072c3658d38f1eb966242221112b6f9846f6ac303fbdd892dc2e51cf4eeb5)
Fetching tx-6_firmware_1_2_5.tfw ... saved (SHA-256 db42846394f19595909f1c511f50a85d1fcaf8276637bb12d53673a18d4ee462)
Fetching tx-6_firmware_1_3_0.tfw ... saved (SHA-256 1b460a22d96c4294d2669374e7ca0b4b51bb9e15e4af17c381e17339e9f2f8c6)
Fetching tx-6_firmware_1_3_1.tfw ... saved (SHA-256 565c22336ae8ccc85f724f45225dd664238a7d6b361047d3be16c40888b2b98d)
Fetching tx-6_firmware_1_3_3.tfw ... saved (SHA-256 9c3a13c5e9f63901bdad79d6d3919521ad388d2469413c3447d7d09009d36db0)
```

### TP-7

```text
Fetching tp-7_firmware_1_0_6.tfw ... saved (SHA-256 f147e150bcf8d679ebf8692f135a320a120386f44a30abee1687de6b872709f7)
Fetching tp-7_firmware_1_0_8.tfw ... saved (SHA-256 7352f8d20719a5eb06bffef2ff9266ec6e63f825e1a5bed8d2b0ffab327c274e)
Fetching tp-7_firmware_1_1_10.tfw ... saved (SHA-256 319fc6bdd3c2b6af6654453b0756f1842291ea27e2226120b29774c437d139cf)
Fetching tp-7_firmware_1_1_11.tfw ... saved (SHA-256 3e3d0e67f2c1937d955a856f4afe6401801a66ef257b4ba2b4ce219d8129afa3)
Fetching tp-7_firmware_1_1_3.tfw ... saved (SHA-256 69006a755535e3b5aeb006153756e46bde74442e9d05f71483e0c57995c6fbd4)
Fetching tp-7_firmware_1_1_4.tfw ... saved (SHA-256 7ad12cf99d356c0fbcac43b95d3ea367bc699afb5a347cbb590af6061a88a990)
Fetching tp-7_firmware_1_1_5.tfw ... saved (SHA-256 7cf1a5044ea9ee48432a5aeb3f3a329bea387ec74a709c248779fe4f92abcf21)
Fetching tp-7_firmware_1_1_6.tfw ... saved (SHA-256 38f1b5b100aba0d2fbf91bd832bc8dcf4c3461e0b8c945b4f6ae32a2ccc6bd94)
Fetching tp-7_firmware_1_1_9.tfw ... saved (SHA-256 73ebc765743335fa818143cea55b9ac0991a30517ac3fe5b64df68d9765346ed)
```

