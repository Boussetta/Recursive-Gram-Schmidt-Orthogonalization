function Orth = RecursiveGramSchmidt(N)
%RECURSIVEGRAMSCHMIDT Summary of this function goes here
% input : 
%   * N dimensionality of the basis
% output : 
%   * ortho : N x N matrix whose columns contain a set of orthogonal
%   normalized unit vectors

% st = dbstack;
% namestr = st.name;
% disp (namestr);

assert(N>=2,'The input matrix must include more than one vector.');

e = GenerateUnitVector (N);
Orth = e;

Orth = BuildRecursiveGramSchmit (Orth, N);

end

