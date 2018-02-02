
private ["_camera"];

// camera basic initialization
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil
{
	camCommitted _camera;
};

if (PMCTrophyCount > 25) then
{
	PMC_level2 = true;
}
else
{
	PMC_level1 = true;
};

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;
