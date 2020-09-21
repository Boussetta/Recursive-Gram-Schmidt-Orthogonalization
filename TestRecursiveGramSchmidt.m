function TestRecursiveGramSchmidt
    
    function plotVector3(V,h,C)
        % a function to plot a vector V on a figure given by handle h
        %C specifies the line properties
        figure(h);
        V = V(:);
        V = V / norm(V);
        plot3([0,V(1,1)],[0,V(2,1)],[0,V(3,1)],C,'linewidth',1.5);
    end


M = RecursiveGramSchmidt (3);

h=figure;hold on
for i=1:3
    plotVector3(M(:,i),h,'r--o');
end

end
