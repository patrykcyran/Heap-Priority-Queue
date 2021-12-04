#include <iostream>

using namespace std;

//Patryk Cyran gr B

class MinHeap
{
private:
    int* kopiec;
    int capacity;
    int size;

public:
    MinHeap(int c);
    MinHeap();
    bool empty();
    bool full();
    int getLeft(int i);
    int getRight(int i);
    int getParent(int i);
    int getSize();
    void setSize(int s);
    int getValue(int i);
    void setValue(int i, int x);
    void bottomUp(int i);
    void topDown(int i);
    friend ostream& operator<<(ostream& out, MinHeap& h);

    //Zadanie 2
    void insert(int x);
    int deleteMin();
    int minimum();
    void del(int i);
    void decreaseKey(int i, int x);
};

void Zadanie1();

void Zadanie2();

int main()
{
    //Zadanie 1;
    Zadanie1();

    //Zadanie 2;
    Zadanie2();
    return 0;
}

MinHeap::MinHeap(int c)
{
    capacity = c;
    size = 0;
    kopiec = new int[size];
}

MinHeap::MinHeap()
{
    capacity = 20;
    size = 11;
    int init_tab[11]{1, 2, 4, 6, 5, 4, 7, 7, 7, 9, 6};
    kopiec = new int[capacity];
    for(int i = 0; i<size;i++)
    {
        kopiec[i] = init_tab[i];
    }
}

bool MinHeap::empty()
{
    return size==0;
}

bool MinHeap::full()
{
    return size==capacity;
}
int MinHeap::getLeft(int i)
{
    return 2 * i + 1;
}
int MinHeap::getRight(int i)
{
    return 2 * i + 2;
}
int MinHeap::getParent(int i)
{
    return (i-1)/2;
}
int MinHeap::getSize()
{
    return size;
}
void MinHeap::setSize(int s)
{
    size = s;
}
int MinHeap::getValue(int i)
{
    return kopiec[i];
}
void MinHeap::setValue(int i, int x)
{
    kopiec[i] = x;
}
void MinHeap::bottomUp(int i)
{
    if(i>0)
    {
        int n = getParent(i);
        if(kopiec[n]>kopiec[i])
        {
            int pom = kopiec[i];
            kopiec[i] = kopiec[n];
            kopiec[n] = pom;
            bottomUp(n);
        }
    }
}
void MinHeap::topDown(int i)
{
    int l = getLeft(i);
    int r = getRight(i);
    int n = i;

    if(l < size && kopiec[l] < kopiec[i])
    {
        n = l;
    }
    if(r < size && kopiec[r] < kopiec[n])
    {
        n = r;
    }
    if(n!=i)
    {
        int pom = kopiec[i];
        kopiec[i] = kopiec[n];
        kopiec[n] = pom;
        topDown(n);
    }
}

ostream& operator<<(ostream& out, MinHeap& h)
{
    for(int i = 0; i < h.getSize(); i++)
    {
        out << h.kopiec[i] << " ";
    }
    out << "\n";
    return out;
}

void Zadanie1()
{
    cout << "Zadanie1\n\n";

    MinHeap h;
    cout << "h.empty() [0]: " << h.empty() << "\n";
    cout << "h.full() [0]: " << h.full() << "\n";
    cout << h;
    cout << "h.setValue(4,10)"; h.setValue(4,10); cout << "\n";
    cout << h;
    cout << "h.bottomUp(size)"; h.bottomUp(h.getSize()-1); cout << "\n";
    cout << h;
    cout << "h.setValue(2,8)"; h.setValue(2,8); cout << "\n";
    cout << h;
    cout << "h.topDown(2)"; h.topDown(2); cout << "\n";
    cout << h;
    cout << "h.setValue(0,5)"; h.setValue(0,5); cout << "\n";
    cout << h;
    cout << "h.topDown(0)"; h.topDown(0); cout << "\n";
    cout << h;
}

//Zadanie 2
void MinHeap::insert(int x)
{
    if(size < capacity)
    {
        kopiec[size] = x;
        bottomUp(size);
        size++;
    }
    else
    {
        cout<<"\nKopiec jest pelny\n";
    }
}

int MinHeap::deleteMin()
{
    if(size>0)
    {
        int x = kopiec[0];
        kopiec[0] = kopiec[size-1];
        size--;
        topDown(0);
        return x;
    }
    return -1;
}

int MinHeap::minimum()
{
    if (size > 0)
    {
        return kopiec[0];
    }
    return -1;
}

void MinHeap::del(int i)
{
    if(size>0)
    {
        size--;
        int pom = kopiec[i];
        kopiec[i] = kopiec[size];
        kopiec[size] = pom;
        topDown(i);
        bottomUp(i);
    }
    else
    {
        cout << "\nKopiec nie istnieje\n";
    }
}


void MinHeap::decreaseKey(int i, int x)
{
    if(i < size)
    {
        kopiec[i] = x;
        bottomUp(i);
    }
    else
    {
        cout << "\nNie ma takiej pozycji\n";
    }
}

void Zadanie2()
{
    cout << "\n\nZadanie 2\n";

    int c = 15;
    MinHeap h(c);
    cout << "h.insert(8)"; h.insert(8); cout << "\n";
    cout << h;
    cout << "h.insert(2)"; h.insert(2); cout << "\n";
    cout << "h.insert(1)"; h.insert(1); cout << "\n";
    cout << "h.insert(7)"; h.insert(7); cout << "\n";
    cout << "h.insert(9)"; h.insert(9); cout << "\n";
    cout << "h.insert(4)"; h.insert(4); cout << "\n";
    cout << "h.insert(3)"; h.insert(3); cout << "\n";
    cout << h;
    cout << "h.deleteMin() [1]: " << h.deleteMin() << "\n";
    cout << h;
    cout << "h.insert(3)"; h.insert(5); cout << "\n";
    cout << "h.insert(3)"; h.insert(14); cout << "\n";
    cout << "h.insert(3)"; h.insert(12); cout << "\n";
    cout << h;
    cout << "h.del(3)"; h.del(3); cout << "\n";
    cout << h;
    cout << "h.decreaseKey(3,1)"; h.decreaseKey(3,1); cout << "\n";
    cout << h;
}