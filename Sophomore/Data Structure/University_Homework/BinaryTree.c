#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Node structure
typedef struct Node {
    int data;
    struct Node *left;
    struct Node *right;
} Node;

// Queue
typedef struct Queue {
    Node* node;
    struct Queue *next;
} Queue;

Node *create(int data)
{
    Node *newNode  = (Node *)malloc(sizeof(Node));
    newNode->data = data;
    newNode->left = NULL;
    newNode->right = NULL;

    return newNode;
}

Node *insert(Node *node, int data)
{
    if (node == NULL)
    {
        return create(data);
    }

    if (data < node -> data)
    {
        node->left = insert(node->left, data);
    }
    else if (data > node->data)
    {
        node->right = insert(node->right, data);
    }

    return node;
}

Node *search(Node* root, int value) {
    if (root == NULL || root->data == value) {
        return root;
    }
    
    // 찾는 값이 현재 노드의 값보다 작으면 왼쪽 서브트리에서 검색
    if (value < root->data) {
        return search(root->left, value);
    }
    // 찾는 값이 현재 노드의 값보다 크면 오른쪽 서브트리에서 검색
    else {
        return search(root->right, value);
    }
}

Node* delete(Node* root, int key) {
    if (root == NULL) return root;

    if (key < root->data) 
    {
        root->left = deleteNode(root->left, key);
    } 
    else if (key > root->data) 
    {
        root->right = deleteNode(root->right, key);
    } 
    else 
    {
        if (root->left == NULL) 
        {
            Node *temp = root->right;
            free(root);
            return temp;
        } else if (root->right == NULL) 
        {
            Node *temp = root->left;
            free(root);
            return temp;
        }

        Node *temp = root->right;
        while (temp && temp->left != NULL) 
        {
            temp = temp->left;
        }

        root->data = temp->data;
        root->right = deleteNode(root->right, temp->data);
    }
    return root;
}

void BFS(Node* root) {
    if (root == NULL) return;

    Queue *front = NULL, *rear = NULL, *temp = NULL;

    // root 노드를 큐에 삽입
    Queue *newNode = (Queue*)malloc(sizeof(Queue));
    newNode->node = root;
    newNode->next = NULL;

    rear = newNode;
    front = rear;

    while (front != NULL) {
        Node *current = front->node;

        printf("%d ", current->data);

        if (current->left != NULL) {
            Queue *newNode = (Queue*)malloc(sizeof(Queue));
            newNode->node = current->left;
            newNode->next = NULL;

            rear->next = newNode;
            rear = newNode;
        }

        if (current->right != NULL) {
            Queue *newNode = (Queue*)malloc(sizeof(Queue));
            newNode->node = current->right;
            newNode->next = NULL;

            rear->next = newNode;
            rear = newNode;
        }

        temp = front;
        front = front->next;
        free(temp);
    }
}

void printDFS(Node* root) {
    if (root == NULL) return;

    printf("%d ", root->data);
    printDFS(root->left);
    printDFS(root->right);
}

// print functions
void preorder(Node* root) 
{
    if (root != NULL) {
        printf("%d ", root->data);
        preorder(root->left);
        preorder(root->right);
    }
}

void inorder(Node* root) 
{
    if (root != NULL) {
        inorder(root->left);
        printf("%d ", root->data);
        inorder(root->right);
    }
}

void postorder(Node* node)
{
    if (node == NULL) return;

    postorder(node->left);
    postorder(node->right);
    printf("%d ", node->data);
}

int main() 
{
    Node* root = NULL;
    srand(time(NULL));

    // Insert 20 random numbers
    for (int i = 0; i < 20; ++i) {
        int num = rand() % 101;
        root = insert(root, num);
    }

    //search
    int numToSearch = 11; // 예를 들어, 찾고자 하는 값
    Node* found = search(root, numToSearch);
    if (found != NULL) {
        printf("%d 값을 가진 노드를 찾았습니다.\n", found->data);
    } else {
        printf("%d 값을 가진 노드가 트리에 존재하지 않습니다.\n", numToSearch);
    }

    // delete
    int numToDelete = 50;
    root = deleteNode(root, numToDelete);

    // BFS 출력
    printf("BFS Print:\n");
    printBFS(root);
    printf("\n");

    // DFS 출력
    printf("DFS Print:\n");
    printDFS(root);
    printf("\n");

    // print methods
    printf("Inorder Print:\n");
    inorder(root);
    printf("\n");

    printf("Preorder Print:\n");
    preorder(root);
    printf("\n");

    printf("Postorder Print:\n");
    postorder(root);
    printf("\n");

    return 0;
}