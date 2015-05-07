p=cbind(sample(rnorm(20),20),sample(rnorm(20),20))


ellipseplot=function(Xc,Yc,a,b,angle,...){
  t<-seq(from=0,to=2*pi, length.out=1000)
  x=Xc+a*cos(t)*cos(angle)-b*sin(t)*sin(angle)
  y=Yc+a*cos(t)*sin(angle)+b*sin(t)*cos(angle)
  p=cbind(x,y)
  lines(p,type="l",...)
}

hyperbolaplot=function(Xc,Yc,a,b,angle,...){
  t<-seq(from=-3,to=3, length.out=500)
  x=Xc+a*cosh(t)*cos(angle)-b*sinh(t)*sin(angle)
  y=Yc+a*cosh(t)*sin(angle)+b*sinh(t)*cos(angle)
  p1=cbind(x,y)
  
  x=Xc-a*cosh(t)*cos(angle)-b*sinh(t)*sin(angle)
  y=Yc-a*cosh(t)*sin(angle)+b*sinh(t)*cos(angle)
  p2=cbind(x,y)
  
  

  lines(p1,type="l",...)
  lines(p2,type="l",...)
}

eucdist=function(x,y){sqrt(sum((x-y)^2))}

midpoint=function(x,y){(x+y)/2}

angle=function(x,y){atan({y[2]-x[2]}/{y[1]-x[1]})}

ellipseplotf=function(x,y,l){
  
  mid=(x+y)/2
  angle=atan({y[2]-x[2]}/{y[1]-x[1]})
  c=sqrt(sum((x-y)^2))
  
  a=l/2
  if(a>c){ 
  b=sqrt(a^2-c^2)
  
  
  
  ellipseplot(mid[1],mid[2],a,b,angle)}
  
}

hyperbolaplotf=function(x,y,l){
  
  mid=(x+y)/2
  angle=atan({y[2]-x[2]}/{y[1]-x[1]})
  c=sqrt(sum((x-y)^2))
  
  a=l/2
  b=sqrt(c^2+a^2)
  
  
  
  hyperbolaplot(mid[1],mid[2],a,b,angle)
  mid
}

dist=matrix(1:400,20,20)

for(i in 1:20){
  for(j in 1:20){
    dist[i,j]=eucdist(p[i,],p[j,])
  }
}



plotelps=function(p,v){
  s=nrow(p)
  
  a=rep(1:s,s)
  b=NULL;for(i in 1:s){b=c(b,rep(i,s))}
  l=cbind(b,a)
  print(1)
  dist=1:{s*s}
  for(i in 1:s){
    for(j in 1:s){
      dist[20*{i-1}+j]=eucdist(p[i,],p[j,])
    }
  }
  
  odist=order(dist)
  print(2)
  
  i=1
  
  while(dist[odist[i]]==0) i=i+1
  k=i
  print(i)
    
  while(dist[odist[i]]>0&dist[odist[i]]<v){
    ellipseplotf(p[l[odist[i],][1],],p[l[odist[i],][2],],2.1*v)
         
  }

}


  
