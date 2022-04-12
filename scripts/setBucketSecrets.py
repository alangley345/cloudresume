from base64 import b64encode
from nacl import encoding, public
import requests
import os

def encrypt(public_key: str, secret_value: str) -> str:
  """Encrypt a Unicode string using the public key."""
  public_key = public.PublicKey(public_key.encode("utf-8"), encoding.Base64Encoder())
  sealed_box = public.SealedBox(public_key)
  encrypted = sealed_box.encrypt(secret_value.encode("utf-8"))
  return b64encode(encrypted).decode("utf-8")


owner = "alangley345"
repo  = "cloudresume"
url   =  f"https://api.github.com/repos/{owner}/{repo}/actions/secrets/public-key"
token = os.environ.get('GITHUB_TOKEN')

pubKey = requests.get(url)

print(pubKey)