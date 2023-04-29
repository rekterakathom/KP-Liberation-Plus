/*
kp_fuel_consumption.sqf
Author: Wyqer
Website: www.killahpotatoes.de
Date: 2017-02-02

Description:
This script handles the fuel consumption of vehicles, so that refueling will be necessary more often.

Parameters:
_this select 0 - OBJECT - Vehicle

Method:
execVM

Example for initPlayerLocal.sqf:
player addEventHandler ["GetInMan", {[ _this select 2] execVM "scripts\kp_fuel_consumption.sqf";}];
*/

//CONFIG
// Time in Minutes till a full tank depletes when the vehicle is standing with running engine
private _kp_neutral_consumption = KP_liberation_fuel_neutral;
// Time in Minutes till a full tank depletes when the vehicle is driving
private _kp_normal_consumption = KP_liberation_fuel_normal;
// Time in Minutes till a full tank depletes when the vehicle is driving at max speed
private _kp_max_consumption = KP_liberation_fuel_max;

/*
DO NOT EDIT BELOW
*/

if (isNil "kp_fuel_consumption_vehicles") then {
    kp_fuel_consumption_vehicles = [];
};

private _currentVehicle = _this select 0;
if (!((_this select 0) in kp_fuel_consumption_vehicles)) then {
    kp_fuel_consumption_vehicles pushBack _currentVehicle;
    private _maxSpeed = (getNumber (configFile >> "CfgVehicles" >> typeOf _currentVehicle >> "maxSpeed") * 0.9);
    while {local _currentVehicle} do {
        if (isEngineOn _currentVehicle) then {
            if (speed _currentVehicle > 5) then {
                if (speed _currentVehicle > _maxSpeed) then {
                    _currentVehicle setFuel (fuel _currentVehicle - (1 / (_kp_max_consumption * 60)));
                } else {
                    _currentVehicle setFuel (fuel _currentVehicle - (1 / (_kp_normal_consumption * 60)));
                };
            } else {
                _currentVehicle setFuel (fuel _currentVehicle - (1 / (_kp_neutral_consumption * 60)));
            };
        };
        uiSleep 1;
    };
    kp_fuel_consumption_vehicles deleteAt (kp_fuel_consumption_vehicles find _currentVehicle);
};
