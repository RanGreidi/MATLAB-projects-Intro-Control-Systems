disp('316309285')

%% question 1
A=3*2^4;
disp('1.1: ')
disp(A)

A=(3*2)^4;
disp('1.2: ')
disp(A)

A=3-2^4;
disp('1.3: ')
disp(A)

A=3^4-3;
disp('1.4: ')
disp(A)

A=8/2^4;
disp('1.5: ')
disp(A)

A=2^4\8;
disp('1.6: ')
disp(A)

A=8^4/2;
disp('1.7: ')
disp(A)

%% question 2
x=[3 4 7 11]
x=3:8
x= 8:-1:0
xx=[8 7 6 5 4 3 2 1 0];
xx
x=linspace(0,1,11)
x=0:0.1:1
y=linspace(0,1);
length(x)
length(y)
size(x)
size(y)
y(3)
y(1:12)
y([3 6 9 12])
x'
z=[1+2j 4-3j]
z.'
3*[1 2 5]

%% question 3
A=[3 1 5; 7 4 2; 7 6 8];
b=[1;2;3];
C=[1 0 0];

disp(inv(A))
disp(A')
disp(A*b)
disp(b'*A)
disp(A'*b)

Ct=[b A*b (A^2)*b]; 
Ot=[C;C*A;C*(A^2)];
disp("e to the power of A: "+ newline)
disp(expm(A))
disp("rank Ot: "+rank(Ot))
disp("rank Ct: "+rank(Ct))
disp("Eigen-values of A: ")
disp(eig(A))

disp("Eigen-vectors of A: ")
[V,D] = eig(A);
disp('vecotr 1')
disp(V([1 2 3],1))
disp('vecotr 2')
disp(V([1 2 3],2))
disp('vecotr 3')
disp(V([1 2 3],3))


disp("Eigen-values of Ct: ")
disp(eig(Ct))
disp("Eigen-vectors of CT: ")
[V,D] = eig(Ct);
disp('vecotr 1')
disp(V([1 2 3],1))
disp('vecotr 2')
disp(V([1 2 3],2))
disp('vecotr 3')
disp(V([1 2 3],3))


disp("Eigen-values of Ot: ")
disp(eig(Ot))

disp("Eigen-vectors of OT: ")
[V,D] = eig(Ot);
disp('vecotr 1')
disp(V([1 2 3],1))
disp('vecotr 2')
disp(V([1 2 3],2))
disp('vecotr 3')
disp(V([1 2 3],3))

disp('piecewise mult: ')
disp(Ot.*Ct)

%% question 5
x=-3:0.001:3;
y=x.^6-12*(x.^4)+39*(x.^2)+2*x-28;


p=[1 0 -12 0 39 2 -28];
disp('roots are: ')
disp(roots(p))

mins=islocalmin(y); %bolinal of the mins value
disp('the minimus are(left side is x axis, right is y): ')
k=find(mins); % finds all indexes of minimus in y vector, in our case we have three: 599,2975,5387
disp([x(k(1)) y(k(1));x(k(2)) y(k(2));x(k(3)) y(k(3))])
minimus_for_plot_y=[y(k(1)) y(k(2)) y(k(3))];
minimus_for_plot_x=[x(k(1)) x(k(2)) x(k(3))];
plot(x,y,minimus_for_plot_x,minimus_for_plot_y,'r*')    

%% question 4
disp('replacing zeros with 298')
A=[1 2 4 0; 4 0 1 89]  % checking the func Replace
disp(Replace(A,0,298))
disp('checking Orthogonal: ')
B=[1 0; 0 1]            %checkung the func Ortho
Ortho(B)
function x =Ortho(A)
    if A'==inv(A)
        x=1;
    else
        x=0;
    end     
end
function temp = Replace(A,u,v)
    [rows,columns] = size(A);
    temp=zeros(rows,columns);
    for i=1:rows
        for j=1:columns
            if A(i,j)==u
                temp(i,j)=v; 
            else
                temp(i,j)=A(i,j);
            end    
        end
    end
end
        


