#include<iostream>
#include<bits/stdc++.h>//循环字串
using namespace std;
const int N=1e6+7;
typedef unsigned long long ull;
const ull base=23333;
char s[2*N],t[N];
ull hs[2*N],pw[N];
unordered_map<ull,bool>exist;
int main(){
    scanf("%s",s+1);
    int n=strlen(s+1),q;
    for(int i=1;i<n;i++)s[n+i]=s[i];//扩充了一倍
    pw[0]=1;
    for(int i=1;i<2*n;i++)pw[i]=pw[i-1]*base;
    for(int i=1;i<2*n;i++)hs[i]=hs[i-1]*base+s[i]-'a'+1;
    for(int i=1;i<n;i++)exist[hs[i+n-1]-hs[i-1]*pw[n]]=1;//把每一组的hs值存进来 表示为1
    scanf("%d",&q);
    while(q--){
      scanf("%s",t+1);
      int m=strlen(t+1),ans=0;;
      if(n>m){printf("0\n");continue;}
      for(int i=1;i<=m;i++)hs[i]=hs[i-1]*base+t[i]-'a'+1;
      for(int i=n;i<m;i++)if(exist.count(hs[i]-hs[i-n]*pw[n])) ans++;//如果每一组是存在的 就+1 表示转多少次
      printf("%d\n",ans);
    }
}