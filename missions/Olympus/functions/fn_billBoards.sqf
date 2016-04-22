/*
Author: Rory

Function: Handles image placement on billboard objects.
*/

if (!isServer) exitWith {};

params ["_billboard"];
{
    _x params ["_texture", "_position"];

    private _textureObject = createVehicle ["UserTexture_1x2_F", position _billboard, [], 0, "CAN_COLLIDE"];
    _textureObject setObjectTextureGlobal [0, _texture];
    _textureObject attachto [_billboard, _position];

} forEach [
    ["\x\tac\addons\resources\Olympus\BillBoard1.paa", [-2.5, -0.55, 1.2]],
    ["\x\tac\addons\resources\Olympus\BillBoard2.paa", [-1.5, -0.55, 1.2]],
    ["\x\tac\addons\resources\Olympus\BillBoard3.paa", [-0.5, -0.55, 1.2]],
    ["\x\tac\addons\resources\Olympus\BillBoard4.paa", [0.5, -0.55, 1.2]],
    ["\x\tac\addons\resources\Olympus\BillBoard5.paa", [1.5, -0.55, 1.2]],
    ["\x\tac\addons\resources\Olympus\BillBoard6.paa", [2.5, -0.55, 1.2]]
];
