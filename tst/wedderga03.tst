# wedderga, chapter 3
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been autogenerated with GAP. It contains examples
# extracted from the documentation. Each example is preceded by the
# comment which points to the location of its source.
#
gap> START_TEST( "wedderga03.tst");

# wedderga/doc/SSP.xml:25-53

gap> ExtremelyStrongShodaPairs(DihedralGroup(32));
[ [ <pc group of size 32 with 5 generators>, 
      <pc group of size 32 with 5 generators> ], 
  [ <pc group of size 32 with 5 generators>, 
      Group([ f1*f2*f3*f4*f5, f3, f4, f5 ]) ], 
  [ <pc group of size 32 with 5 generators>, Group([ f2, f3, f4, f5 ]) ], 
  [ <pc group of size 32 with 5 generators>, Group([ f1, f3, f4, f5 ]) ], 
  [ Group([ f1*f2*f3*f4*f5, f3, f4, f5 ]), Group([ f1*f2*f4*f5, f4, f5 ]) ], 
  [ Group([ f2, f3, f4, f5 ]), Group([ f5 ]) ], 
  [ Group([ f2, f3, f4, f5 ]), Group([  ]) ] ]
gap> ExtremelyStrongShodaPairs(SL(2,3));          
[ [ SL(2,3), SL(2,3) ], 
  [ SL(2,3), 
      Group([ [ [ Z(3)^0, Z(3)^0 ], [ Z(3)^0, Z(3) ] ], 
          [ [ Z(3), Z(3)^0 ], [ Z(3)^0, Z(3)^0 ] ], 
          [ [ Z(3), 0*Z(3) ], [ 0*Z(3), Z(3) ] ] ]) ], 
  [ 
      Group([ [ [ Z(3)^0, Z(3)^0 ], [ Z(3)^0, Z(3) ] ], 
          [ [ Z(3), Z(3)^0 ], [ Z(3)^0, Z(3)^0 ] ], 
          [ [ Z(3), 0*Z(3) ], [ 0*Z(3), Z(3) ] ] ]), 
      Group([ [ [ 0*Z(3), Z(3) ], [ Z(3)^0, 0*Z(3) ] ], 
          [ [ Z(3), 0*Z(3) ], [ 0*Z(3), Z(3) ] ] ]) ] ]
gap> ExtremelyStrongShodaPairs(SymmetricGroup(5));
[ [ Sym( [ 1 .. 5 ] ), Sym( [ 1 .. 5 ] ) ], 
  [ Sym( [ 1 .. 5 ] ), Alt( [ 1 .. 5 ] ) ] ]

# wedderga/doc/SSP.xml:80-101

gap> StrongShodaPairs( SymmetricGroup(4) );
[ [ Sym( [ 1 .. 4 ] ), Sym( [ 1 .. 4 ] ) ], 
  [ Sym( [ 1 .. 4 ] ), Alt( [ 1 .. 4 ] ) ], 
  [ Alt( [ 1 .. 4 ] ), Group([ (1,4)(2,3), (1,3)(2,4) ]) ], 
  [ Group([ (1,3,2,4), (3,4) ]), Group([ (3,4), (1,2)(3,4) ]) ], 
  [ Group([ (3,4), (1,3,2,4) ]), Group([ (1,3,2,4), (1,2)(3,4) ]) ] ]
gap> StrongShodaPairs( DihedralGroup(64) );
[ [ <pc group of size 64 with 6 generators>, 
      <pc group of size 64 with 6 generators> ], 
  [ <pc group of size 64 with 6 generators>, 
      Group([ f1*f2*f3*f4*f5*f6, f3, f4, f5, f6 ]) ], 
  [ <pc group of size 64 with 6 generators>, Group([ f2, f3, f4, f5, f6 ]) ], 
  [ <pc group of size 64 with 6 generators>, Group([ f1, f3, f4, f5, f6 ]) ], 
  [ Group([ f1*f2*f3*f4*f5*f6, f3, f4, f5, f6 ]), 
      Group([ f1*f2*f4*f5*f6, f4, f5, f6 ]) ], 
  [ Group([ f2, f3, f4, f5, f6 ]), Group([ f5, f6 ]) ], 
  [ Group([ f2, f3, f4, f5, f6 ]), Group([ f6 ]) ], 
  [ Group([ f2, f3, f4, f5, f6 ]), Group([  ]) ] ]

# wedderga/doc/SSP.xml:124-138

gap> G:=SymmetricGroup(4);; K:=Group( (1,3,2,4), (3,4) );;
gap> H1:=Group( (2,4,3), (1,4)(2,3), (1,3)(2,4) );;
gap> H2:=Group( (3,4), (1,2)(3,4) );;
gap> IsExtremelyStrongShodaPair( G, G, H1 );
true
gap> IsExtremelyStrongShodaPair( G, K, H2 );
false
gap> IsExtremelyStrongShodaPair( G, G, H2 );
false
gap> IsExtremelyStrongShodaPair( G, G, K );
false

# wedderga/doc/SSP.xml:159-173

gap> G:=SymmetricGroup(4);; K:=Group( (1,3,2,4), (3,4) );;
gap> H1:=Group( (2,4,3), (1,4)(2,3), (1,3)(2,4) );;
gap> H2:=Group( (3,4), (1,2)(3,4) );;
gap> IsStrongShodaPair( G, G, H1 );
true
gap> IsExtremelyStrongShodaPair( G, K, H2 );
false
gap> IsStrongShodaPair( G, K, H2 );
true
gap> IsStrongShodaPair( G, G, K );
false

# wedderga/doc/SSP.xml:193-203

gap> G:=AlternatingGroup(5);;
gap> K:=AlternatingGroup(4);;
gap> H := Group( (1,2)(3,4), (1,3)(2,4) );;
gap> IsStrongShodaPair( G, K, H );
false
gap> IsShodaPair( G, K, H );
true

# wedderga/doc/SSP.xml:218-234

gap> S4:=SymmetricGroup(4);;
gap> IsStronglyMonomial(S4);
true
gap> G:=SmallGroup(24,3);;
gap> IsStronglyMonomial(G);
false
gap> IsMonomial(G);
false
gap> G:=SmallGroup(1000,86);;
gap> IsMonomial(G);
true
gap> IsStronglyMonomial(G);
false

# wedderga/doc/SSP.xml:249-272

gap>  D24:=DihedralGroup(24);
<pc group of size 24 with 4 generators>
gap> IsNormallyMonomial(D24);
true
gap> G:=SmallGroup(192,1023);
<pc group of size 192 with 7 generators>
gap> IsNormallyMonomial(G);
true
gap> G:=SmallGroup(1029,12); 
<pc group of size 1029 with 4 generators>
gap> IsNormallyMonomial(G);
false
gap> IsStronglyMonomial(G);  
true
gap> G:=SL(2,3);            
SL(2,3)
gap> IsNormallyMonomial(G);
false
gap> IsStronglyMonomial(G);
false

gap> STOP_TEST("wedderga03.tst", 1 );
