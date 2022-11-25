You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:
- Root: If node is root node.
- Leaf: If node is leaf node.
- Inner: If node is neither root nor leaf node.

```sql
SELECT 
    nodes,
    CASE 
        WHEN nodes = (SELECT N FROM BST WHERE P is null) THEN 'Root' -- the node is Root if it does not have a parent
        ELSE 
            CASE 
                WHEN nodes IN (SELECT P FROM BST) THEN 'Inner'      -- the node is Inner if it is a parent but not a root
                ELSE 'Leaf'
            END    
    END
FROM (  SELECT N as nodes FROM BST 
        UNION 
        SELECT P as nodes FROM BST WHERE P IS NOT NULL) q
ORDER BY nodes;
```
