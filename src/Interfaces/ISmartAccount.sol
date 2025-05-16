pragma solidity ^0.8.20;

import {AccountId, CrossChainPayload} from "../libraries/Types.sol";

interface ISmartAccount {
    // Events
    event PayloadExecuted(bytes caller, address target, bytes data);
    event MultisigSignVerified(bytes caller, bytes32 txHash);

    // Functions

    function accountId() external view returns (AccountId memory);

    function verifyPayloadSignature(bytes32 messageHash, bytes memory signature) external view returns (bool);

    function verifyMultisigSignature(bytes32 txHash, bytes memory signature) external view returns (bool);

    function executePayload(CrossChainPayload calldata payload, bytes calldata signature) external;
}
