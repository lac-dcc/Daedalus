#include <iostream>
#include <list>

int main() {
    // Create a list of doubles
    std::list<double> myList = {3.1, 2.2, 5.5, 4.4, 1.1};

    // Print the original list
    std::cout << "Original list: ";
    for (const auto& val : myList) {
        std::cout << val << " ";
    }
    std::cout << std::endl;

    // Sort the list
    myList.sort();

    // Print the sorted list
    std::cout << "Sorted list: ";
    for (const auto& val : myList) {
        std::cout << val << " ";
    }
    std::cout << std::endl;

    return 0;
}
