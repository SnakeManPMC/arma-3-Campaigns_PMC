
t80_1="CUP_O_T72_RU" createvehicle [GLB_02_t80_1X, GLB_02_t80_1Y];
t80_1 setpos [GLB_02_t80_1X, GLB_02_t80_1Y]; t80_1 setdir GLB_02_t80_1D;
aa = t80_1 loadStatus "02t80_1";

uaz1="CUP_O_UAZ_Unarmed_RU" createvehicle [GLB_02_uaz1X, GLB_02_uaz1Y];
uaz1 setpos [GLB_02_uaz1X, GLB_02_uaz1Y]; uaz1 setdir GLB_02_uaz1D;
aa = uaz1 loadStatus "02uaz1";

urep1="CUP_O_Ural_Repair_RU" createvehicle [GLB_02_urep1X, GLB_02_urep1Y];
urep1 setpos [GLB_02_urep1X, GLB_02_urep1Y]; urep1 setdir GLB_02_urep1D;
aa = urep1 loadStatus "02urep1";

urep2="CUP_O_Ural_Repair_RU" createvehicle [GLB_02_urep2X, GLB_02_urep2Y];
urep2 setpos [GLB_02_urep2X, GLB_02_urep2Y]; urep2 setdir GLB_02_urep2D;
aa = urep2 loadStatus "02urep2";

ural1="CUP_C_Ural_Civ_02" createvehicle [GLB_02_ural1X, GLB_02_ural1Y];
ural1 setpos [GLB_02_ural1X, GLB_02_ural1Y]; ural1 setdir GLB_02_ural1D;
aa = ural1 loadStatus "02ural1";

zsu1="CUP_O_ZSU23_TK" createvehicle [GLB_02_zsu1X, GLB_02_zsu1Y];
zsu1 setpos [GLB_02_zsu1X, GLB_02_zsu1Y]; zsu1 setdir GLB_02_zsu1D;
aa = zsu1 loadStatus "02zsu1";

zsu2="CUP_O_ZSU23_TK" createvehicle [GLB_02_zsu2X, GLB_02_zsu2Y];
zsu2 setpos [GLB_02_zsu2X, GLB_02_zsu2Y]; zsu2 setdir GLB_02_zsu2D;
aa = zsu2 loadStatus "02zsu2";

zsu3="CUP_O_ZSU23_TK" createvehicle [GLB_02_zsu3X, GLB_02_zsu3Y];
zsu3 setpos [GLB_02_zsu3X, GLB_02_zsu3Y]; zsu3 setdir GLB_02_zsu3D;
aa = zsu3 loadStatus "02zsu3";

ufuel1="CUP_O_Ural_Refuel_RU" createvehicle [GLB_02_ufuel1X, GLB_02_ufuel1Y];
ufuel1 setpos [GLB_02_ufuel1X, GLB_02_ufuel1Y]; ufuel1 setdir GLB_02_ufuel1D;
aa = ufuel1 loadStatus "02ufuel1";

uammo1="CUP_O_Ural_Reammo_RU" createvehicle [GLB_02_uammo1X, GLB_02_uammo1Y];
uammo1 setpos [GLB_02_uammo1X, GLB_02_uammo1Y]; uammo1 setdir GLB_02_uammo1D;
aa = uammo1 loadStatus "02uammo1";

aa = s1 loadStatus "01s1";
aa = s2 loadStatus "01s2";
aa = s3 loadStatus "01s3";
aa = s4 loadStatus "01s4";
aa = s5 loadStatus "01s5";
aa = s6 loadStatus "01s6";
aa = s7 loadStatus "01s7";
aa = s8 loadStatus "01s8";
aa = s9 loadStatus "01s9";

if (!alive s2) then { deletevehicle s2; };
if (!alive s3) then { deletevehicle s3; };
if (!alive s4) then { deletevehicle s4; };
if (!alive s5) then { deletevehicle s5; };
if (!alive s6) then { deletevehicle s6; };
if (!alive s7) then { deletevehicle s7; };
if (!alive s8) then { deletevehicle s8; };
if (!alive s9) then { deletevehicle s9; };

// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 22:08:22
_camera camSetTarget [-76321.67,63893.52,-18490.47];
_camera camSetPos [3091.04,6007.21,5.51];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 22:08:30
_camera camSetTarget [-75428.34,63242.34,-23593.06];
_camera camSetPos [3091.04,6007.21,29.98];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 22:09:35
_camera camSetTarget [-22572.55,-88394.63,-20192.32];
_camera camSetPos [3058.04,6126.31,9.13];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 22:09:41
_camera camSetTarget [-12978.32,-90214.35,-21486.03];
_camera camSetPos [3037.02,6119.77,17.52];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 22:10:25
_camera camSetTarget [-71380.97,-54717.05,-27642.74];
_camera camSetPos [3019.07,6102.13,8.23];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 22:10:27
_camera camSetTarget [-5780.38,-89589.60,-27642.89];
_camera camSetPos [3019.07,6102.13,8.23];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 22:10:28
_camera camSetTarget [73497.58,-59221.06,-27643.12];
_camera camSetPos [3019.07,6102.13,8.23];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 0.5;

//=== 22:11:11
_camera camSetTarget [3033.28,105954.20,-4083.97];
_camera camSetPos [3027.64,6038.83,9.51];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 22:11:14
_camera camSetTarget [3033.28,105954.20,-4084.39];
_camera camSetPos [3027.47,6050.93,9.51];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 22:11:23
_camera camSetTarget [32846.44,83818.73,-55321.98];
_camera camSetPos [3028.00,6055.19,9.51];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
