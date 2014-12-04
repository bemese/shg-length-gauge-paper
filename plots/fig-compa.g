## metapost
#set term mp solid color  latex magnification 1
set term mp  color  latex magnification 1
set out 'fig.mp'
#
set multiplot
set xrange [0:5]
set yrange [0:1.7]
#
set xlabel  "\\Large $\\hbar\\omega$ (eV)"
set ylabel "\\Large $|\\chi^{xxx}_{\\mathrm{full-slab}}|$ (10$^5\\times$pm$^2$/V)" 
shg(w,x,y,z)=sqrt((w+y)**2+(x+z)**2)
scale=10.e5
f16=2645.886245/scale
f24=3704.240743/scale
f32=4815.512966/scale
f40=5873.867464/scale
f48=7143.8928615/scale
f56=8202.2473595/scale
set label 1 at .2,1.6 '\Large without $\mathbf{v}^{\mathrm{nl}}$ and $\hbar\Delta=0$ eV'
set origin 0,1
set key at 4.9,1.65 spacing 1.1
p 'shg-results/32layers/shgL.sm_xxx_244_10-nospin_scissor_0.0_Nc_130' u 1:(f32*shg($2,$3,$4,$5)) w l lt 1 lw 1 t '\large 32-layers',\
  'shg-results/40layers/shgL.sm_xxx_244_10-nospin_scissor_0.0_Nc_162' u 1:(f40*shg($2,$3,$4,$5)) w l lt 2 lw 2 t '\large 40-layers',\
  'shg-results/48layers/shgL.sm_xxx_202_08-nospin_scissor_0.0_Nc_194' u 1:(f48*shg($2,$3,$4,$5)) w l lt 4 lw 1 t '\large 48-layers',\
  'shg-results/56layers/shgL.sm_xxx_202_08-nospin_scissor_0.0_Nc_226' u 1:(f56*shg($2,$3,$4,$5)) w l lt 5 lw 1 t '\large 56-layers'      

set origin .5,1.2
unset label
unset xlabel
unset ylabel
set ytics 0,.4 nomirror 
set size .5,.5        
set key at 4.9,1.55 spacing 1
p 'shg-results/16layers/shgL.sm_xxx_244_10-nospin_scissor_0.0_Nc_66'  u 1:(f16*shg($2,$3,$4,$5)) w l lt 3 lw 1 t '\large 16-layers',\
  'shg-results/24layers/shgL.sm_xxx_244_10-nospin_scissor_0.0_Nc_98'  u 1:(f24*shg($2,$3,$4,$5)) w l lt 6 lw 1 t '\large 24-layers'

