#include <stdio.h>
#include <stdlib.h>

typedef struct Node
{
    int data;
    struct Node *next;
}Node;

Node *head = NULL;
Node *tail = NULL;

void create(int data)
{
    Node *new_node = (Node *)malloc(sizeof(Node));
    new_node->data = data;
    new_node->next = NULL;

    if (head == NULL)
    {
        head = new_node;
    }
    else
    {
        tail->next = new_node;
    }

    tail = new_node;
}

void delete(int data)
{
    int search = 0;

    Node *cur = head;
    Node *prev_cur = NULL;

    while (cur != NULL)
    {
        if(cur->data == data)
        {
            search = 1;
            break;
        }
        prev_cur = cur;
        cur = cur->next;
    }

    if (search == 1)
    {
        printf("%d를 삭제합니다\n", data);

        if (cur == head) head = cur->next;
        else prev_cur->next = cur->next;

        free(cur);
    }
    else
    {
        printf("%d를 찾을 수 없습니다", data);
    }
}

void search()
{
    printf("Print all data in linked list\n");
    Node *cur = head;
    while (cur != NULL)
    {
        printf("%d ->", cur->data);
        cur = cur->next;
    }
    printf("\n");
}

int main(void)
{
    create(10);
    create(20);
    create(30);
    create(40);
    create(50);

    search();


    delete(20);
    delete(50);

    search();

    return 0;   
}
