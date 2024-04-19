# Results   
## With Optimizer 10000 runs
| Contract | Size (B) | Margin (B) |
|----------|----------|------------|
| NewError |      200 |     24,376 |
| OldError |      252 |     24,324 |

## With Optimizer 200 runs
| Contract | Size (B) | Margin (B) |
|----------|----------|------------|
| NewError |      175 |     24,401 |
| OldError |      203 |     24,373 |

## With Via-IR
| Contract | Size (B) | Margin (B) |
|----------|----------|------------|
| NewError |      139 |     24,437 |
| OldError |      167 |     24,409 |


## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
