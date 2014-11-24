using UnityEngine;
using System.Collections;

public static class CheckIPhoneType {

	//determines which iphones the game will use the compressed sprites for
   public static bool OldPhone() {
		iPhoneGeneration [] oldIphones = new iPhoneGeneration[]{iPhoneGeneration.iPhone, iPhoneGeneration.iPhone3G, iPhoneGeneration.iPhone3GS, 
			iPhoneGeneration.iPhone4, iPhoneGeneration.iPhone4S, iPhoneGeneration.iPodTouch4Gen, iPhoneGeneration.iPodTouch5Gen};
		foreach (iPhoneGeneration phone in oldIphones) {
			if (iPhoneSettings.generation == phone) {
				return true;
			}
		}
		return false;
	}
}
