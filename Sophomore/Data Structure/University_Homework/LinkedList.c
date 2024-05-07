#include <stdio.h>
#include <stdlib.h>

typedef int element;
typedef struct ListNode{
    element data;
    struct ListNode *link;
} ListNode;



ListNode* firstInsert(ListNode *head, element value){
    ListNode *p=(ListNode *)malloc(sizeof(ListNode));
    p->data=value;
    p->link=head;
    head=p;
    return head;
}

ListNode* insert(ListNode *head,ListNode* pre, element value){
    ListNode *p=(ListNode *)malloc(sizeof(ListNode));
    p->data=value;
    p->link=pre->link;
    pre->link=p;
    return head;
}

ListNode* delete(ListNode *head,ListNode *pre){
    ListNode *removed;
    removed=pre->link;
    pre->link=removed->link;
    free(removed);
    return head;
}

void printL(ListNode *head){
    for (ListNode *p=head;p!=NULL;p=p->link){
        printf("%d->",p->data);
    }
    printf("NULL\n");
}
int main() {
    ListNode *head=NULL;

    // 1 ~ 5까지 무작위로 삽입
    for(int i = 1; i <= 5; i++){
        head = firstInsert(head,i);
        printL(head);
        printf("\n");
    }

    return 0;
}
