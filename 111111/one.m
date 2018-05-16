
a=mean(magic1);
a=repmat(a,19020,1);
Z=magic1-a;
b=Z'*Z/19020;
 c=0;
for i=1:19020
    a=Z(i,:)'* Z(i,:);
    c=a+c;
end
d=c/19020;
e=Z(:,1)'*Z(:,2)/(sqrtm(Z(:,1)'*Z(:,1))*sqrtm(Z(:,2)'*Z(:,2)));
f=scatter(Z(:,1),Z(:,2),'k')

x=min(magic1(:,1)):0.01:max(magic1(:,1));
u=mean(magic1(:,1));
v=var(magic1(:,1));
norm=normpdf(x,u,v);
figure('Position',[50,50,600,500],'Name','Normal PDF',...
    'Color',[1,1,1]);
plot(x,norm,'r-','LineWidth',3)
set(gca,'FontSize',10,'TickDir','out','TickLength',[0.02,0.02])
xlabel('X','FontSize',15);ylabel('PDF','FontSize',15)

h=0;
j=0;
k=0;
l=0;
for i=1:10
  g=var(magic1(:,i));
  if h>g
      h=g;
  else h=h;
  end
end
for i=1:10
  g=var(magic1(:,i));
  if j<g
      j=g;
  else j=j;
  end
end
for i=1:10
  g=cov(magic1(:,i));
  if k>g
      k=g;
  else k=k;
  end
end
for i=1:10
  g=cov(magic1(:,i));
  if l<g
      l=g;
  else l=l;
  end
end