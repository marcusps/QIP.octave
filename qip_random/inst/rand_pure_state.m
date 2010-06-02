## -*- mode: octave -*-
## Copyright (C) 2010   Marcus P da Silva http://github.com/marcusps
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, see <http://www.gnu.org/licenses/>.

function v = rand_pure_state(n)

% RAND_PURE_STATE   Random pure state
% requires: nothing
% author: Marcus da Silva
%
%    V = rand_pure_state(N) returns a random normalized complex-valued
%    column vector with dimension N, distributed according to the 
%    Fubini-Study measure.
%
%    See also: randn, orth
%
%   Copyright (C) 2010   Marcus P da Silva  http://github.com/marcusps
% 
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

v = randn(n,1)+sqrt(-1)*randn(n,1);
v = v/sqrt(v'*v);

