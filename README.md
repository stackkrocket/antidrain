<h2 align=center>Asset Recovery Tool</h2>
A very simple script to claim and send airdrop from compromised wallet (hacked wallet) to a safe wallet. Works on any evm network.

## 📋 Note
- Before getting started, let me tell you about 2 different types of tokens:
   - **Approve-based token** : In this type, the holder must spend gas to allow someone else to spend these tokens.
   - **Permit-based token** : In this type, the holder can allow someone else to spend these tokens using an off-chain signature.

- So, after claiming an airdrop from your compromised wallet:
   - If the token is approve-based, you need to have gas in that compromised wallet.
   - If the token contract has a permit function, then you don’t need any funds in the compromised wallet.

- Every token contract includes an `approve` function, but only a few also have a `permit` function.
- If your airdrop token has a `permit` function, definitely use the permit-based claim.
- If you're unsure whether it's permit-based or approve-based, just use the approve-based claim.

## 📚 `.env` details
| Variable Name              | Description |
|---------------------------|-------------|
| `RPC_URL`                 | RPC of the network on which you want to claim the airdrop. |
| `PRIVATE_KEY`             | Your **safe wallet's private key**. This wallet will : <br> - Send gas fees to the compromised wallet <br> - Deploy `TokenRecover` or `PermitAndTransfer` contracts <br> - Receive the recovered tokens. |
| `COMPROMISED_KEY`         | The private key of the **compromised wallet** on which you are eligible to claim an airdrop |
| `AIRDROP_CONTRACT`        | The claim contract address of the airdrop. |
| `RECOVER_CONTRACT`        | The contract address obtained after running the `approve.js` script. |
| `PERMIT_TRANSFER_CONTRACT`| The contract address obtained after running the `deploy.js` script. |
| `TOKEN_NAME`              | The name of the token you receive after claiming the airdrop. **Case-sensitive** — use the exact name (not the symbol). <br>_Example : If the token is USDT, the name is usually `Tether USD`, not `USDT`._ |
| `TOKEN_ADDRESS`           | The contract address of the airdropped token. |
| `TOKEN_AMOUNT`            | The exact amount of tokens you will receive. **Must match exactly** — e.g. if you're getting `199.9`, don’t write `200` or the script will fail. |
| `SAFE_ADDRESS`            | The address corresponding to the `PRIVATE_KEY`. This is the deployer address used right after the `RPC_URL`. |

<h1 align=center>YET TO WRITE MORE</h1>
