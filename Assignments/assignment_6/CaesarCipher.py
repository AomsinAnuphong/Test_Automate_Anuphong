# A simple cipher built on the alphabet wheel [A-Z] (uppercase).
# Given encrypted string of only A-Z, decrypt by shifting k steps
# COUNTERCLOCKWISE (i.e. go backward k) around the wheel.

# Example:
#  encrypted = 'VTAOG'
#  k=2
#  => 'TRYME'

def caesar_encrypt(text, shift):
    result = ""
    alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    
    for char in text:
        old_index = alphabet.index(char)
        new_index = (old_index + shift) % 26
        result += alphabet[new_index]
            
    return result


def caesar_decrypt(ciphertext, shift):
    return caesar_encrypt(ciphertext, -shift)


if __name__ == "__main__":
    encrypted = "VTAOG"
    k = 2

    decrypted = caesar_decrypt(encrypted, k)

    print("Encrypted:", encrypted)
    print("Decrypted:", decrypted)
