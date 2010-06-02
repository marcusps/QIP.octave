function rho = rand_mixed_state(d)

% RAND_MIXED_STATE  Random density matrix
% author: Marcus da Silva
% requires: rand_unitary
%
%   M = rand_mixed_state(D) returns a D by D hermitian matrix
%   D with unity trace.
%
%   The matrix is generated as follows: the eigenvalues are
%   randomly chosen from a uniform distribution on [0,1], and the
%   diagonalization transformation is chosen from the Haar
%   distribution of unitaries. The trace is then normalized to be 1.
% 
%   See also: rand_unitary
%
%   Copyright (C) 2010   Marcus P da Silva   <marcus.ps+github@gmail.com>
% 
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

%  Copyright (C) 2010   Marcus P da Silva   <marcus.ps+github@gmail.com>
% 
%  This program is free software; you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation; either version 3 of the License, or
%  (at your option) any later version.
% 
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
% 
%  You should have received a copy of the GNU General Public License
%  along with this program; if not, see <http://www.gnu.org/licenses/>.

u = rand_unitary_mat(d);
e = rand(1,d);
e = e/sum(e);
rho = u*diag(e)*u';
