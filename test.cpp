#include <iostream>
#include <cstring>
using std::cin;
using std::cout;
using std::endl;

class Graph {
private:
    int **arr;
    int n;
public:
    Graph(int len) {
        n=len;
        arr=new int *[n];
        for(int i=0;i<n;i++){
            arr[i]=new int[i];
            memset(arr[i],0,sizeof(int)*n);
        }
    }
    ~Graph() {
        for(int i=0;i<n;i++){
            delete[] arr[i];
        }
        delete[] arr;
    }
    void insert(int x,int y,int a){
        if(a==0){
        arr[x][y]=1;
    }if(a==1){
            arr[y][x]=1;
        }
    void output(){
        for(int i=0;i<n;i++){
            for(int j=0;j<n;j++){
                cout<<arr[i][j];
                if(j<n)
                    cout<<" ";
            }
            cout<<endl;
        }
    }
    
};
int main() {
    int n,m,a,x,y;
    cin>>n>>m;
    Graph graph(n);
    for(int i=0;i<m;i++){
        cin>>a>>x>>y;
        graph.insert(x,y,a);
    }
    graph.output();
    return 0;
}