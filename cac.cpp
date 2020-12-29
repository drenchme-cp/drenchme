#include<iostream>
#include<string>
#include<cassert>
using std::cin;
using std::cout;
using std::endl;
using std::string;
template<typename Type> class Stack {
private:
    Type *elements;
    int max_size, top_index;
public:
    Stack(int length_input) {
        elements = new Type(length_input);
        max_size = length_input;
        top_index = -1;
    }
    ~Stack() {
        delete[] elements;
    }
    bool push(const Type &element) {
        if(top_index > max_size - 1){
            return false;
        }
        top_index += 1;
        elements[top_index] = element;
        return true;
    }
    bool pop() {
        if(top_index < 0){
            return false;
        }
        top_index--;
        return true;
    }
    Type top() {
        assert(top_index >= 0);
        return elements[top_index];
    }
    bool empty() {
        return (top_index < 0);
    }
};
bool precede(char a, char b) {
     switch(a)
    {
        case '*':
        case '/':
        {
            if(b == '*' || b == '/') return false;
            return true;
        }
        default: return false;
    }
}
float operate(char theda, float a, float b) {
    if( theda == '+'){
        return a + b;
    }else if(theda == '-'){
        return a - b;
    }else if(theda == '*'){
        return a * b;
    }else{
        return (float)(a / b);
    }
}
void calc(Stack<float> &numbers, Stack<char> &operators) {
    float a  = numbers.top();
    numbers.pop();
 
    float b = numbers.top();
    numbers.pop();
 
    numbers.push( operate(operators.top(), a, b));
    operators.pop();
}
int main() {
    int n = 0;
    cin >> n;
    Stack<float> numbers(n);
    Stack<char> operators(n);
    string buffer;
    cin >> buffer;
    int i = 0;
    while( i < n ){
        if( isdigit(buffer[i])){
            numbers.push(buffer[i] - '0');
            i++;
        }else{
            if( operators.empty() || precede( buffer[i], operators.top())){
                operators.push(buffer[i]);
                i += 1;
            }else{
                calc(numbers, operators);
            }
        }
    }
    while( !operators.empty()){
        calc(numbers, operators);
    }
    cout << numbers.top() << endl;
    system("pause");
    return 0;
}