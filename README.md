# Get-RandomHex

Generate a 20 bytes random key, not characters. 16 bytes, is a 128-bit key. The suggested minimum of 16 bytes is because it's 128-bit and considered (sufficient entropy [according to the OWASP project](https://www.owasp.org/index.php/Insufficient_Session-ID_Length).

Depending on the serialization method, it could generate various lengths when serialized to a string of text.
For instance hexadecimal, or base64url, or Ascii85.

To generate a hex string in PowerShell based on bits you could use the following code.
