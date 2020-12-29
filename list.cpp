#include <iostream>
#include <algorithm>
using namespace std;
const int maxn=100;
struct Student{
    int num,score;
    Student *next;
}student_One[maxn],student_Two[maxn];
bool cmp(Student a,Student b){
    return a.num<b.num;
}
Student *Create(Student Array[],int N){
    Student *pre,*p,*head;
    head=new Student;
    head->next=NULL;
    pre=head;
    for(int i=0;i<N;i++){
        p=new Student;
        p->num=Array[i].num;
        p->score=Array[i].score;
        p->next=NULL;
        pre->next=p;
        pre=p;
    }
    return head;
}
void Delete(Student *head,int x){
    Student* p=head->next;
    Student* pre=head;//记录现在的结点
    while(p!=NULL){
        if(p->num==x){
            pre->next=p->next;
            delete p;
            p=pre->next;//记录前一个位置的结点
        }else{
            pre=p;
            p=p->next;
        }
    }
}
// int Del_Node(pNode pHead,int back)  //删除第几个位置的
// {  
//     int i = 0;  
//     int data;  
//     pNode _node = pHead;  
//     pNode pSwap;  
//     if ((back < 1) && (NULL == _node->pNext))  
//     {  
//         printf("删除失败！\n");  
//         return 0;  
//     }  
//     while(i < back-1)  
//     {  
//         _node = _node->pNext;  
//         ++i;  
//     }  
//     pSwap = _node->pNext;  
//     data = pSwap->member;  
//     _node->pNext = _node->pNext->pNext;  
//     free(pSwap);  
//     return data;}   
//void Insert(Student *head,int pos,int x,int y){
//    Student* p=head;
//    for(int i=0;i<pos-1;i++){
//        p=p->next;
//    }
//    Student* q=new Student;
//    q->num=x;
//    q->score=y;
//    q->next=p->next;//把p的指针域赋值给q的指针域
//    p->next=q;//p的指针域成为了q的地址
//}
//Student *Merge(Student *LA, Student *LB)
//{
//    //记录两个链表的头结点
//    Student *head_A=LA;
//    Student *l = LA;
//    Student *head_B = LB;
//    //移动指针
//    LA = LA->next;
//    LB = LB->next;
//    head_A->next = NULL;
//    while (LA!=NULL&&LB!=NULL)
//    {
//        /*
//        将两个结点的数据进行比较，数据较小的结点接在头结点后面，
//        */
//        if (LA->num <LB->num)
//        {
//            head_A->next = LA;
//            head_A = LA;
//            LA = LA->next;
//        }
//        else
//        {
//            head_A->next = LB;
//            head_A = LB;
//            LB = LB->next;
//        }
//    }
//    //若其中一个链表的结点已经全接在新表中则将另一个链表的剩余结点接在新表的后面
//    if (LA)
//    {
//        head_A->next = LA;
//    }
//    if(LB)
//    {
//        head_A->next = LB;
//    }
//    delete (head_B);
//    return l;
//}
int main(){
    int N;
    cin>>N;
    for(int i=0;i<N;i++) {
        cin >> student_One[i].num >> student_One[i].score;
    }
//    for(int i=0;i<M;i++){
//        cin>>student_Two[i].num>>student_Two[i].score;
//    }
//    sort(student_One,student_One+N,cmp);
    Student* L1=Create(student_One,N);//建立链表1
//    sort(student_Two,student_Two+M,cmp);
//    Student* L2=Create(student_Two,M);//建立链表2
//    Student *L=Merge(L1,L2);
int m;
cin>>m;
Delete(L1,m);
L1=L1->next;
    while(L1!=NULL){
        cout<<L1->num<<" "<<L1->score<<endl;
        L1=L1->next;
    }
    system("pause");
}