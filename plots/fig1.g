## metapost
#set term mp solid color  latex magnification 1
set term mp  color  latex magnification 1
set out 'fig.mp'
#
set xrange [0:5]
#
set xlabel  "\\Large $\\hbar\\omega$ (eV)"
set ylabel "\\Large $|\\chi_{xxx}|$ (10$^5\\times$pm$^2$/V)" 
shg(w,x,y,z)=sqrt((w+y)**2+(x+z)**2)
scale=10.e5
f16=2645.886245/scale
f24=3704.240743/scale
f32=4815.512966/scale
f40=5873.867464/scale
p 'shg-results/16layers/shgC.sm_xxx_244_half-slab_10-nospin_scissor_0.0_Nc_66' u 1:(f16*shg($2,$3,$4,$5)) w l lt 3 lw 1 t '16-layers',\
  'shg-results/24layers/shgC.sm_xxx_244_half-slab_10-nospin_scissor_0.0_Nc_98' u 1:(f24*shg($2,$3,$4,$5)) w l lt 6 lw 1 t '24-layers',\
  'shg-results/32layers/shgC.sm_xxx_244_half-slab_10-nospin_scissor_0.0_Nc_130' u 1:(f32*shg($2,$3,$4,$5)) w l lt 1 lw 1 t '32-layers',\
  'shg-results/40layers/shgC.sm_xxx_244_half-slab_10-nospin_scissor_0.0_Nc_162' u 1:(f40*shg($2,$3,$4,$5)) w l lt 2 lw 2 t '40-layers'
