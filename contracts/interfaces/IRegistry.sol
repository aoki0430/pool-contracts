pragma solidity 0.8.7;

interface IRegistry {

    function isListed(address _market) external view returns (bool);

    function getCDS(address _address) external view returns (address);

    function confirmExistence(address _target, uint256 _typeId)
        external
        view
        returns (bool);
    
    //onlyOwner
    function setFactory(address _factory) external;
    function supportMarket(address _market) external;
    function setExistence(address _target, uint256 _typeId) external;
    function setCDS(address _address, address _cds) external;
    
}
