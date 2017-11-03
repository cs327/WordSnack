using UnityEngine;
using System.Collections;

public static class CheckIPhoneType {

	//determines which iphones the game will use the compressed sprites for
   public static bool OldPhone() {
		UnityEngine.iOS.DeviceGeneration [] oldIphones = new UnityEngine.iOS.DeviceGeneration[]{UnityEngine.iOS.DeviceGeneration.iPhone, UnityEngine.iOS.DeviceGeneration.iPhone3G, UnityEngine.iOS.DeviceGeneration.iPhone3GS, 
			UnityEngine.iOS.DeviceGeneration.iPhone4, UnityEngine.iOS.DeviceGeneration.iPhone4S, UnityEngine.iOS.DeviceGeneration.iPodTouch4Gen, UnityEngine.iOS.DeviceGeneration.iPodTouch5Gen};
		foreach (UnityEngine.iOS.DeviceGeneration phone in oldIphones) {
			if (UnityEngine.iOS.Device.generation == phone) {
				return true;
			}
		}
		return false;
	}
}
