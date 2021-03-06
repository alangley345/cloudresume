from base64 import b64encode
from nacl import encoding, public
import requests
import os
import json

#from Github API docs
def encrypt(public_key: str, secret_value: str) -> str:
  """Encrypt a Unicode string using the public key."""
  public_key = public.PublicKey(public_key.encode("utf-8"), encoding.Base64Encoder())
  sealed_box = public.SealedBox(public_key)
  encrypted = sealed_box.encrypt(secret_value.encode("utf-8"))
  return b64encode(encrypted).decode("utf-8")

#request variables
owner      = "alangley345"
repo       = "cloudresume"
secretName = "BUCKET_NAME"
get_url    = f'https://api.github.com/repos/{owner}/{repo}/actions/secrets/public-key'
put_url    = f'https://api.github.com/repos/{owner}/{repo}/actions/secrets/{secretName}'
bucket     = 'resume.aaronlangley.net'
token      = os.environ.get('GITHUB_TOKEN')
header     = {"Authorization":f"token {token}","Accept":"application/vnd.github.v3+json"}

#get public key
response = requests.get(get_url,headers=header)
response = response.json()
pubKey   = response.get('key')
pubKeyID = response.get('key_id')
newSecret = encrypt(pubKey,bucket)

<<<<<<< HEAD
#put secret
newSecret = encrypt(pubKey, 'test' )

putBucket = requests.put(get_url , headers={'Authorization': f'token {token}'}, data={'key_id': json.dumps(pubKeyID), 'encrypted_value': json.dumps(newSecret)})

print(pubKeyID)
=======
payload = {"encrypted_value":f"{newSecret}","key_id":f"{pubKeyID}"}
putBucket = requests.put(put_url,headers=header,data=payload)

#debug
print(response)
print(payload)
print(putBucket.json())
#print(put_url)
>>>>>>> 0d7c6d6fd6209bb4a71b41ed2c64552ec27e1390
