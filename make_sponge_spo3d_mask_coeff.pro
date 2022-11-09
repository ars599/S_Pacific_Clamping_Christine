pro make_sponge_spo3d_mask_coeff

nlon=360
nlat=300
nvert=50
ntime = 12

mymask = dblarr(nlon,nlat,nvert,12)

time = [15, 44, 73.5, 104, 134.5, 165, 195.5, 226.5, 257, 287.5, 318.5, 349]

peyl_readnc,lon,file='../restore_files/temp_damp_coeff.nc',var_name='xt_ocean'
peyl_readnc,lat,file='../restore_files/temp_damp_coeff.nc',var_name='yt_ocean'
peyl_readnc,vert,file='../restore_files/temp_damp_coeff.nc',var_name='st_ocean'


;set 1 to be ocean, 0 to be land
mymask[*,*,*,*] = 0.0

;lattrop1 = where(lat le 2.5 and lat ge -2.5)
;latsth1 = where(lat ge -7.5 and lat lt -2.5)
;latnth1 = where(lat le 7.5 and lat gt 2.5)
;============
;lattrop1 = where(lat le 32.5 and lat ge 27.5)
;latnth1 = where(lat gt 32.5 and lat le 37.5)
;latsth1 = where(lat lt 27.5 and lat ge 22.5)

;lattrop2 = where(lat le -27.5 and lat ge -32.5)
;latnth2 = where(lat ge -27.5 and lat lt -22.5)
;latsth2 = where(lat ge -37.5 and lat lt -32.5)
;===================
;lattrop1 = where(lat le 17.5 and lat ge 12.5)
;latnth1 = where(lat gt 17.5 and lat le 22.5)
;latsth1 = where(lat lt 12.5 and lat ge 7.5)

;lattrop2 = where(lat le -12.5 and lat ge -17.5)
;latnth2 = where(lat ge -12.5 and lat lt -7.5)
;latsth2 = where(lat ge -22.5 and lat lt -17.5)
;================
;mask 20 to poles
;lattrop1 = where(lat ge -90 and lat le -20)
;lattrop2 = where(lat le 90 and lat ge 20)
;latnth1 = where(lat lt 20 and lat ge 15)
;latsth1 = where(lat le -15 and lat gt -20)
;======
;mask eq to 20
;lattrop1 = where(lat ge -20 and lat le 20)
;latnth1 = where(lat gt 20 and lat le 25)
;latsth1 = where(lat ge -25 and lat lt -20)

;==========
;sthpac mask
;lattrop1 = where(lat ge -25 and lat le -15)
;latsth1 = where(lat lt -25 and lat ge -30)
;latnth1 = where(lat gt -15 and lat le -10)
;
;lontrop1 = where(lon ge -160 and lon le -90)
;loneast1 = where(lon lt -160 and lon ge -165)
;lonwest1 = where(lon le -85 and lon gt -90)
;==========
;indian ocean (north) mask
;lattrop1 = where(lat ge -22.5 and lat le 20)
;latsth1 = where(lat lt -22.5 and lat ge -25)
;latnth1 = where(lat gt 20 and lat le 22.5)

;lontrop1 = where(lon ge 60 and lon le 80)
;lontrop2 = where(lon le -270 and lon gt -280)
;lontrop1 = [lontrop1,lontrop2]
;loneast1 = where(lon lt 60 and lon ge 55)
;lonwest1 = where(lon le -265 and lon gt -270)
;==========
;indian ocean (south) mask
;lattrop1 = where(lat ge -22.5 and lat le -12.5)
;latsth1 = where(lat lt -22.5 and lat ge -25)
;latnth1 = where(lat gt -12.5 and lat le -10)

;lontrop1 = where(lon ge 65 and lon le 80)
;lontrop2 = where(lon le -275 and lon gt -280)
;lontrop1 = [lontrop1,lontrop2]
;loneast1 = where(lon lt 65 and lon ge 60)
;lonwest1 = where(lon le -270 and lon gt -275)
;==========
;atlantic ocean (trop) mask
;lattrop1 = where(lat ge -20 and lat le 20)
;latnth1 = where(lat lt 22.5 and lat ge 20)
;latsth1 = where(lat gt -22.5 and lat le -20)

;lontrop1 = where(lon ge -52.5 and lon le -2.5)
;loneast1 = where(lon lt -52.5 and lon ge -55)
;lonwest1 = where(lon le 0 and lon gt -2.5)
;==========
;atlantic ocean (north) mask
;lattrop1 = where(lat ge 22.5 and lat le 52.5)
;latsth1 = where(lat lt 22.5 and lat ge 20)
;latnth1 = where(lat gt 52.5 and lat le 55)
;
;lontrop1 = where(lon ge -62.5 and lon le -22.5)
;loneast1 = where(lon lt -62.5 and lon ge -65)
;lonwest1 = where(lon le -20 and lon gt -22.5)
;
;verttrop1 = where(vert ge 50.0)
;verttop1  = where(vert lt 50.0 and vert ge 45)
;=============
;ars599 26022021
lattrop1 = where(lat ge -20 and lat le 0)
latnth1 = where(lat lt 5 and lat ge 0)
latsth1 = where(lat gt -25 and lat le -20)

