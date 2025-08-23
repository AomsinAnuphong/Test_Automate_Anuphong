# Check duplicate items from list A and list B and append to a new list.
# List A : [1,2,3,5,6,8,9]
# List B : [3,2,1,5,6,0]
# Using python programming language.

def make_duplicate_list(list_1 : list, list_2 :list) -> list:
    output_list = list(set(list_1) & set(list_2))
    return output_list

if __name__ == "__main__":
    listA = [1,2,3,5,6,8,9]
    listB = [3,2,1,5,6,0]
    result = make_duplicate_list(listA, listB)
    print("Duplicate list :", result)