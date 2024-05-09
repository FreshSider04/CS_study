#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int data;
    struct Node *llink;
    struct Node *rlink;
} Node;

Node* createNode(int data) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    newNode->data = data;
    newNode->llink = NULL;
    newNode->rlink = NULL;
    return newNode;
}

void insertNode(Node** head, int data) {
    Node* newNode = createNode(data);
    if (*head == NULL) {
        *head = newNode;
    } else {
        Node* temp = *head;
        while (temp->rlink != NULL) {
            temp = temp->rlink;
        }
        temp->rlink = newNode;
        newNode->llink = temp;
    }
}

void delete(Node** head, int value) {
    if (*head == NULL) {
        return;
    }

    Node* temp = *head;
    while (temp != NULL) {
        if (temp->data == value) {
            if (temp->llink != NULL) {
                temp->llink->rlink = temp->rlink;
            } else {
                *head = temp->rlink;
            }
            if (temp->rlink != NULL) {
                temp->rlink->llink = temp->llink;
            }
            free(temp);
            return;
        }
        temp = temp->rlink;
    }
}


void printList(Node* head) {
    Node* temp = head;
    while (temp != NULL) {
        printf("%d  -> ", temp->data);
        temp = temp->rlink;
    }
    printf("NULL\n");
}

int main() {
    Node* head = NULL;

    insertNode(&head, 10);
    insertNode(&head, 20);
    insertNode(&head, 30);
    printList(head);

    delete(&head, 20);
    printList(head);
}
