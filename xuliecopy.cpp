// #include<bits/stdc++.h>//字串复制几遍能成为主串的子序列
// using namespace std;
// const int N=1e6+7;
// int Next[N][26];
// char s[N],t[N];
// int main(){
//     int n,q;
//     scanf("%s",s+1);//从下标1开始读入
//     n=strlen(s+1);//计算长度也要从+1开始
//     for(int i=n;i>=1;i--){
//         for(int j=0;j<26;j++) Next[i][j]=Next[i+1][j];//继承后一位的结果
//         Next[i][s[i]-'a']=i;//当前位保存的字符离自己最近    
//     }
//     scanf("%d",&q);
//     while(q--){
//         scanf("%s",t+1);
//         int len=strlen(t+1),now=1;//now表示到了主串的第几个字符
//         for(int i=1;i<len;i++){//把t拆成了Len个子询问
//             now=Next[now][t[i]-'a'];//询问距离S串now位置最近的t[i]在哪里
//             if(!now)
//             break;//说明找不到
//             now++;//找到后now+1 因为同一个字符不能重复使用
//         }
//         if(!now)
//         printf("no");//看最后now是否为0
//         else printf("yes");
//     }
// }
#include<stdio.h>
#include<iostream>
int main(){
    int a,b,c;
    scanf("%d-%d-%d",&a,&b,&c);
    if((a%100!=0&&a%4==0)||a%400==0){//进入闰年的判断
        if(b==1||b==3||b==5||b==7||b==8||b==10||b==12){
            if(c<=0||c>31){
                printf("NO");
            }
            else{
                printf("YES");
            }
        }else if(b==4||b==6||b==9||b==11){
            if(c<=0||c>30){
                printf("NO");
            }else{
                printf("YES");
            }
        }else if(b==2){
            if(b<=0||b>29){
                printf("NO");
            }else{
                printf("YES");
            }
        }
         else
            {
                printf("NO");
        }   
    }
    else if(a%400!=0||(a%4!=0)){
        if(b==1||b==3||b==5||b==7||b==8||b==10||b==12){
            if(c<=0||c>31){
                printf("NO");
            }
            else{
                printf("YES");
            }
        }else if(b==4||b==6||b==9||b==11){
            if(c<=0||c>30){
                printf("NO");
            }else{
                printf("YES");
            }
        }else if(b==2){
            if(b<=0||b>28){
                printf("NO");
            }else{
                printf("YES");
            }
        }
        else {
            printf("NO");
             }
    }
        system("pause");
}