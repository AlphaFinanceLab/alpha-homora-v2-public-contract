pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

interface IAny {
  function approve(address, uint) external;

  function _setCreditLimit(address, uint) external;

  function setOracle(address) external;

  function poolInfo(uint)
    external
    view
    returns (
      address,
      uint,
      uint,
      uint
    );

  function poolLength() external view returns (uint);

  function setWhitelistSpells(address[] memory, bool[] memory) external;

  function setWhitelistTokens(address[] memory, bool[] memory) external;

  function getPrice(address, address) external view returns (uint, uint);

  function owner() external view returns (address);

  function work(
    uint,
    address,
    uint,
    uint,
    bytes memory
  ) external;

  function setPrices(
    address[] memory,
    address[] memory,
    uint[] memory
  ) external;

  function getETHPx(address) external view returns (uint);

  function balanceOf(address) external view returns (uint);

  function admin() external view returns (address);

  function getPositionInfo(uint)
    external
    view
    returns (
      address,
      address,
      uint,
      uint
    );

  function getUnderlyingToken(uint) external view returns (address);

  function getReserves()
    external
    view
    returns (
      uint,
      uint,
      uint
    );

  function totalSupply() external view returns (uint);

  function token0() external view returns (address);

  function token1() external view returns (address);

  function decimals() external view returns (uint);

  function symbol() external view returns (string memory);

  function setPrimarySources(
    address,
    uint,
    address[] memory
  ) external;

  function setMultiPrimarySources(
    address[] memory,
    uint[] memory,
    address[][] memory
  ) external;

  function setSourceGasLimits(address[] memory, uint[] memory) external;

  function getETHPx(address, uint[] memory) external view returns (uint);

  function governor() external view returns (address);
}
