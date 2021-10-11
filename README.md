# DEV_OSRM

Repository with dockerized back-end of OSRM
[Reference to original repository](https://github.com/Project-OSRM/osrm-backend)

## **Image arguments**

- `OSRM_PBF_URL`: Source `.pbf` file to use for service deployment
- `OSRM_GRAPH_PROFILE_URL`: Graph profile to use for service deployment (Default: https://raw.githubusercontent.com/WasteLabs/osrm_profiles/master/truck_v1.lua)
- `OSRM_MAX_MATCHING_SIZE`: Max points to perform matching (Default 86400)