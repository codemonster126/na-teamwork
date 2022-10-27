%%
% 14.
format long
x = 3;
a = [3 0 -2 0 1 7];
b = a(1);
i = 2;
while (i <= 6)
	b = b * x + a(i);
	i = i + 1;
end
str=['p(x)在x=3处的值为：' num2str(b)];
disp(str);



%% 
%15.
format long
x0=1;
a = zeros(1,6);
a(1)=x0;
i=1;
while ( i<=6 )
    a(i+1)=1/(1+a(i));  
    i=i+1;
end
x5=a(6);   %求得由递推公式得出的x5
R=abs(x5-(sqrt(5)-1)/2);   % 求得x5与x的余数
n=0;   %n为有效数字位数的绝对值
while(R > 0.5*log10(n))
    n=n-1;
end
n=abs(n);
str=['x5有' num2str(n) '位有效数字/。'];
disp(str);

%%
% 16.
%（1）
fun1=@(x) exp(x);
result1=integral(fun1,0,1/2);
result1
%（2）
h = 1/4;
fun1=@(x) exp(x);
temp=0;
for i=1:2
    temp=(h/2)*(fun1((i-1)*h)+fun1(i*h))+temp;
end
result2=temp;
result2
%(3)
b=1/2;
a=0;
c=(a+b)/2;
f=@(x) exp(x);
t1=((b-a)/2)*(f(a)+f(b));
t2=((b-a)/4)*(f(a)+2*f(c)+f(b));
w=1/3;
S1=(4/3)*t2-(1/3)*t1;
S1

%%
%17
format long
w=7/25;
x0=1;
a = zeros(1,6);
a(1)=x0;
i=1;
while ( i<=6 )
    a(i+1)=w*a(i)+(1-w)*(1/(1+a(i)));
    str=['X' num2str(i) '=' num2str(a(i+1),9)];
    disp(str);
    i=i+1;
end

