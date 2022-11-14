

module load idl

# run idl scripts from commond line:
# 06032020 
export IDL_PATH='<IDL_DEFAULT>':'~ars599/archive/Base_temp/plot_idl/peyl'
idl -e "make_sponge_coeff"

# 15112022
idl -e make_sponge_spo3d_mask_coeff

IDL 8.8.0 (linux x86_64 m64).
(c) 2020, Harris Geospatial Solutions, Inc.

Licensed for use by: National Computational Infrastructure - Menadue
License: 242564
A new version is available: IDL 8.8.3
https://harrisgeospatial.flexnetoperations.com

% Compiled module: MAKE_SPONGE_SPO3D_MASK_COEFF.
% Compiled module: PEYL_READNC.
% Loaded DLM: NCDF.
% Compiled module: PEYL_CONCATSTR.
% Stop encountered: MAKE_SPONGE_SPO3D_MASK_COEFF  290 /g/data/p66/ars599/ACCESS-CM2/post_processing/cchung_scripts/mak
  e_sponge_spo3d_mask_coeff.pro

# source
/g/data/p66/ars599/ACCESS-CM2/post_processing/cchung_scripts/make_sponge_spo3d40s_mask_coeff.pro

# output:
/g/data/p66/ars599/ACCESS-CM2/post_processing/cchung_scripts/salt_coeff_spo_3d.nc
/g/data/p66/ars599/ACCESS-CM2/post_processing/cchung_scripts/temp_coeff_spo_3d.nc

# mask
![](https://github.com/ars599/S_Pacific_Clamping_Christine/mask_coeff_spo.gif)