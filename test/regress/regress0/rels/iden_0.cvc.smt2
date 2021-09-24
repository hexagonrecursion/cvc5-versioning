; EXPECT: unsat
(set-option :incremental false)
(set-logic ALL)
(declare-sort Atom 0)

(declare-fun x () (Set (Tuple Int Int)))
(declare-fun id () (Set (Tuple Int Int)))
(declare-fun t () (Set (Tuple Int)))
(declare-fun z () (Tuple Int Int))
(assert (= z (mkTuple 1 2)))
(declare-fun zt () (Tuple Int Int))
(assert (= zt (mkTuple 2 1)))
(declare-fun v () (Tuple Int Int))
(assert (= v (mkTuple 1 1)))
(declare-fun a () (Tuple Int Int))
(assert (= a (mkTuple 1 5)))
(assert (member (mkTuple 1) t))
(assert (member (mkTuple 2) t))
(assert (member z x))
(assert (member zt x))
(assert (member v x))
(assert (member a x))
(assert (= id (iden t)))
(assert (not (member (mkTuple 1 1) (intersection id x))))
(check-sat)