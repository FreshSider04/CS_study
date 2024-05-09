#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int data;
    struct Node *link;
}Node;

void insert(Node* head, int index, int data)
{
    int k = index;
    Node *preNode = head;
    Node* insertNode = (Node*) malloc(sizeof(Node));
    insertNode->data = data;

    while (k-- && preNode != NULL)
    {
        preNode = preNode->link;
    }

    if (preNode == NULL)
    {
        free(insertNode);
        return;
    }

    insertNode->link = preNode->link;
    preNode->link = insertNode;
}

void delete(Node* head, int index)
{
    int k = index;
    Node* temp = head;
    Node* trash = NULL;

    while (k-- && temp != NULL)
    {
        temp = temp->link;
    }
    if (temp == NULL || temp->link == NULL)
    {
        return;
    }

    trash = temp->link;
    temp->link = trash->link;
    free(trash);
}

int search(Node *head, int value)
{
    if(head->link == NULL)
    {
        return -1;
    }
    int index = 0;
    Node *temp = head->link;

    while (temp->data != value)
    {
        index++;
        temp = temp->link;

        if (temp == NULL)
        {
            return -1;
        }
    }

    return index;
    
}

void printList(Node *head)
{
    printf("Print Linked List : \n");
    for (; head; head = head->link)
    {
        printf("%d -> ", head->data);
    }
    printf("NULL\n");
    
}
int main(void)
{
    Node *head = (Node* )malloc(sizeof(Node));
    head->data = 0;
    head->link = NULL;

    insert(head, 0, 1);
    insert(head, 1, 2);
    insert(head, 2, 3);
    insert(head, 3, 4);
    insert(head, 2, 12);

    printList(head);

    delete(head, 3);

    printList(head);

    printf("Serched index : \n");
    printf("%d\n", search(head, 1));

}