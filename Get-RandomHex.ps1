<#
.SYNOPSIS
Generates a random hexadecimal string using cryptographically secure random number generation.

.DESCRIPTION
The Get-RandomHexString function returns a random hexadecimal string of a specified bit length. The default bit length is 256.

.PARAMETER BitLength
The length (in bits) of the hexadecimal string to be generated. Default is 256 bits.

.EXAMPLE
Get-RandomHexString -BitLength 128
Generates a 128-bit long hexadecimal string.

.NOTES
The function uses the System.Security.Cryptography.RNGCryptoServiceProvider class for cryptographically secure random number generation.
#>

[CmdletBinding()]
param(
    [int] $BitLength = 256
)

function Get-RandomHexString {
    
    $byteLength = $BitLength / 8
    $bytes = [byte[]]::new($byteLength)

    $rngCryptoProvider = [System.Security.Cryptography.RNGCryptoServiceProvider]::new()
    $rngCryptoProvider.GetBytes($bytes)

    # Properly dispose the crypto service provider
    $rngCryptoProvider.Dispose()

    # Convert bytes to hex string
    $hexString = [BitConverter]::ToString($bytes) -replace '-'
    return $hexString
}

Get-RandomHexString -BitLength $BitLength
