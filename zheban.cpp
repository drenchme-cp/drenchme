#include <stdio.h>

int main() {
    int n;
    int k;
    int numbers[1000001];
    int m;
    int i;
    int flag=0;
    // 反复读入数字和查找数字的数量
    while (scanf("%d%d", &n, &k) != EOF) {
        
        // 读入给定的数字
        for (i = 0; i < n; i++) {
            scanf("%d", &numbers[i]);
        }

        for (int j = 0; j < k; j++) {
            // 读入待查找的数字，
            scanf("%d", &m);

            // 请在下面完成查找读入数字的功能
               int left=0,right=n-1;
                int mid;
            while(left<=right){
                mid=(left+right)/2;
                if(numbers[mid]==m)
                {
                   flag=1;
                   break;
                }
                if(numbers[mid]<m)
                {
                    left=mid+1;
                }
                else if(numbers[mid]>m)
                {
                    right=mid-1;
            }
        }
        }

    }
    if(flag)
    printf("yes");
    else
        printf("no");
    return 0;
}