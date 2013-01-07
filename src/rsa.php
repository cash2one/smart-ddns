<?php
error_reporting(-1);

// Create the keypair
$res = openssl_pkey_new();

// Get private key
openssl_pkey_export($res, $privkey);

// Get public key
$pubkey = openssl_pkey_get_details($res);
$pubkey = $pubkey["key"];

#echo "$privkey\n$pubkey";

$pub_key = <<<EOF
-----BEGIN PUBLIC KEY-----
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDwby8Ry79prUQdotChJS9TW9EM
s8d0IxEWnzOgT113NwrFWBIBHtk6YJON05R9/vAe3l+9/1TgPNQWLZBJhuMwJQY1
ySg84mRNGp9Uo2he22Fe8Hke8udrEfxfr3QeD/Z3siV9Vey3Q6KsEl1Sqds8Z2AF
J277pl3JbCzsEYYDEQIDAQAB
-----END PUBLIC KEY-----
EOF;

if(isset($_POST['ts'])) {
    openssl_public_decrypt(base64_decode(str_replace(" ", "+", $_POST['ts'])), $newsource, $pub_key);
    echo $newsource;
}
?>
