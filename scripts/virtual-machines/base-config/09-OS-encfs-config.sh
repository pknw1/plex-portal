#!/bin/bash

cat <<EOF >/.encfs6.xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="7">
    <cfg class_id="0" tracking_level="0" version="20">
        <version>20100713</version>
        <creator>EncFS 1.9.5</creator>
        <cipherAlg class_id="1" tracking_level="0" version="0">
            <name>ssl/blowfish</name>
            <major>3</major>
            <minor>0</minor>
        </cipherAlg>
        <nameAlg>
            <name>nameio/block32</name>
            <major>4</major>
            <minor>0</minor>
        </nameAlg>
        <keySize>128</keySize>
        <blockSize>1024</blockSize>
        <uniqueIV>1</uniqueIV>
        <chainedNameIV>0</chainedNameIV>
        <externalIVChaining>0</externalIVChaining>
        <blockMACBytes>0</blockMACBytes>
        <blockMACRandBytes>0</blockMACRandBytes>
        <allowHoles>1</allowHoles>
        <encodedKeySize>28</encodedKeySize>
        <encodedKeyData>
pdSq1aIOOU7Nu0yviuHzEoX++BO1gs7pSwy3KA==
</encodedKeyData>
        <saltLen>20</saltLen>
        <saltData>
HkPHalGG55VuKPpkND5XcCLQeVc=
</saltData>
        <kdfIterations>423773</kdfIterations>
        <desiredKDFDuration>500</desiredKDFDuration>
    </cfg>
</boost_serialization>
EOF

echo "current password is set to password"
echo " "
sudo encfsctl;passwd /

echo "update auto-password script"
read -p "Please enter the password again: " ENCFSPASSWD
echo "echo "$ENCFSPASSWD > /encfspasswd

