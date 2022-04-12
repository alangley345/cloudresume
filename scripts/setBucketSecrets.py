from base64 import b64encode
from nacl import encoding, public
import requests
import os

#from Github API docs
def encrypt(public_key: str, secret_value: str) -> str:
  """Encrypt a Unicode string using the public key."""
  public_key = public.PublicKey(public_key.encode("utf-8"), encoding.Base64Encoder())
  sealed_box = public.SealedBox(public_key)
  encrypted = sealed_box.encrypt(secret_value.encode("utf-8"))
  return b64encode(encrypted).decode("utf-8")

#request variables
owner = "alangley345"
repo  = "cloudresume"
bucketName = "BUCKET_NAME"
get_url   =  f"https://api.github.com/repos/{owner}/{repo}/actions/secrets/public-key"
put_url   =  f"https://api.github.com/repos/{owner}/{repo}/actions/secrets/{bucketName}"
token = os.environ.get('GITHUB_TOKEN')

#get public key
response = requests.get(get_url , headers={'Authorization': f'token {token}'})
response = response.json()
pubKey   = response.get('key_id')

#put secret
encrypt(pubKey , "resume.aaronlangley.net" )
putBucket = requests.put(get_url , headers={'Authorization': f'token {token}'})


print(pubKey)