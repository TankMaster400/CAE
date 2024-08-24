clear variables;
clc;
%set parameters

%springs
set_param('CAE_5_2_WZ/Translational Spring','spr_rate','10000');
set_param('CAE_5_2_WZ/Translational Spring1','spr_rate','10000');
set_param('CAE_5_2_WZ/Translational Spring2','spr_rate','10000');
%dampers
set_param('CAE_5_2_WZ/Translational Damper','D','10');
set_param('CAE_5_2_WZ/Translational Damper1','D','10');
set_param('CAE_5_2_WZ/Translational Damper2','D','10');
%masses
set_param('CAE_5_2_WZ/Mass','mass','70');
set_param('CAE_5_2_WZ/Mass1','mass','70');