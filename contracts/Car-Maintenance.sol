pragma solidity ^0.8.24;

contract CarMaintenance
{

    struct Car 
    {
        string licensePlate;
        string carType;
        string CarBrand;
        MaintenanceRecord[] maintenanceRecords;
    }

    struct MaintenanceRecord {
        uint256 timestamp;
        string description;
    }

    mapping(uint256 => Car) public CarsRecords;

    uint256 public totalCars;

    function addCar(string memory _licensePlate, string memory _carType, string memory CarBrand ) public {
    
        totalCars++;
     
        Car storage newCar = Cars_Records[totalCars];
        newCar.licensePlate = _licensePlate;
        newCar.carType = _carType;
        newCar.CarBrand = CarBrand;        
        
    }




}