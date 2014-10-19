using UnityEngine;
using System.Collections;

public class ParticleHelper : MonoBehaviour {

	// for creating instances of the particles
	public static ParticleHelper Instance;

	// so far, score and multiplier particles
	public ParticleSystem scoreParticle;
	public ParticleSystem multiplierParticle;
	
	// Use this for initialization
	void Start () {
		// register the singleton
		if (Instance != null) {
			Debug.LogError ("Multiple instances of ParticleHelper!");
		}

		Instance = this;
	}
	
	// Update is called once per frame
	void Update () {
	
	}


	// run the particle simulation
	public void OutputScore(Vector3 position) {
		instantiate (scoreParticle, position);
	}


	private ParticleSystem instantiate(ParticleSystem prefab, Vector3 position) {
		ParticleSystem newParticleSystem = Instantiate(prefab, position, Quaternion.identity) as ParticleSystem;

		// Make sure it will be destroyed
		Destroy(newParticleSystem.gameObject, newParticleSystem.startLifetime);
		
		return newParticleSystem;
	}
}
