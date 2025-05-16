// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/**
 * @title IMultiSig - A multisignature wallet interface with support for confirmations.
 */
interface IMultiSig {

    /**
     * @notice Returns the version of the Safe contract.
     * @return Version string.
     */
    // solhint-disable-next-line
    function VERSION() external view returns (string memory);

    /**
     * @notice Returns the nonce of the Safe contract.
     * @return Nonce.
     */
    function nonce() external view returns (uint256);

    /**
     * @notice Returns a uint if the messageHash is signed by the owner.
     * @param messageHash Hash of message that should be checked.
     * @return Number denoting if an owner signed the hash.
     */
    function signedMessages(bytes32 messageHash) external view returns (uint256);
}
