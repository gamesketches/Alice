using UnityEngine;
using System.Collections;

public class ObjectLogger : MonoBehaviour {

	public static bool goodieConsumed = false;
	public static bool bobbyPinObtained = false;
	public static bool drawerOpened = false;
	public static bool eatenByCat = false;

	public static void Reset() {
		goodieConsumed = false;
		bobbyPinObtained = false;
		drawerOpened = false;
		eatenByCat = false;
	}
}
