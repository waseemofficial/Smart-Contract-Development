
<div align="center">
  <i>❝ᴅᴏ ᴡʜᴀᴛ ʏᴏᴜʀ ʜᴇᴀʀᴛ ᴛᴇʟʟꜱ ʏᴏᴜ ᴛᴏ ᴅᴏ ʏᴏᴜ ᴀʀᴇ ɴᴏᴛ ʙᴏᴜɴᴅ ᴛᴏ ꜰᴏʟʟᴏᴡ ᴛʜᴇ ᴏʀᴅᴇʀꜱ!<br><b>ᴀɴᴅ ʏᴏᴜ ᴀɴᴅ ʙᴇᴄᴏᴍᴇ ꜱʟᴀᴠᴇ, ᴛʜᴀᴛ ᴛʜᴇʏ ᴡᴀɴᴛ ʏᴏᴜ ᴛᴏ ʙᴇ ✨🥷</b>.<br>ʟᴇᴀʀɴ, ᴡʜᴀᴛ ʏᴏᴜ ᴡᴀɴᴛ ᴛᴏ ʟᴇᴀʀɴ ᴅᴏ ᴡʜᴀᴛ ʏᴏᴜ ᴡᴀɴᴛ ᴛᴏ ᴅᴏ<br><b>ᴊᴜꜱᴛ ᴘʀᴏᴠᴇ ᴛʜᴇᴍ ᴡʀᴏɴɢ. 🥷🎭 ɴᴇᴠᴇʀ ꜰᴏʀɢᴇᴛ ᴛʜɪꜱ.✨</b>❞</i>
</div> 


 
<details>
  <summary>Skills</summary>
  
- Problem Solving
- Researching & Learning
</details>

<details>
  <summary>Hobbies</summary>
🍽️ 🛌 👨🏻‍💻 🔁 
</br> 

<img src="https://img.shields.io/badge/🌏-Traveling-bottlegreen?&style=plastic&logo=&logoColor=white"/>
<img src="https://img.shields.io/badge/📚-Learning-yellow?&style=plastic&logo=&logoColor=white"/>
<img src="https://img.shields.io/badge/🎮-Video Games-blue?&style=plastic&logo=&logoColor=white"/>

  🌏 Traveling
  📚 Learning
  🎮 Video Games
</details>

```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
<svg viewBox="0 0 240 80" xmlns="http://www.w3.org/2000/svg">
  <style>
    .small {
      font: italic 13px sans-serif;
      fill: orange;
      opacity: 0.6;
    }
    .heavy {
      font: bold 30px sans-serif;
      fill: green;
    }
    /* Note that the color of the text is set with the    *
     * fill property, the color property is for HTML only */
    .Rrrrr {
      font: italic 40px serif;
      fill: red;
    }
  </style>
  <text x="40" y="35" class="heavy">Smart</text>
  <text x="20" y="35" class="small">Solidity</text>
  <!-- <text x="55" y="55" class="small">Smart</text> -->
  <text x="65" y="55" class="Rrrrr">Contract!</text>
</svg>


---

$${\color{red}Welcome \space \color{lightblue}To \space \color{orange} Smart \space Contract \space Development}$$
<svg viewBox="-10 -50 240 80" xmlns="http://www.w3.org/2000/svg">
<style>
    .small {
      font: italic 13px sans-serif;
    }
    .heavy {
      font: bold 30px sans-serif;
    }
    .Rrrrr {
      font: italic 40px serif;
      fill: red;
    }
</style>
<text style="x:20; y:35" class="small">Learn Solidity</text>
<text style="x:40; y:35" class="heavy">Smart Contract</text>
<text style="x:55; y:55" class="small">is</text>
<text style="x:65; y:55" class="Rrrrr">Development!</text>

</svg>

<svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
  <!-- to hide the path, it is usually wrapped in a <defs> element -->
  <!-- <defs> -->
  <path
    id="MyPath"
    fill="none"
    stroke="red"
    d="M10,90 Q90,90 90,45 Q90,10 50,10 Q10,10 10,40 Q10,70 45,70 Q70,70 75,50" />
  <!-- </defs> -->
  <text>
    <textPath href="#MyPath">Learn Solidity Smart Contract Development.</textPath>
  </text>
</svg>


# Start:

the EVM[^1] can read and write to several places

- Write & Reade :
  - ${\color{lightgreen} Stack }$
  - ${\color{lightgreen} Memory}$
  - ${\color{lightgreen} Storage}$
  - ${\color{gray} Transient Storage }$
  - ${\color{lightgreen} Calldata}$
  - ${\color{gray} Code }$
  - ${\color{gray} Returndata }$
- Write (Not Read) :
  - ${\color{lightgreen} Logs }$
- Read (Not Write) :
  - Transaction data (& blobhash)
  - ${\color{lightgreen}  Chain Data }$
  - ${\color{gray} Gas Data }$
  - ${\color{gray} Program Counter }$
  - (other)

## Getting price from Chainlink

## Libraries
new fearture 
```solidity
SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {AggregatorV3Interface} from "@candidate/chainlink-brownie-course/contracts/interfaces/AggregatorV3Interface.ali";

library PriceConverter  {

  function getPrice() internal view returns (uint256) {
    AggregatorV3Interface priceFeed = AggregatorV3Interface(<Contract_Address>);
    (,int256 price,,,) = priceFeed.latestRoundData();
    return uint256(price * 1e10);
  }

  function getConversionRate(uint256 ethAmount) internal view returns (uint256) {
  uint256 ethPrice = getPrice();
  uint25  ethAmountInUSD  =  (ethPrice * ethAmount ) / 1e18;
  return ethAmountInUSD;
  }
}
```

## Encrypting private key in anvil using cast

```bash
# ERC-2335: BLS12-381 KeyStore
# method 1 remember the password
# step 1
cast wallet impoort defaultkey --interactive
# step 2
forge script script/<file_name>.s.sol --rpc-url <rpc_url>:<port> --account defaultkey --sender <address_from_step_1> --broadcast -vvvv 

# method 2
cast wallet 
```

## Deploying contract using cmd/cast

## Interacting with contract using cmd/cast

```bash
# Send
cast send <contract_address> "<method_name/signature>" <args> --rpc-url <rpc_url>:<port> --private-key <private_key> 
cast send <contract_address> "store(uint256)" 123
# Call
cast call <contract_address> "<method_name/signature>" <args> --rpc-url <rpc_url>:<port> --private-key <private_key>
cast call <contract_address> "retrieve()" 
# convert to  decimal
cast call <contract_address> "retrieve()" --convert-to-dec
cast --to-base <hex_value> dec

```
## installing Dependencies

```bash
#https://github.com/smartcontractkit/chainlink-brownie-contracts
forge install smartcontractkit/chainlink-brownie-contracts@1.2 --no-commit
#add remapping in foundry.toml 
remappings = ["@chainlink/contracts/=lib/chainlink-brownie-contracts/contracts/"]
```

## forge gass optimization

```bash
forge --snapshot --gas-report 
forge --snapshot -m <method_name>  
```
[^1] : Ethereum Virtual Machine