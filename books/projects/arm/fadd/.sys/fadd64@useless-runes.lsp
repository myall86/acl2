(RTL::RMODENEAR)
(RTL::RMODEUP)
(RTL::RMODEDN)
(RTL::RMODEZERO)
(RTL::IDC)
(RTL::IXC)
(RTL::UFC)
(RTL::OFC)
(RTL::DZC)
(RTL::IOC)
(RTL::DEFNAN)
(RTL::COMPUTERNDDIR)
(RTL::GAG)
(RTL::SIGN)
(RTL::EXPNT)
(RTL::FRAC)
(RTL::CHECKDENORM)
(RTL::CHECKSPECIAL)
(RTL::ISFAR)
(RTL::ADD)
(RTL::CLZ128-LOOP-0
 (11 10 (:REWRITE DEFAULT-+-2))
 (11 10 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(RTL::CLZ128-LOOP-1
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(RTL::CLZ128-LOOP-2
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (4 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(RTL::CLZ128)
(RTL::LZA128)
(RTL::COMPUTELZA)
(RTL::COMPUTELSHIFT)
(RTL::RNDINFO)
(RTL::FADD64)
