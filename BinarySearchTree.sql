SELECT n, IF(p IS NULL, 'Root', IF((SELECT COUNT(*) FROM bst in_bst WHERE in_bst.p = out_bst.n) > 0, 'Inner', 'Leaf')) FROM bst out_bst ORDER BY n;
