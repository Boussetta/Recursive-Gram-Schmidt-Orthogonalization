function e = GenerateUnitVector(N)
%GENERATEUNITVECTOR Summary of this function goes here
% input : 
%   * N dimensionality of the basis
% output : 
%   * e : N x 1 arbitrary unit vector

% st = dbstack;
% namestr = st.name;
% disp (namestr);

assert(N>=2,'The input matrix must include more than one vector.');

u = rand ([N 1]);
e = u / norm (u);
end

