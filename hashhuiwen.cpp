#include<iostream>//回文串
#include<string.h>
using namespace std;
typedef unsigned long long ull;
const ull base=2333;
const int N=1e6+7;
char s[N];
ull hs[N],_hs[N],pw[N];//Pw求阶数
int main(){
    scanf("%s",s+1);
    int n=strlen(s+1),q;
    pw[0]=1;//pw是阶数 很显然 第一位阶数是1
    for(int i=1;i<=n;i++)pw[i]=pw[i-1]*base;//依次求阶数 根据后一位求前一位
    for(int i=1;i<=n;i++){
        hs[i]=hs[i-1]*base+s[i]-'a'+1;//前一位都是由后一位给出
        _hs[i]=hs[i-1]*base+s[n-i+1]-'a'+1;//反向hash值
    }
    scanf("%d",&q);
    while(q--){
        int l,r;
        scanf("%d %d",&l,&r);
        if(hs[r]-hs[l-1]*pw[r-l+1]==_hs[n-l+1]-_hs[n-r]*pw[r-l+1])//hs[r]是1-r的hs值是多少 那么减去1到l的hs值就是l到r的hs值 同理 反向的也可以算出来
        printf("yes");
        else printf("no");
    }
}