function m = ketbra( s1, s2, d )
% NORMALIZE
% author: Marcus P. da Silva
% requires: qip.ket, qip.bra
%
%   KETBRA(v) the rank 1 operator which maps the basis element with
%   binary representation s2 to the vector basis element with
%   binary representation s1.
%
%   Copyright (C) 2010  Marcus P. da Silva  http://github.com/marcusps
% 
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

%  Copyright (C) 2010  Marcus P. da Silva  http://github.com/marcusps
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
%  along with this program; if not, see
%  <http://www.gnu.org/licenses/>.
m=[];
if ischar(s1) & ischar(s2),
  m = ket(s1)*bra(s2);
elseif isnumeric(s1) & isnumeric(s2) & s1>=0 & s2>=0 & s1<d & s2<d,
  m = ket(s1,d)*bra(s2,d);
end