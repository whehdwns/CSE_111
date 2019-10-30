--SUM(extendedprice for Customer from local nation sold in other countries ) -  SUM(extendedprice for Customer to buy from foriegn nation)
--nation n1, n2, n3, n4 /lineitem l1, l2  / supplier s1, s2 / customer c1, c2 / orders o1, o2
--n1, n2 for selling
--n3, n4 for buying

SELECT n1.n_name , 
    (SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('ALGERIA') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('ALGERIA') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31')
    -
     SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'ALGERIA') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('ALGERIA') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
    UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('ARGENTINA') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('ARGENTINA') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'ARGENTINA') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('ARGENTINA') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
      UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('BRAZIL') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('BRAZIL') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'BRAZIL') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('BRAZIL') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
          UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('CANADA') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('CANADA') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'CANADA') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('CANADA') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
              UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('EGYPT') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('EGYPT') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'EGYPT') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('EGYPT') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                  UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('ETHIOPIA') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('ETHIOPIA') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'ETHIOPIA') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('ETHIOPIA') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                     UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('FRANCE') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('FRANCE') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'FRANCE') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('FRANCE') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                         UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('GERMANY') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('GERMANY') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'GERMANY') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('GERMANY') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                             UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('INDIA') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('INDIA') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'INDIA') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('INDIA') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                 UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('INDONESIA') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('INDONESIA') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'INDONESIA') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('INDONESIA') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                     UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('IRAN') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('IRAN') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'IRAN') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('IRAN') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                         UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('IRAQ') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('IRAQ') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'IRAQ') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('IRAQ') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                           UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('JAPAN') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('JAPAN') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'JAPAN') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('JAPAN') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                              UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('JORDAN') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('JORDAN') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'JORDAN') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('JORDAN') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                            UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('KENYA') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('KENYA') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'KENYA') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('KENYA') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                            UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('MOROCCO') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('MOROCCO') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'MOROCCO') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('MOROCCO') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                           UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('MOZAMBIQUE') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('MOZAMBIQUE') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'MOZAMBIQUE') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('MOZAMBIQUE') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                           UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('PERU') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('PERU') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'PERU') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('PERU') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                              UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('CHINA') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('CHINA') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'CHINA') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('CHINA') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                                  UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('ROMANIA') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('ROMANIA') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'ROMANIA') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('ROMANIA') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                                      UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('SAUDI ARABIA') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('SAUDI ARABIA') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'SAUDI ARABIA') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('SAUDI ARABIA') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                                       UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('VIETNAM') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('VIETNAM') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'VIETNAM') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('VIETNAM') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                                           UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('RUSSIA') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('RUSSIA') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'RUSSIA') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('RUSSIA') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                                               UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('UNITED KINGDOM') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('UNITED KINGDOM') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'UNITED KINGDOM') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('UNITED KINGDOM') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
                                                                   UNION
  SELECT n1.n_name,(SELECT SUM(l2.l_extendedprice)
    FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
    WHERE
        n3.n_name IN ('UNITED STATES') AND
        n3.n_nationkey = s2.s_nationkey AND
        s2.s_suppkey = l2.l_suppkey AND
        l2.l_orderkey = o2.o_orderkey AND
        o2.o_custkey = c2.c_custkey AND
        c2.c_nationkey = n4.n_nationkey AND
        n4.n_name NOT IN ('UNITED STATES') AND
        l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31') 
    - 
    SUM(l1.l_extendedprice)
    FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
    WHERE
        n1.n_name IN( 'UNITED STATES') AND
        n1.n_nationkey = c1.c_nationkey AND
        c1.c_custkey = o1.o_custkey AND
        o1.o_orderkey = l1.l_orderkey AND
        l1.l_suppkey = s1.s_suppkey AND
        s1.s_nationkey = n2.n_nationkey AND
        n2.n_name NOT IN ('UNITED STATES') AND
        l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-31'
GROUP BY n1.n_name