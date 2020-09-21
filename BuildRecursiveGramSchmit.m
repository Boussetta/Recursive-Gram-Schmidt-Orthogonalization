function new = BuildRecursiveGramSchmit(old,N)
%BUILDRECURSIVEGRAMSCHMIT Summary of this function goes here
% input : 
%   * N dimensionality of the basis
%   * old : N x k matrix with orthonormal vectors
% output : 
%   * new : N x k+1 matrix with orthonormal vectors

% st = dbstack;
% namestr = st.name;
% disp (namestr);

if isequal (size(old, 2), N)
    new = old;
    return;
end

e = GenerateOrthonormalUnitVector (old, N);
new = [old e];
new = BuildRecursiveGramSchmit(new,N);

end

