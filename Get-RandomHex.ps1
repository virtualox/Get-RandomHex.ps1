function Get-RandomHexString {
    param(
        [int] $BitLength = 256
    )
    $byteLength = $BitLength / 8
    $bytes = New-Object 'System.Byte[]' $byteLength
    $rngCryptoProvider = New-Object System.Security.Cryptography.RNGCryptoServiceProvider
    $rngCryptoProvider.GetBytes($bytes)
    $hexBinary = New-Object System.Runtime.Remoting.Metadata.W3cXsd2001.SoapHexBinary -ArgumentList @(,$bytes)
    
    return $hexBinary.ToString()
}

Get-RandomHexString -BitLength 128
