#include<iostream>
#include<string.h>
// #include<bits/stdc++.h>
using namespace std;
const int N=1e6+7;
int Next[N],n,m;
char s[N],t[N];
void getNext(){
    int j=0,k=-1;
    Next[0]=-1;
    while(j<m-1)//根据第j位置求j+1位 所以j=m-2时就可以求出next[m-1]的值{
        if(k==-1||t[j]==t[k]){
            Next[++j]=++k;
        }else k=Next[k];//根据前后两端完全s相同的信息 在前一段0~next[k]找满足第二种情况的k
    }
int kmp(){
    getNext();
    int i=0,j=0,ans=0;
    while(i<n&&j<m){
        if(j==-1||s[i]==t[j]){//果想找多次 就当作是失配的情况 代码如下
        // if(j+1==m){//表示找到了一个 这个时候需要重新找
        // ans++;
        // j=Next[j];}
        // else{
            ++i;
            ++j;
        }
        else j=Next[j];
    }
    // if(j==m) printf("yes");
    // else printf("no");
    return i-j;//找到出现的第一个位置
}
int main(){
    scanf("%s %s",s,t);
    n=strlen(s),m=strlen(t);
    cout<<kmp();
    system("pause");
}