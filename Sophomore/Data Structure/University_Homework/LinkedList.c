#include <stdio.h>
#include <stdlib.h>

typedef struct listnode *listPointer;
typedef struct listnode
{
    int data ;
    listPointer link;
} listNode;

// 두 개의 노드를 가진 연결 리스트 생성 함수
listPointer create2()
{

    listPointer first = (listNode *)malloc(sizeof(listNode));
    listPointer second = (listNode *)malloc(sizeof(listNode));

    second->link = NULL;
    second->data = 20;

    first->data = 10;
    first->link = second;

    return first;
}

// 리스트 삭제
void delete(listPointer *first, listPointer trail, listPointer x)
{
    if (trail)
        trail->link = x->link;
    else
        *first = (*first)->link;
    free(x);
}

// 리스트 출력
void printList(listPointer first)
{
    for (; first; first = first->link)
        printf("%4d ->", first->data);

    putchar('\n') ;
}

// 리스트 삽입
void insert(listPointer *first, listPointer x, int data)
{
    listPointer temp = (listNode *)malloc(sizeof(listNode));

    temp->data = data;

    if (*first) 
    {
        temp->link = x->link;
        x->link = temp;
    }

    else
    {
        temp->link = NULL;
        *first = temp;
    }
}

listPointer movex(listPointer first)
{
    listPointer pointer ;
    for (; first; first = first->link) 
        pointer = first ;       
    return pointer;
}

int main()
{
    create2(); 
    
    listPointer first = NULL; 
    listPointer x = NULL ;

    first =  create2() ;
    printList(first)    ;

    x = movex(first); // x를 끝으로 이동

    insert(&first, x ,50) ;
    printList(first)    ;
    
    x = movex(first); // x를 끝으로 이동
    insert(&first, x ,30) ;
    printList(first)    ;
      
    x = movex(first); // x를 끝으로 이동
    insert(&first, x ,100) ;
    printList(first)    ;

    return 0;
}