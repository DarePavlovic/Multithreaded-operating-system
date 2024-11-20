#include "matricaModif.hpp"
#include "../h/syscall_cpp.hpp"
#include "printing.hpp"
class Matrica: public Thread {
    void mnozenjeM(void* arg);
public:
    Matrica(int* row, int m, int* buffer, Semaphore* mutex, Semaphore* doneR):row(row),m(m), buff(buffer), mutex(mutex)
    , doneRows(doneR) {}

    void run() override {
        mnozenjeM(nullptr);
    }
private:
    int* row;
    int m;
    int* buff;
    Semaphore* mutex;
    Semaphore* doneRows;
};

void Matrica::mnozenjeM(void *arg) {
    int sum=0;
    for(int i=0;i<this->m;i++)
    {
        sum+=row[i];
    }
    printString("Sum of row is: ");
    printInt(sum);
    printString("\n");
    mutex->wait();
    *this->buff+=sum;
    mutex->signal();
    doneRows->signal();
}

void matricaMod1(){

    char c;
    int n=0;
    Semaphore* mutex = new Semaphore(1);
    Semaphore* doneRows = new Semaphore(0);

    printString("Unesi broj vrsta i kolona matrice \n");
    int m=0;
    while(c=getc(), (c>='0' && c<='9')){
        m = m*10 + c -'0';
    }
    while(c=getc(), (c>='0' && c<='9')){
        n = n*10 + c -'0';
    }
    int* matrix = (int*) mem_alloc(n*m*sizeof(int));//linearizovana
    printString("Unesi vrednosti matrice\n");
    for(int i=0;i<n;i++){
        for(int j=0;j<m;j++){
            int value=0;
            while(c=getc(),(c>='0' && c<='9')){
                value = value *10 + c-'0';
            }
            matrix[i*m+j]=value;
        }
    }
    Thread** threads = (Thread**) mem_alloc(n*sizeof (Thread*));
    int buffer = 0;
    for(int i=0;i<n;i++){
        threads[i] = new Matrica(matrix + i*m, m, &buffer, mutex, doneRows);
    }
    for(int i=0;i<n;i++){
        threads[i]->start();
    }
    for(int i=0;i<n;i++){
        doneRows->wait();
    }
    printString("Suma svih elemenata je: ");
    printInt(buffer);
    printString("\n");
}

void matricaMod(){
    Semaphore* mutex = new Semaphore(1);
    Semaphore* doneRows = new Semaphore(0);
    Thread* threads[9];
    int* matrica = (int*)mem_alloc(sizeof(int)*9);
    int n=3;
    int m=3;
    int k=0;
    for(int i=0;i<n;i++){
        for(int j=0;j<m;j++){
            matrica[i*n +j] = ++k;
        }
    }
    int buffer = 0;
    for(int i=0;i<n;i++){
        threads[i] = new Matrica(matrica + i*m, m, &buffer, mutex, doneRows);
    }
    for(int i=0;i<n;i++){
        threads[i]->start();
    }
    for(int i=0;i<n;i++){
        doneRows->wait();
    }
    printString("Suma svih elemenata je: ");
    printInt(buffer);
    printString("\n");
}