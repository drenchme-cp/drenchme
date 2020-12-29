#include<iostream>//自动序列机就是指的一个二维数组 Next[a][b]存的是从字符串第a位开始距离第a位最近的b字符  也就是说第二维存的是ASCII码
#include<string.h>//该题是问A复制几次才使得B是A的子序列
using namespace std;
const int N=1e5+7;
int Next[N][26];
char A[N],B[N];
int main(){
    while(scanf("%s %s",A+1,B+1)!=EOF){
        int lena=strlen(A+1),lenb=strlen(B+1);
        for(int i=0;i<26;i++) Next[lena+1][26]=0;
        for(int i=lena;i>=1;i--){
            for(int j=0;j<26;j++)Next[i][j]=Next[i+1][j];
            // Next[i][A[i]-'a']=i;//当前位置距离A[i]最近
        }
        int ans=1,now=1,flag=1,i=1;//ans初始化为1 now为A串当前位置 flag=0表示无解
        while(i<lenb){//顺序遍历B串 在A串中找到每一位对应字符
            if(Next[now][B[i]-'a']){now=Next[now][B[i]-'a']+1;i++;}//+1表示不能重复用
            else{
                if(now==1){flag=0;break;}//=1表示在第一位都没有 那就break了 因为是重复找 如果重新在第1位都找不到 显然以后也再也找不到了
                ans++;//否则 加一个新的A串
                now=1;
            }
        }
        if(flag)printf("-1\n");
        else printf("%d\n",ans);
        }
}