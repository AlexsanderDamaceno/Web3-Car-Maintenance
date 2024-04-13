pragma solidity ^0.8.24;

import "@openzeppelin/contracts/utils/Strings.sol";


contract CarMaintenance
{

    using Strings for string; 

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

    uint256 public totalCars = 0;

    function addCar(string memory _licensePlate, string memory _carType, string memory _CarBrand ) public {
    
       
     
        Car storage newCar = Cars_Records[totalCars];
        newCar.licensePlate = _licensePlate;
        newCar.carType = _carType;
        newCar.CarBrand = CarBrand;    

        totalCars++;     
        
    }

    function addMaintenanceRecord(uint256 _carId, string memory _description) public
    {
      
        Car storage car = CarsRecords[_carId];     
        car.maintenanceRecords.push(MaintenanceRecord(block.timestamp, _description));
    
    }
    
    function getMaintenanceRecordbyCar(uint256 _carId, uint256 _index) public view returns (MaintenanceRecord[] memory ) {
        MaintenanceRecord memory records = carsById[_carId].maintenanceRecords;
        return records;
    }


     function getCarInformation(string memory _licensePlate) public view returns (Car memory) {
       
        Car memory  res; 

        for(uint256 i = 0; i < totalCars; i++)
        {
               if(CarsRecords[i].equal(_licensePlate))
               {
                   res = CarsRecords[i];
                   return res; 
                   
               }

        }

        
    }



}