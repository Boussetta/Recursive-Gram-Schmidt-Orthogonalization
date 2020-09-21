function e = GenerateOrthonormalUnitVector(Orth,N)
%GENERATEORTHONORMALUNITVECTOR Summary of this function goes here
% input : 
%   * N dimensionality of the basis
%   * Orth Normalized base
% output : 
%   * e : N x 1 arbitrary unit vector

% st = dbstack;
% namestr = st.name;
% disp (namestr);

e = zeros ([N 1]);
while isequal (e, zeros ([N 1]))
    e = GenerateUnitVector(N);
    for i = 1:1:size (Orth, 2)
        e = e - proj (Orth (:, i), e);
    end
    e = e / norm (e);
end

end