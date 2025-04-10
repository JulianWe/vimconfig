# How to handle Private Keys on CLI using [Python](https://pypi.org/project/mnemonic/)

**prerequisites**
```sh
pip3 install mnemonic
```

**convert mnemonic to private key**
```py
#!/usr/bin/env python
import sys
from mnemonic import Mnemonic
from bip32utils import BIP32Key

seed = (sys.argv[1]=="seed")

mnemo = Mnemonic("english")
words = "letter advice cage absurd amount doctor acoustic avoid letter advice cage above"  # Replace with your mnemonic phrase

seed = mnemo.generate(strength=256) 

seed = mnemo.to_seed(words, passphrase="")

root_key = BIP32Key.fromEntropy(seed)
private_key = root_key.PrivateKey().hex()

print(private_key)
```


**generate new seed wallet with 24 seed words using python**
```py
from mnemonic import Mnemonic

# Initialize the Mnemonic object with the desired language
mnemo = Mnemonic("english")

# Generate a mnemonic seed, strength can be 128 = 12 Seed Words , 160 = 15 Seed Words, or 256 = 24 Seed Words bits
seed = mnemo.generate(strength=256) 

# Print Mnemonic Seed Wallet
print(seed)
```

