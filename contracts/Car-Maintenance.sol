pragma solidity ^0.8.24;

contract CarMaintenance
{

    struct Car 
    {
        string licensePlate;
        string carType;
        string builderBrand;
        MaintenanceRecord[] maintenanceRecords;
    }

    struct MaintenanceRecord {
        uint256 timestamp;
        string description;
    }



}