lontrop1 = where(lon ge -100 and lon le -70)
loneast1 = where(lon lt -100 and lon ge -105)
lonwest1 = where(lon le -65 and lon gt -70)

verttrop1 = where(vert ge 50.0 and vert le 5830)
verttop1  = where(vert lt 50.0 and vert ge 55.0)
vertbom1  = where(vert gt 5830 and vert le 5840)
;=============
;1 grid point in sthn ocean

;lattrop1 = where(lat ge -56 and lat le -55)
;latsth1 = where(lat lt -56 and lat ge -57)
;latnth1 = where(lat gt -55 and lat le -54)

;lontrop1 = where(lon ge -41 and lon le -40)
;loneast1 = where(lon lt -40 and lon ge -39)
;lonwest1 = where(lon le -42 and lon gt -41)


dampcoeff = 2.315e-6 ;;5 days


;mymask[*,lattrop1,*,*] = dampcoeff  ; this corresponds to a 5 day damping timescale

alllons = [loneast1,lontrop1,lonwest1];indgen(n_elements(lon)) ;[loneast1,lontrop1,lonwest1]
for i=0,n_elements(alllons)-1 do begin
 for k=0,nvert-1 do begin
  for l=0,ntime-1 do begin
   for j=0,n_elements(lattrop1)-1 do begin
    mymask[alllons[i],lattrop1,k,l] = dampcoeff
    mymask[alllons[i],latnth1,k,l] = dampcoeff - indgen(n_elements(latnth1))*(dampcoeff/n_elements(latnth1))
    mymask[alllons[i],latsth1,k,l] = reverse(dampcoeff - indgen(n_elements(latsth1))*(dampcoeff/n_elements(latsth1)))
   endfor
  endfor  
 endfor
endfor

;===================
;;only need this if we want an east/west gradient
alllats = [latsth1,lattrop1,latnth1]
for j=0,n_elements(alllats)-1 do begin
 for k=0,nvert-1 do begin
  for l=0,ntime-1 do begin
    mymask[loneast1,alllats[j],k,l] = reverse(dampcoeff - indgen(n_elements(loneast1))*(dampcoeff/n_elements(loneast1)))
    mymask[lonwest1,alllats[j],k,l] = dampcoeff - indgen(n_elements(lonwest1))*(dampcoeff/n_elements(lonwest1))
  endfor  
 endfor
endfor
 
;===================
;;;only need this if we want an east/west gradient
latarrays = indgen(n_elements(latsth1))/double(n_elements(latsth1))
latarrayn = reverse(indgen(n_elements(latnth1))/double(n_elements(latnth1)))
for i=0,n_elements(loneast1)-1 do begin
  for j=0,n_elements(latnth1)-1 do begin
   for k=0,nvert-1 do begin
    for l=0,ntime-1 do begin
     mymask[loneast1[i],latnth1[j],k,l] = mymask[loneast1[i],latnth1[j],k,l]*latarrayn[j]
     mymask[lonwest1[i],latnth1[j],k,l] = mymask[lonwest1[i],latnth1[j],k,l]*latarrayn[j]
    endfor
 endfor  
 endfor
endfor

for i=0,n_elements(loneast1)-1 do begin
  for j=0,n_elements(latsth1)-1 do begin
   for k=0,nvert-1 do begin
    for l=0,ntime-1 do begin
     mymask[loneast1[i],latsth1[j],k,l] = mymask[loneast1[i],latsth1[j],k,l]*latarrays[j]
     mymask[lonwest1[i],latsth1[j],k,l] = mymask[lonwest1[i],latsth1[j],k,l]*latarrays[j]
   endfor
  endfor  
 endfor
endfor


 ;======================

;for i=0,n_elements(loneast1)-1 do begin ;for i=0,nlon-1 do begin
; for j=0,nvert-1 do begin
;  for k=0,ntime-1 do begin
;   for l=0,n_elements(latsth1)-1 do begin

   
; mymask[i,latnth1,j,k] = dampcoeff - indgen(n_elements(latnth1))*(dampcoeff/n_elements(latnth1))
; mymask[i,latsth1,j,k] = reverse(dampcoeff - indgen(n_elements(latsth1))*(dampcoeff/n_elements(latsth1)))

; mymask[i,latnth2,j,k] = dampcoeff - indgen(n_elements(latnth2))*(dampcoeff/n_elements(latnth2))
 ;mymask[i,latsth2,j,k] = reverse(dampcoeff - indgen(n_elements(latsth2))*(dampcoeff/n_elements(latsth2)))
