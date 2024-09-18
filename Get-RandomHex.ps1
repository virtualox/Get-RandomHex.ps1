<#
.SYNOPSIS
Generates a random hexadecimal string using cryptographically secure random number generation.

.DESCRIPTION
The `Get-RandomHexString` function returns a random hexadecimal string of a specified bit length. The default bit length is 256 bits. It uses cryptographically secure random number generation methods to ensure high entropy.

.PARAMETER BitLength
The length (in bits) of the hexadecimal string to be generated. Default is 256 bits.

.INPUTS
None. You cannot pipe objects to this function.

.OUTPUTS
System.String. The function returns a hexadecimal string.

.EXAMPLE
PS C:\> .\Get-RandomHex.ps1 -BitLength 128
Generates a 128-bit long hexadecimal string.

.NOTES
The function uses the `System.Security.Cryptography.RandomNumberGenerator` class for cryptographically secure random number generation. It uses `RandomNumberGenerator.Create()` for compatibility with different .NET versions.

#>

# Script-level parameter block to accept -BitLength when running the script
[CmdletBinding()]
param(
    [int] $BitLength = 256
)

function Get-RandomHexString {
    [CmdletBinding()]
    param(
        [int] $BitLength = 256
    )

    $byteLength = [Math]::Ceiling($BitLength / 8)

    $bytes = New-Object 'byte[]' $byteLength

    # Use RandomNumberGenerator.Create() for compatibility
    $rng = [System.Security.Cryptography.RandomNumberGenerator]::Create()
    $rng.GetBytes($bytes)
    $rng.Dispose()

    # Convert each byte to its two-digit hexadecimal representation
    $hexString = -join ($bytes | ForEach-Object { $_.ToString("x2") })

    # Trim the string to the exact bit length if necessary
    $hexStringLength = $BitLength / 4  # Each hex character represents 4 bits
    $hexString = $hexString.Substring(0, $hexStringLength)

    return $hexString
}

# Call the function with the desired bit length
Get-RandomHexString -BitLength $BitLength
