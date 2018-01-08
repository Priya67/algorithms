```cpp
#include <stdio.h>

/* Assuming -1 is filled for the places where element
   is not available */

/* Function to move m elements at the end of array mPlusN[] */
void moveToEnd(int mPlusN[], int size)
{
    int i = 0, j = size - 1;
    for (i = size-1; i >= 0; i--)
        if (mPlusN[i] != -1)
        {
            mPlusN[j] = mPlusN[i];
            j--;
        }
}

/* Merges array N[] of size n into array mPlusN[]
   of size m+n*/
int merge(int mPlusN[], int N[], int m, int n)
{
    int i = n;
    int j = 0;
    int k = 0;
    while (k < (m+n))
    {
        if ((i < (m+n) && mPlusN[i] <= N[j]) || (j == n))
        {
            mPlusN[k] = mPlusN[i];
            k++;
            i++;
        }
        else  // Otherwise take element from N[]
        {
            mPlusN[k] = N[j];
            k++;
            j++;
        }
    }
}

/* Utility that prints out an array on a line */
void printArray(int arr[], int size)
{
    int i;
    for (i=0; i < size; i++)
        printf("%d ", arr[i]);

    printf("\n");
}

/* Driver function to test above functions */
int main()
{
    // Initialize arrays
    int mPlusN[] = {2, 8, -1, -1, -1, 13, -1, 15, 20};
    int N[] = {5, 7, 9, 25};
    int n = sizeof(N)/sizeof(N[0]);
    int m = sizeof(mPlusN)/sizeof(mPlusN[0]) - n;

    // Move the m elements at the end of mPlusN
    moveToEnd(mPlusN, m+n);

    //Merge N[] into mPlusN[]
    merge(mPlusN, N, m, n);

    // Print the resultant mPlusN
    printArray(mPlusN, m+n);

    return 0;
}
```
