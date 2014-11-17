## metapost
#set term mp solid color  latex magnification 1
set term mp  color  latex magnification 1
set out 'fig.mp'
#
set xrange [0:5]
#set yrange [0:1.6]
#
set ylabel "\\Large $|\\chi_{xxx}|$ (10$^5\\times$pm$^2$/V)" 
shg(w,x,y,z)=sqrt((w+y)**2+(x+z)**2)
scale=10.e5
f16=2645.886245/scale
f24=3704.240743/scale
f32=4815.512966/scale
f40=5873.867464/scale
#
set xlabel "\\Large   $\\hbar\\omega$ (eV)"
set label 1 at 3,.8 'half-slab $\hbar\sigma=0.5$'
p  'shg-results/32layers/shgC.vnl.sm_xxx_244_half-slab_10-nospin_scissor_0.5_Nc_130' u 1:(f32*shg($2,$3,$4,$5)) w l lt 1 lw 1 t 'with $\mathbf{v}^\mathrm{nl}$',\
   'shg-results/32layers/shgC.sm_xxx_244_half-slab_10-nospin_scissor_0.5_Nc_130' u 1:(f32*shg($2,$3,$4,$5)) w l lt 2 lw 2 t 'without $\mathbf{v}^\mathrm{nl}$'
