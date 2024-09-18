# Get-RandomHex

**`Get-RandomHex.ps1`** is a PowerShell script designed to generate cryptographically secure random hexadecimal strings. This is useful for creating keys, tokens, or any scenario where high-entropy random data is required. A common use case is generating a 16-byte (128-bit) key, which aligns with the recommended minimum entropy for session IDs [as per OWASP guidelines](https://owasp.org/www-community/vulnerabilities/Insufficient_Session-ID_Length).

## Features

- Generates random hexadecimal strings based on a specified bit length.
- Utilizes cryptographically secure random number generation methods.
- Compatible with multiple .NET versions due to the use of `RandomNumberGenerator.Create()`.
- Accepts the `-BitLength` parameter at both the script and function levels.
- Handles bit lengths not divisible by 8 by appropriately trimming the output.

## Usage

### Running the Script Directly

To generate a hex string without specifying a bit length (defaults to 256 bits):

```powershell
.\Get-RandomHex.ps1
```

To generate a hex string in PowerShell based on a desired bit length:
```powershell
.\Get-RandomHex.ps1 -BitLength 128
```

## Importing the Function into Your Session
You can import the function and use it directly in your PowerShell session:

- Import the function
```powershell
. .\Get-RandomHex.ps1
```
- Generate a 256-bit random hexadecimal string
```powershell
Get-RandomHexString
```
- Generate a 128-bit random hexadecimal string
```powershell
Get-RandomHexString -BitLength 128
```

## Installation
1. **Clone** or **download** this repository to your local machine.
2. **Run the script directly** or **import the function** into your PowerShell session.
    - Running the script directly:
    ```powershell
    .\Get-RandomHex.ps1
    ```
    - Importing the function:
    ```powershell
    . .\Get-RandomHex.ps1  # Note the dot and space before the script path
    ```

## Contribution
Contributions are welcome! Please open an issue or submit a pull request for any improvements or fixes. Before submitting a PR, ensure that you've tested your changes and updated any necessary documentation.
