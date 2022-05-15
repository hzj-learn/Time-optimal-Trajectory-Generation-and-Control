% ---------------------------------------------------------------------
% Package:    TopiCo (https://github.com/AIS-Bonn/TopiCo)
% Version:    2021-03-18 12:09:55
% Maintainer: Marius Beul (mbeul@ais.uni-bonn.de)
% License:    BSD
% ---------------------------------------------------------------------

% Software License Agreement (BSD License)
% Copyright (c) 2021, Computer Science Institute VI, University of Bonn
% All rights reserved.
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions
% are met:
% 
% * Redistributions of source code must retain the above copyright
%   notice, this list of conditions and the following disclaimer.
% * Redistributions in binary form must reproduce the above
%   copyright notice, this list of conditions and the following
%   disclaimer in the documentation and/or other materials provided
%   with the distribution.
% * Neither the name of University of Bonn, Computer Science Institute
%   VI nor the names of its contributors may be used to endorse or
%   promote products derived from this software without specific
%   prior written permission.
% 
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
% "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
% LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
% FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
% COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
% INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
% BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
% LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
% CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
% LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
% ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
% POSSIBILITY OF SUCH DAMAGE.
%% --------------------------------------------------------------------

function [t] = abc_O_AP(P_init,V_init,A_init,P_wayp,~,A_wayp,~,~,A_max,~,J_max,J_min) %#codegen
% Generated on 28-Aug-2019 17:25:45
coder.inline('default');

l2 = A_init.^2;
l3 = A_init.^3;
l5 = A_max.^2;
l6 = A_max.^3;
l8 = A_wayp.^2;
l9 = A_wayp.^3;
l10 = J_min.^2;
l11 = J_max.^2;
l12 = V_init.^2;
l13 = 1.0./A_max;
l14 = 1.0./J_min;
l15 = 1.0./J_max;
l16 = A_max.*A_wayp.*J_max.*6.0;
l17 = J_min.*J_max.*V_init.*6.0;
l18 = sqrt(3.0);
l4 = l2.^2;
l7 = l5.^2;
l19 = J_min.*l2.*3.0;
l20 = J_min.*l5.*3.0;
l21 = J_max.*l5.*6.0;
l26 = A_max.*l9.*l11.*4.0;
l27 = A_init.*A_max.*J_max.*V_init.*l10.*2.4e+1;
l28 = A_max.*l3.*l10.*8.0;
l30 = A_wayp.*l6.*l11.*1.2e+1;
l31 = A_max.*P_init.*l10.*l11.*2.4e+1;
l32 = A_max.*P_wayp.*l10.*l11.*2.4e+1;
l33 = J_max.*V_init.*l2.*l10.*1.2e+1;
l34 = J_max.*V_init.*l5.*l10.*1.2e+1;
l35 = l2.*l5.*l10.*6.0;
l41 = l5.*l8.*l11.*1.2e+1;
l42 = l10.*l11.*l12.*1.2e+1;
l22 = l7.*l10;
l23 = l4.*l10.*3.0;
l24 = l7.*l11.*4.0;
l29 = -l26;
l36 = -l28;
l37 = -l30;
l38 = -l31;
l39 = -l33;
l40 = -l34;
l25 = -l22;
l43 = l23+l24+l25+l27+l29+l32+l35+l36+l37+l38+l39+l40+l41+l42;
l44 = sqrt(complex(l43));
l45 = l18.*l44;
t2 = [l13.*l14.*l15.*(l16+l17-l19+l20-l21+l45).*(-1.0./6.0);l13.*l14.*l15.*(l16+l17-l19+l20-l21-l45).*(-1.0./6.0)];

l2 = -A_wayp;
l3 = 1.0./J_min;
l4 = A_max+l2;
l5 = l3.*l4;
l6 = -l5;
t3 = [l6;l6];

l2 = -A_max;
l3 = 1.0./J_max;
l4 = A_init+l2;
l5 = l3.*l4;
l6 = -l5;
t1 = [l6;l6];

t7 = [0.0;0.0];

t6 = [0.0;0.0];

t5 = [0.0;0.0];

t4 = [0.0;0.0];

t = [t1, t2, t3, t4, t5, t6, t7];

end