; endfor
;endfor
;endfor
;mask out original land bits too
;mymask[where(mask[*,*,*] eq 0)] = 0.0

;make netcdf file
id = ncdf_create('salt_coeff_spo_3d.nc',/clobber)
xid = ncdf_dimdef(id,'xt_ocean',nlon)
yid = ncdf_dimdef(id,'yt_ocean',nlat)
zid = ncdf_dimdef(id,'st_ocean',nvert)
tid = ncdf_dimdef(id,'time',/unlimited)
vid = ncdf_vardef(id, 'coeff',[xid,yid,zid,tid],/float)
xidv = ncdf_vardef(id,'xt_ocean',[xid],/double)
yidv = ncdf_vardef(id,'yt_ocean',[yid],/double)
zidv = ncdf_vardef(id,'st_ocean',[zid],/double)
tidv = ncdf_vardef(id,'time',[tid],/double)


ncdf_attput,id,xidv,'long_name',"tcell longitude"
ncdf_attput,id,yidv,'long_name',"tcell latitude"
ncdf_attput,id,zidv,'long_name',"tcell zstar depth"
ncdf_attput,id,xidv,'units',"degrees_E"
ncdf_attput,id,yidv,'units',"degrees_N"
ncdf_attput,id,zidv,'units',"meters"
ncdf_attput,id,tidv,'units',"days since 0000-01-01 00:00"
ncdf_attput,id,xidv,'standard_name',"longitude"
ncdf_attput,id,yidv,'standard_name',"latitude"
ncdf_attput,id,tidv,'calendar_type',"NOLEAP"
ncdf_attput,id,tidv,'modulo',365.2425
ncdf_attput,id,tidv,'time_origin','01-JAN-0000 00:00:00'


ncdf_attput,id,vid,'long_name','Practical salinity'
ncdf_attput,id,vid,'standard_name','sea_water_practical_salinity'
ncdf_attput,id,vid,'units',"psu"
ncdf_attput,id,vid,'time_avg_info',"average_T1,average_T2,average_DT"
ncdf_attput,id,vid,'cell_methods',"time: mean"
ncdf_attput,id,vid,'valid_range',[-10.,100.]
ncdf_control,id,/endef

ncdf_varput,id,vid,mymask
ncdf_varput,id,xidv,lon
ncdf_varput,id,yidv,lat
ncdf_varput,id,zidv,vert
ncdf_varput,id,tidv,time

ncdf_close,id

;make netcdf file
id = ncdf_create('temp_coeff_spo_3d.nc',/clobber)
xid = ncdf_dimdef(id,'xt_ocean',nlon)
yid = ncdf_dimdef(id,'yt_ocean',nlat)
zid = ncdf_dimdef(id,'st_ocean',nvert)
tid = ncdf_dimdef(id,'time',/unlimited)
vid = ncdf_vardef(id, 'coeff',[xid,yid,zid,tid],/float)
xidv = ncdf_vardef(id,'xt_ocean',[xid],/double)
yidv = ncdf_vardef(id,'yt_ocean',[yid],/double)
zidv = ncdf_vardef(id,'st_ocean',[zid],/double)
tidv = ncdf_vardef(id,'time',[tid],/double)


ncdf_attput,id,xidv,'long_name',"tcell longitude"
ncdf_attput,id,yidv,'long_name',"tcell latitude"
ncdf_attput,id,zidv,'long_name',"tcell zstar depth"
ncdf_attput,id,xidv,'units',"degrees_E"
ncdf_attput,id,yidv,'units',"degrees_N"
ncdf_attput,id,zidv,'units',"meters"
ncdf_attput,id,tidv,'units',"days since 0000-01-01 00:00"
ncdf_attput,id,xidv,'standard_name',"longitude"
ncdf_attput,id,yidv,'standard_name',"latitude"
ncdf_attput,id,tidv,'calendar_type',"NOLEAP"
ncdf_attput,id,tidv,'modulo',365.2425
ncdf_attput,id,tidv,'time_origin','01-JAN-0000 00:00:00'


ncdf_attput,id,vid,'long_name','Potential temperature'
ncdf_attput,id,vid,'standard_name','sea_water_potential_temperature'
ncdf_attput,id,vid,'units',"degrees_K"
ncdf_attput,id,vid,'time_avg_info',"average_T1,average_T2,average_DT"
ncdf_attput,id,vid,'cell_methods',"time: mean"
ncdf_attput,id,vid,'valid_range',[-10.,500.]
ncdf_control,id,/endef

ncdf_varput,id,vid,mymask
ncdf_varput,id,xidv,lon
ncdf_varput,id,yidv,lat
ncdf_varput,id,zidv,vert
ncdf_varput,id,tidv,time

ncdf_close,id

stop
end
