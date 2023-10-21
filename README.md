# Get-RandomHex

**`Get-RandomHex.ps1`** is a PowerShell function designed to generate cryptographically secure random hexadecimal strings. A typical use case is the generation of a 16-byte (128-bit) key, which aligns with the recommended minimum entropy for session IDs [as per OWASP guidelines](https://www.owasp.org/index.php/Insufficient_Session-ID_Length).

## Features
- Generates random hexadecimal strings based on a specified bit length.
- Uses cryptographically secure random number generation.

## Usage
To generate a hex string in PowerShell without a desired bit length generates a key with the default bit length of 256:
```powershell
.\Get-RandomHex.ps1
```

To generate a hex string in PowerShell based on a desired bit length:
```powershell
.\Get-RandomHex.ps1 -BitLength 128
```

## Installation
1. Clone or download this repository.
2. Import the provided `.ps1` script into your PowerShell session.
3. Run **`Get-RandomHex.ps1`** script, optional with the desired bit length parameter.

## Contribution
Pull requests and issues are welcome! Before submitting a PR, please ensure that you've run tests and added any necessary documentation.
