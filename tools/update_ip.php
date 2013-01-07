<?php
$username = "gywang";
$private_key = <<<EOF
-----BEGIN PRIVATE KEY-----
MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAPBvLxHLv2mtRB2i
0KElL1Nb0Qyzx3QjERafM6BPXXc3CsVYEgEe2Tpgk43TlH3+8B7eX73/VOA81BYt
kEmG4zAlBjXJKDziZE0an1SjaF7bYV7weR7y52sR/F+vdB4P9neyJX1V7LdDoqwS
XVKp2zxnYAUnbvumXclsLOwRhgMRAgMBAAECgYEAsSRpnIXuABENN3yGk8OOy67B
Jceq8vEHHRCse7cdmMDv6ZfKpBKzX2RaMkspg276QPP7vENLqG6In9JwFQwRgzCC
7rwr98OPq4lUnb0QzYBmr28bR8HH9oWwxG939EGsmVRJ952N7i/9gBuuMZ7+wLOt
VkRs+ukk3OeWqG1SPtUCQQD+W3fqrTHusQvqCAKbsBaqo0VLUH9JFDzoDh1Q+M1T
MK/mcSaZTFBaxHaaa4HSHk1ULDqPDIccdLrBrVGLE/73AkEA8fyySLG59/ig/opx
HdorHoebzSxcuiab0ujrbDd8I+0cDanJ4+vHobwUjxifrtUNumFRlkXsloI/sJpr
mTykNwJBAPpJNy6NTlz5iie3yhk4pJU0I7OAej+G0oflm6NZr3D0r6GqJbkjBs7K
E4rPzubbOmxhOR4ZzbmKg1qhGWQpQPECQHvQ/XQeo/YSXGYBdkF9CQUVBA4mPcft
y1tOXG9BsJ49S1ZeYvPhB4Nk1ewmAEaXsu+DrhhC7PxR5r65NIbytV8CQQDlpECI
19JA1Er3APOV5J5zymE0zO2ViVoB67gVWEHmRPI35YJWIvve3UtgO35q4MyVsWIt
8OZTmywRoDYMGaNq
-----END PRIVATE KEY-----
EOF;

openssl_private_encrypt(time(), $crypttext, $private_key);
$crypttext = base64_encode($crypttext);

$data = array(
    'username' => $username,
    'ts' => $crypttext,
);

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, "http://ddns.corp.anjuke.com/rsa.php");
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));

curl_exec($ch);
