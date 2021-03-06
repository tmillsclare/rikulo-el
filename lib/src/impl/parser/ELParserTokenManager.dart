//Copyright (C) 2012 Potix Corporation. All Rights Reserved.
//History: Mon, Sep 17, 2012  04:48:41 PM
// Author: hernichen
//Port from Tomcat 7.0.x (java -> dart)

/** Token Manager. */
class ELParserTokenManager implements ELParserConstants
{

  int _jjStopStringLiteralDfa_0(int pos, int active0) {
    switch (pos) {
      case 0:
         if ((active0 & 0x0c) != 0)
         {
            jjmatchedKind_ = 1;
            return 5;
         }
         return -1;
      default :
         return -1;
    }
  }
int _jjStartNfa_0(int pos, int active0)
{
   return _jjMoveNfa_0(_jjStopStringLiteralDfa_0(pos, active0), pos + 1);
}
int _jjStopAtPos(int pos, int kind) //see ELParserConstants
{
   jjmatchedKind_ = kind;
   jjmatchedPos_ = pos;
   return pos + 1;
}
int _jjMoveStringLiteralDfa0_0()
{
   switch(curChar_)
   {
      case 35: //'#'
         return _jjMoveStringLiteralDfa1_0(0x8);
      case 36: //'$'
         return _jjMoveStringLiteralDfa1_0(0x4);
      default :
         return _jjMoveNfa_0(7, 0);
   }
}
int _jjMoveStringLiteralDfa1_0(int active0)
{
   try { curChar_ = input_stream_.readCharCode(); }
   on ReaderIOException catch(e) {
      _jjStopStringLiteralDfa_0(0, active0);
      return 1;
   }
   switch(curChar_)
   {
      case 123: //'{'
         if ((active0 & 0x4) != 0) //'${'
            return _jjStopAtPos(1, 2); //ELParserConstants.START_DYNAMIC_EXPRESSION
         else if ((active0 & 0x8) != 0) //'#{'
            return _jjStopAtPos(1, 3); //ELParserConstants.START_DEFERRED_EXPRESSION
         break;
      default :
         break;
   }
   return _jjStartNfa_0(0, active0);
}
static final List<int> jjbitVec0_ = const [
   0xfffffffffffffffe, 0xffffffffffffffff, 0xffffffffffffffff, 0xffffffffffffffff
];
static final List<int> jjbitVec2_ = const [
   0x0, 0x0, 0xffffffffffffffff, 0xffffffffffffffff
];
int _jjMoveNfa_0(int startState, int curPos)
{
   int startsAt = 0;
   jjnewStateCnt_ = 8;
   int i = 1;
   _jjstateSet[0] = startState;
   int kind = 0x7fffffff;
   for (;;)
   {
      if (++jjround_ == 0x7fffffff)
         _ReInitRounds();
      if (curChar_ < 64)
      {
         int l = 1 << curChar_;
         do
         {
            switch(_jjstateSet[--i])
            {
               case 7:
                  if ((0xffffffe7ffffffff & l) != 0) // != '#' &&  != '$'
                  {
                     if (kind > 1)
                        kind = 1;
                     _jjCheckNAddStates(0, 4);
                  }
                  else if ((0x1800000000 & l) != 0) // == '#' || == '$'
                  {
                     if (kind > 1)
                        kind = 1;
                     _jjCheckNAdd(5);
                  }
                  if ((0xffffffe7ffffffff & l) != 0)
                     _jjCheckNAddTwoStates(0, 1);
                  break;
               case 0:
                  if ((0xffffffe7ffffffff & l) != 0)
                     _jjCheckNAddTwoStates(0, 1);
                  break;
               case 2:
                  if ((0xffffffe7ffffffff & l) == 0)
                     break;
                  if (kind > 1)
                     kind = 1;
                  _jjCheckNAddStates(0, 4);
                  break;
               case 3:
                  if ((0xffffffe7ffffffff & l) != 0)
                     _jjCheckNAddTwoStates(3, 4);
                  break;
               case 4:
                  if ((0x1800000000 & l) != 0)
                     _jjCheckNAdd(5);
                  break;
               case 5:
                  if ((0xffffffe7ffffffff & l) == 0)
                     break;
                  if (kind > 1)
                     kind = 1;
                  _jjCheckNAddStates(5, 8);
                  break;
               case 6:
                  if ((0x1800000000 & l) == 0)
                     break;
                  if (kind > 1)
                     kind = 1;
                  _jjCheckNAddStates(9, 13);
                  break;
               default : break;
            }
         } while(i != startsAt);
      }
      else if (curChar_ < 128)
      {
         int l = 1 << (curChar_ & 0x3f);
         do
         {
            switch(_jjstateSet[--i])
            {
               case 7:
                  if (kind > 1)
                     kind = 1;
                  _jjCheckNAddStates(0, 4);
                  if ((0xffffffffefffffff & l) != 0) // != '\'
                     _jjCheckNAddTwoStates(0, 1);
                  else if (curChar_ == 92) // == '\'
                  {
                     if (kind > 1)
                        kind = 1;
                     _jjCheckNAddStates(14, 17);
                  }
                  break;
               case 0:
                  if ((0xffffffffefffffff & l) != 0) // != '\'
                     _jjCheckNAddTwoStates(0, 1);
                  break;
               case 1:
                  if (curChar_ != 92) // != '\'
                     break;
                  if (kind > 1)
                     kind = 1;
                  _jjCheckNAddStates(14, 17);
                  break;
               case 2:
                  if (kind > 1)
                     kind = 1;
                  _jjCheckNAddStates(0, 4);
                  break;
               case 3:
                  _jjCheckNAddTwoStates(3, 4);
                  break;
               case 5:
                  if ((0xf7ffffffffffffff & l) == 0) // == '{'
                     break;
                  if (kind > 1)
                     kind = 1;
                  _jjCheckNAddStates(5, 8);
                  break;
               default : break;
            }
         } while(i != startsAt);
      }
      else
      {
         int hiByte = (curChar_ >> 8);
         int i1 = hiByte >> 6;
         int l1 = 1 << (hiByte & 0x3f);
         int i2 = (curChar_ & 0xff) >> 6;
         int l2 = 1 << (curChar_ & 0x3f);
         do
         {
            switch(_jjstateSet[--i])
            {
               case 7:
                  if (_jjCanMove_0(hiByte, i1, i2, l1, l2))
                     _jjCheckNAddTwoStates(0, 1);
                  if (_jjCanMove_0(hiByte, i1, i2, l1, l2))
                  {
                     if (kind > 1)
                        kind = 1;
                     _jjCheckNAddStates(0, 4);
                  }
                  break;
               case 0:
                  if (_jjCanMove_0(hiByte, i1, i2, l1, l2))
                     _jjCheckNAddTwoStates(0, 1);
                  break;
               case 2:
                  if (!_jjCanMove_0(hiByte, i1, i2, l1, l2))
                     break;
                  if (kind > 1)
                     kind = 1;
                  _jjCheckNAddStates(0, 4);
                  break;
               case 3:
                  if (_jjCanMove_0(hiByte, i1, i2, l1, l2))
                     _jjCheckNAddTwoStates(3, 4);
                  break;
               case 5:
                  if (!_jjCanMove_0(hiByte, i1, i2, l1, l2))
                     break;
                  if (kind > 1)
                     kind = 1;
                  _jjCheckNAddStates(5, 8);
                  break;
               default : break;
            }
         } while(i != startsAt);
      }
      if (kind != 0x7fffffff)
      {
         jjmatchedKind_ = kind;
         jjmatchedPos_ = curPos;
         kind = 0x7fffffff;
      }
      ++curPos;
      if ((i = jjnewStateCnt_) == (startsAt = 8 - (jjnewStateCnt_ = startsAt)))
         return curPos;
      try { curChar_ = input_stream_.readCharCode(); }
      on ReaderIOException catch(e) { return curPos; }
   }
}
int _jjStopStringLiteralDfa_1(int pos, int active0)
{
   switch (pos)
   {
      case 0:
         if ((active0 & 0x10000) != 0)
            return 1;
         if ((active0 & 0x5075555007000) != 0)
         {
            jjmatchedKind_ = 51;
            return 30;
         }
         return -1;
      case 1:
         if ((active0 & 0x5065000007000) != 0)
         {
            jjmatchedKind_ = 51;
            jjmatchedPos_ = 1;
            return 30;
         }
         if ((active0 & 0x10555000000) != 0)
            return 30;
         return -1;
      case 2:
         if ((active0 & 0x5005000000000) != 0)
            return 30;
         if ((active0 & 0x60000007000) != 0)
         {
            jjmatchedKind_ = 51;
            jjmatchedPos_ = 2;
            return 30;
         }
         return -1;
      case 3:
         if ((active0 & 0x5000) != 0)
            return 30;
         if ((active0 & 0x60000002000) != 0)
         {
            jjmatchedKind_ = 51;
            jjmatchedPos_ = 3;
            return 30;
         }
         return -1;
      case 4:
         if ((active0 & 0x40000000000) != 0)
         {
            jjmatchedKind_ = 51;
            jjmatchedPos_ = 4;
            return 30;
         }
         if ((active0 & 0x20000002000) != 0)
            return 30;
         return -1;
      case 5:
         if ((active0 & 0x40000000000) != 0)
         {
            jjmatchedKind_ = 51;
            jjmatchedPos_ = 5;
            return 30;
         }
         return -1;
      case 6:
         if ((active0 & 0x40000000000) != 0)
         {
            jjmatchedKind_ = 51;
            jjmatchedPos_ = 6;
            return 30;
         }
         return -1;
      case 7:
         if ((active0 & 0x40000000000) != 0)
         {
            jjmatchedKind_ = 51;
            jjmatchedPos_ = 7;
            return 30;
         }
         return -1;
      case 8:
         if ((active0 & 0x40000000000) != 0)
         {
            jjmatchedKind_ = 51;
            jjmatchedPos_ = 8;
            return 30;
         }
         return -1;
      default :
         return -1;
   }
}
int _jjStartNfa_1(int pos, int active0)
{
   return _jjMoveNfa_1(_jjStopStringLiteralDfa_1(pos, active0), pos + 1);
}
int _lbraceCount = 0; //20120927, henrichen: #issue2, support Map
int _jjMoveStringLiteralDfa0_1()
{
   switch(curChar_)
   {
      case 33: //!
         jjmatchedKind_ = 35; //ELParserConstants.NOT0
         return _jjMoveStringLiteralDfa1_1(0x200000000);
      case 37: //%
         return _jjStopAtPos(0, 49); //ELParserConstants.MOD0
      case 38: //&
         return _jjMoveStringLiteralDfa1_1(0x2000000000);
      case 40: //(
         return _jjStopAtPos(0, 17); //ELParserConstants.MOD0
      case 41: //)
         return _jjStopAtPos(0, 18); //ELParserConstants.RPAREN
      case 42: //*
         return _jjStopAtPos(0, 43); //ELParserConstants.MULT
      case 43: //+
         return _jjStopAtPos(0, 44); //ELParserConstants.PLUS
      case 44: //,
         return _jjStopAtPos(0, 22); //ELParserConstants.COMMA
      case 45: //-
         return _jjStopAtPos(0, 45); //ELParserConstants.MINUS
      case 46: //.
         return _jjStartNfaWithStates_1(0, 16, 1); //ELParserConstants.DOT + //ELParserConstants.LITERAL_EXPRESSION
      case 47: // /
         return _jjStopAtPos(0, 47); //ELParserConstants.DIV0
      case 58: // :
         return _jjStopAtPos(0, 21); //ELParserConstants.COLON
      case 60: // <
         jjmatchedKind_ = 25; //ELParserConstants.LT0
         return _jjMoveStringLiteralDfa1_1(0x20000000);
      case 61: // =
         return _jjMoveStringLiteralDfa1_1(0x80000000);
      case 62: // >
         jjmatchedKind_ = 23; //ELParserConstants.GT0
         return _jjMoveStringLiteralDfa1_1(0x8000000);
      case 63: // ?
         return _jjStopAtPos(0, 46); //ELParserConstants.QUESTIONMARK
      case 91: // [
         return _jjStopAtPos(0, 19); //ELParserConstants.LBRACK
      case 93: // ]
         return _jjStopAtPos(0, 20); //ELParserConstants.RBRACK
      case 97: // a
         return _jjMoveStringLiteralDfa1_1(0x4000000000);
      case 100: // d
         return _jjMoveStringLiteralDfa1_1(0x1000000000000);
      case 101: // e
         return _jjMoveStringLiteralDfa1_1(0x20100000000);
      case 102: // f
         return _jjMoveStringLiteralDfa1_1(0x2000);
      case 103: // g
         return _jjMoveStringLiteralDfa1_1(0x11000000);
      case 105: // i
         return _jjMoveStringLiteralDfa1_1(0x40000000000);
      case 108: // l
         return _jjMoveStringLiteralDfa1_1(0x44000000);
      case 109: // m
         return _jjMoveStringLiteralDfa1_1(0x4000000000000);
      case 110: // n
         return _jjMoveStringLiteralDfa1_1(0x1400004000);
      case 111: // o
         return _jjMoveStringLiteralDfa1_1(0x10000000000);
      case 116: // t
         return _jjMoveStringLiteralDfa1_1(0x1000);
      case 123: // {
        ++_lbraceCount; //20120927, henrichen: #issue2, support Map
         return _jjStopAtPos(0, 57); //ELParserConstants.LBRACE
      case 124: // |
         return _jjMoveStringLiteralDfa1_1(0x8000000000);
      case 125: // }  20120927, henrichen: #issue2, support Map
        int kind = 15; //ELParserConstants.END_EXPRESSION
        if (_lbraceCount > 0) { //20120927, henrichen: #issue2, support Map
          --_lbraceCount;
          kind = 58; //ELParserConstants.RBRACE
        }
        return _jjStopAtPos(0, kind);
      default : // others
         return _jjMoveNfa_1(0, 0); //ELParserConstants.EOF
   }
}
int _jjMoveStringLiteralDfa1_1(int active0)
{
   try { curChar_ = input_stream_.readCharCode(); }
   on ReaderIOException catch(e) {
      _jjStopStringLiteralDfa_1(0, active0);
      return 1;
   }
   switch(curChar_)
   {
      case 38: // &
         if ((active0 & 0x2000000000) != 0) // &&
            return _jjStopAtPos(1, 37); // ELParserConstants.AND0
         break;
      case 61: // =
         if ((active0 & 0x8000000) != 0) // >=
            return _jjStopAtPos(1, 27); // ELParserConstants.GE0
         else if ((active0 & 0x20000000) != 0) // <=
            return _jjStopAtPos(1, 29); // ELParserConstants.LE0
         else if ((active0 & 0x80000000) != 0) // ==
            return _jjStopAtPos(1, 31); // ELParserConstants.EQ0
         else if ((active0 & 0x200000000) != 0) // !=
            return _jjStopAtPos(1, 33); // ELParserConstants.NE0
         break;
      case 97: // a
         return _jjMoveStringLiteralDfa2_1(active0, 0x2000);
      case 101: // e
         if ((active0 & 0x10000000) != 0)
            return _jjStartNfaWithStates_1(1, 28, 30);
         else if ((active0 & 0x40000000) != 0)
            return _jjStartNfaWithStates_1(1, 30, 30);
         else if ((active0 & 0x400000000) != 0)
            return _jjStartNfaWithStates_1(1, 34, 30);
         break;
      case 105: // i
         return _jjMoveStringLiteralDfa2_1(active0, 0x1000000000000);
      case 109: // m
         return _jjMoveStringLiteralDfa2_1(active0, 0x20000000000);
      case 110: // n
         return _jjMoveStringLiteralDfa2_1(active0, 0x44000000000);
      case 111: // o
         return _jjMoveStringLiteralDfa2_1(active0, 0x4001000000000);
      case 113: // q
         if ((active0 & 0x100000000) != 0)
            return _jjStartNfaWithStates_1(1, 32, 30);
         break;
      case 114: // r
         if ((active0 & 0x10000000000) != 0)
            return _jjStartNfaWithStates_1(1, 40, 30);
         return _jjMoveStringLiteralDfa2_1(active0, 0x1000);
      case 116: // t
         if ((active0 & 0x1000000) != 0)
            return _jjStartNfaWithStates_1(1, 24, 30);
         else if ((active0 & 0x4000000) != 0)
            return _jjStartNfaWithStates_1(1, 26, 30);
         break;
      case 117: // u
         return _jjMoveStringLiteralDfa2_1(active0, 0x4000);
      case 124: // |
         if ((active0 & 0x8000000000) != 0) // ||
            return _jjStopAtPos(1, 39); // ELParserConstants.OR0
         break;
      default :
         break;
   }
   return _jjStartNfa_1(0, active0);
}
int _jjMoveStringLiteralDfa2_1(int old0, int active0)
{
   if (((active0 &= old0)) == 0)
      return _jjStartNfa_1(0, old0);
   try { curChar_ = input_stream_.readCharCode(); }
   on ReaderIOException catch(e) {
      _jjStopStringLiteralDfa_1(1, active0);
      return 2;
   }
   switch(curChar_)
   {
      case 100:
         if ((active0 & 0x4000000000) != 0)
            return _jjStartNfaWithStates_1(2, 38, 30);
         else if ((active0 & 0x4000000000000) != 0)
            return _jjStartNfaWithStates_1(2, 50, 30);
         break;
      case 108:
         return _jjMoveStringLiteralDfa3_1(active0, 0x6000);
      case 112:
         return _jjMoveStringLiteralDfa3_1(active0, 0x20000000000);
      case 115:
         return _jjMoveStringLiteralDfa3_1(active0, 0x40000000000);
      case 116:
         if ((active0 & 0x1000000000) != 0)
            return _jjStartNfaWithStates_1(2, 36, 30);
         break;
      case 117:
         return _jjMoveStringLiteralDfa3_1(active0, 0x1000);
      case 118:
         if ((active0 & 0x1000000000000) != 0)
            return _jjStartNfaWithStates_1(2, 48, 30);
         break;
      default :
         break;
   }
   return _jjStartNfa_1(1, active0);
}
int _jjMoveStringLiteralDfa3_1(int old0, int active0)
{
   if (((active0 &= old0)) == 0)
      return _jjStartNfa_1(1, old0);
   try { curChar_ = input_stream_.readCharCode(); }
   on ReaderIOException catch(e) {
      _jjStopStringLiteralDfa_1(2, active0);
      return 3;
   }
   switch(curChar_)
   {
      case 101:
         if ((active0 & 0x1000) != 0)
            return _jjStartNfaWithStates_1(3, 12, 30);
         break;
      case 108:
         if ((active0 & 0x4000) != 0)
            return _jjStartNfaWithStates_1(3, 14, 30);
         break;
      case 115:
         return _jjMoveStringLiteralDfa4_1(active0, 0x2000);
      case 116:
         return _jjMoveStringLiteralDfa4_1(active0, 0x60000000000);
      default :
         break;
   }
   return _jjStartNfa_1(2, active0);
}
int _jjMoveStringLiteralDfa4_1(int old0, int active0)
{
   if (((active0 &= old0)) == 0)
      return _jjStartNfa_1(2, old0);
   try { curChar_ = input_stream_.readCharCode(); }
   on ReaderIOException catch(e) {
      _jjStopStringLiteralDfa_1(3, active0);
      return 4;
   }
   switch(curChar_)
   {
      case 97:
         return _jjMoveStringLiteralDfa5_1(active0, 0x40000000000);
      case 101:
         if ((active0 & 0x2000) != 0)
            return _jjStartNfaWithStates_1(4, 13, 30);
         break;
      case 121:
         if ((active0 & 0x20000000000) != 0)
            return _jjStartNfaWithStates_1(4, 41, 30);
         break;
      default :
         break;
   }
   return _jjStartNfa_1(3, active0);
}
int _jjMoveStringLiteralDfa5_1(int old0, int active0)
{
   if (((active0 &= old0)) == 0)
      return _jjStartNfa_1(3, old0);
   try { curChar_ = input_stream_.readCharCode(); }
   on ReaderIOException catch(e) {
      _jjStopStringLiteralDfa_1(4, active0);
      return 5;
   }
   switch(curChar_)
   {
      case 110:
         return _jjMoveStringLiteralDfa6_1(active0, 0x40000000000);
      default :
         break;
   }
   return _jjStartNfa_1(4, active0);
}
int _jjMoveStringLiteralDfa6_1(int old0, int active0)
{
   if (((active0 &= old0)) == 0)
      return _jjStartNfa_1(4, old0);
   try { curChar_ = input_stream_.readCharCode(); }
   on ReaderIOException catch(e) {
      _jjStopStringLiteralDfa_1(5, active0);
      return 6;
   }
   switch(curChar_)
   {
      case 99:
         return _jjMoveStringLiteralDfa7_1(active0, 0x40000000000);
      default :
         break;
   }
   return _jjStartNfa_1(5, active0);
}
int _jjMoveStringLiteralDfa7_1(int old0, int active0)
{
   if (((active0 &= old0)) == 0)
      return _jjStartNfa_1(5, old0);
   try { curChar_ = input_stream_.readCharCode(); }
   on ReaderIOException catch(e) {
      _jjStopStringLiteralDfa_1(6, active0);
      return 7;
   }
   switch(curChar_)
   {
      case 101:
         return _jjMoveStringLiteralDfa8_1(active0, 0x40000000000);
      default :
         break;
   }
   return _jjStartNfa_1(6, active0);
}
int _jjMoveStringLiteralDfa8_1(int old0, int active0)
{
   if (((active0 &= old0)) == 0)
      return _jjStartNfa_1(6, old0);
   try { curChar_ = input_stream_.readCharCode(); }
   on ReaderIOException catch(e) {
      _jjStopStringLiteralDfa_1(7, active0);
      return 8;
   }
   switch(curChar_)
   {
      case 111:
         return _jjMoveStringLiteralDfa9_1(active0, 0x40000000000);
      default :
         break;
   }
   return _jjStartNfa_1(7, active0);
}
int _jjMoveStringLiteralDfa9_1(int old0, int active0)
{
   if (((active0 &= old0)) == 0)
      return _jjStartNfa_1(7, old0);
   try { curChar_ = input_stream_.readCharCode(); }
   on ReaderIOException catch(e) {
      _jjStopStringLiteralDfa_1(8, active0);
      return 9;
   }
   switch(curChar_)
   {
      case 102:
         if ((active0 & 0x40000000000) != 0)
            return _jjStartNfaWithStates_1(9, 42, 30);
         break;
      default :
         break;
   }
   return _jjStartNfa_1(8, active0);
}
int _jjStartNfaWithStates_1(int pos, int kind, int state)
{
   jjmatchedKind_ = kind;
   jjmatchedPos_ = pos;
   try { curChar_ = input_stream_.readCharCode(); }
   on ReaderIOException catch(e) { return pos + 1; }
   return _jjMoveNfa_1(state, pos + 1);
}
static final List<int> jjbitVec3_ = const [
   0x1ff00000fffffffe, 0xffffffffffffc000, 0xffffffff, 0x600000000000000
];
static final List<int> jjbitVec4 = [
   0x0, 0x0, 0x0, 0xff7fffffff7fffff
];
static final List<int> jjbitVec5_ = const [
   0x0, 0xffffffffffffffff, 0xffffffffffffffff, 0xffffffffffffffff
];
static final List<int> jjbitVec6_ = const [
   0xffffffffffffffff, 0xffffffffffffffff, 0xffff, 0x0
];
static final List<int> jjbitVec7_ = const [
   0xffffffffffffffff, 0xffffffffffffffff, 0x0, 0x0
];
static final List<int> jjbitVec8_ = const [
   0x3fffffffffff, 0x0, 0x0, 0x0
];
int _jjMoveNfa_1(int startState, int curPos)
{
   int startsAt = 0;
   jjnewStateCnt_ = 30;
   int i = 1;
   _jjstateSet[0] = startState;
   int kind = 0x7fffffff;
   for (;;)
   {
      if (++jjround_ == 0x7fffffff)
         _ReInitRounds();
      if (curChar_ < 64)
      {
         int l = 1 << curChar_;
         do
         {
            switch(_jjstateSet[--i])
            {
               case 0:
                  if ((0x3ff000000000000 & l) != 0) //'0'~'9'
                  {
                     if (kind > 8)
                        kind = 8;
                     _jjCheckNAddStates(18, 22);
                  }
                  else if ((0x1800000000 & l) != 0) //'#' || '$'
                  {
                     if (kind > 51)
                        kind = 51;
                     _jjCheckNAddTwoStates(28, 29);
                  }
                  else if (curChar_ == 39) // single quote
                     _jjCheckNAddStates(23, 25);
                  else if (curChar_ == 34) // double quote
                     _jjCheckNAddStates(26, 28);
                  else if (curChar_ == 46) // dot
                     _jjCheckNAdd(1);
                  break;
               case 30:
                  if ((0x3ff001000000000 & l) != 0) //'0'~'9' and '$'
                  {
                     if (kind > 52)
                        kind = 52;
                     _jjCheckNAdd(29);
                  }
                  if ((0x3ff001000000000 & l) != 0)
                  {
                     if (kind > 51)
                        kind = 51;
                     _jjCheckNAdd(28);
                  }
                  break;
               case 1:
                  if ((0x3ff000000000000 & l) == 0) //!= '0' ~ '9'
                     break;
                  if (kind > 9)
                     kind = 9;
                  _jjCheckNAddTwoStates(1, 2);
                  break;
               case 3:
                  if ((0x280000000000 & l) != 0) // '+' or '-'
                     _jjCheckNAdd(4);
                  break;
               case 4:
                  if ((0x3ff000000000000 & l) == 0) //!= '0' ~ '9'
                     break;
                  if (kind > 9)
                     kind = 9;
                  _jjCheckNAdd(4);
                  break;
               case 5:
                  if (curChar_ == 34) //double quote
                     _jjCheckNAddStates(26, 28);
                  break;
               case 6:
                  if ((0xfffffffbffffffff & l) != 0) //!= double quote
                     _jjCheckNAddStates(26, 28);
                  break;
               case 8:
                  if ((0x8400000000 & l) != 0) // double quote or single quote
                     _jjCheckNAddStates(26, 28);
                  break;
               case 9:
                  if (curChar_ == 34 && kind > 11) //double quote
                     kind = 11;
                  break;
               case 10:
                  if (curChar_ == 39) //single quote
                     _jjCheckNAddStates(23, 25);
                  break;
               case 11:
                  if ((0xffffff7fffffffff & l) != 0) //!= single quote
                     _jjCheckNAddStates(23, 25);
                  break;
               case 13:
                  if ((0x8400000000 & l) != 0) //double quote or single quote
                     _jjCheckNAddStates(23, 25);
                  break;
               case 14:
                  if (curChar_ == 39 && kind > 11) //single quote
                     kind = 11;
                  break;
               case 15:
                  if ((0x3ff000000000000 & l) == 0) //!= '0' ~ '9'
                     break;
                  if (kind > 8)
                     kind = 8;
                  _jjCheckNAddStates(18, 22);
                  break;
               case 16:
                  if ((0x3ff000000000000 & l) == 0) //!= '0' ~ '9'
                     break;
                  if (kind > 8)
                     kind = 8;
                  _jjCheckNAdd(16);
                  break;
               case 17:
                  if ((0x3ff000000000000 & l) != 0) //'0' ~ '9'
                     _jjCheckNAddTwoStates(17, 18);
                  break;
               case 18:
                  if (curChar_ != 46) //!= dot
                     break;
                  if (kind > 9)
                     kind = 9;
                  _jjCheckNAddTwoStates(19, 20);
                  break;
               case 19:
                  if ((0x3ff000000000000 & l) == 0) //!= '0' ~ '9'
                     break;
                  if (kind > 9)
                     kind = 9;
                  _jjCheckNAddTwoStates(19, 20);
                  break;
               case 21:
                  if ((0x280000000000 & l) != 0) // '+' or '-'
                     _jjCheckNAdd(22);
                  break;
               case 22:
                  if ((0x3ff000000000000 & l) == 0) //!= '0' ~ '9'
                     break;
                  if (kind > 9)
                     kind = 9;
                  _jjCheckNAdd(22);
                  break;
               case 23:
                  if ((0x3ff000000000000 & l) != 0) //'0' ~ '9'
                     _jjCheckNAddTwoStates(23, 24);
                  break;
               case 25:
                  if ((0x280000000000 & l) != 0) // '+' or '-'
                     _jjCheckNAdd(26);
                  break;
               case 26:
                  if ((0x3ff000000000000 & l) == 0) //!= '0' ~ '9'
                     break;
                  if (kind > 9)
                     kind = 9;
                  _jjCheckNAdd(26);
                  break;
               case 27:
                  if ((0x1800000000 & l) == 0) // != '#" and != '$'
                     break;
                  if (kind > 51)
                     kind = 51;
                  _jjCheckNAddTwoStates(28, 29);
                  break;
               case 28:
                  if ((0x3ff001000000000 & l) == 0) //!= '0' ~ '9' and != '$'
                     break;
                  if (kind > 51)
                     kind = 51;
                  _jjCheckNAdd(28);
                  break;
               case 29:
                  if ((0x3ff001000000000 & l) == 0) //!= '0' ~ '9' and != '$'
                     break;
                  if (kind > 52)
                     kind = 52;
                  _jjCheckNAdd(29);
                  break;
               default : break;
            }
         } while(i != startsAt);
      }
      else if (curChar_ < 128)
      {
         int l = 1 << (curChar_ & 0x3f);
         do
         {
            switch(_jjstateSet[--i])
            {
               case 0:
                  if ((0x7fffffe87fffffe & l) == 0) // != 'A'~'Z' and != 'a'~'z'
                     break;
                  if (kind > 51)
                     kind = 51;
                  _jjCheckNAddTwoStates(28, 29);
                  break;
               case 30:
                  if ((0x7fffffe87fffffe & l) != 0) //'A'~'Z' or 'a' ~ 'z'
                  {
                     if (kind > 52)
                        kind = 52;
                     _jjCheckNAdd(29);
                  }
                  if ((0x7fffffe87fffffe & l) != 0) //'A'~'Z' or 'a' ~ 'z'
                  {
                     if (kind > 51)
                        kind = 51;
                     _jjCheckNAdd(28);
                  }
                  break;
               case 2:
                  if ((0x2000000020 & l) != 0) // 'E' or 'e'
                     _jjAddStates(29, 30);
                  break;
               case 6:
                  if ((0xffffffffefffffff & l) != 0) // != '\'
                     _jjCheckNAddStates(26, 28);
                  break;
               case 7:
                  if (curChar_ == 92) // == '\'
                     _jjstateSet[jjnewStateCnt_++] = 8;
                  break;
               case 8:
                  if (curChar_ == 92) // == '\'
                     _jjCheckNAddStates(26, 28);
                  break;
               case 11:
                  if ((0xffffffffefffffff & l) != 0) // != '\'
                     _jjCheckNAddStates(23, 25);
                  break;
               case 12:
                  if (curChar_ == 92) // == '\'
                     _jjstateSet[jjnewStateCnt_++] = 13;
                  break;
               case 13:
                  if (curChar_ == 92) // == '\'
                     _jjCheckNAddStates(23, 25);
                  break;
               case 20:
                  if ((0x2000000020 & l) != 0) // 'E' or 'e'
                     _jjAddStates(31, 32);
                  break;
               case 24:
                  if ((0x2000000020 & l) != 0) // 'E' or 'e'
                     _jjAddStates(33, 34);
                  break;
               case 28:
                  if ((0x7fffffe87fffffe & l) == 0) //!= 'A'~'Z' or 'a' ~ 'z'
                     break;
                  if (kind > 51)
                     kind = 51;
                  _jjCheckNAdd(28);
                  break;
               case 29:
                  if ((0x7fffffe87fffffe & l) == 0) //!= 'A'~'Z' or 'a' ~ 'z'
                     break;
                  if (kind > 52)
                     kind = 52;
                  _jjCheckNAdd(29);
                  break;
               default : break;
            }
         } while(i != startsAt);
      }
      else
      {
         int hiByte = (curChar_ >> 8);
         int i1 = hiByte >> 6;
         int l1 = 1 << (hiByte & 0x3f);
         int i2 = (curChar_ & 0xff) >> 6;
         int l2 = 1 << (curChar_ & 0x3f);
         do
         {
            switch(_jjstateSet[--i])
            {
               case 0:
                  if (!_jjCanMove_1(hiByte, i1, i2, l1, l2))
                     break;
                  if (kind > 51)
                     kind = 51;
                  _jjCheckNAddTwoStates(28, 29);
                  break;
               case 30:
                  if (_jjCanMove_1(hiByte, i1, i2, l1, l2))
                  {
                     if (kind > 51)
                        kind = 51;
                     _jjCheckNAdd(28);
                  }
                  if (_jjCanMove_1(hiByte, i1, i2, l1, l2))
                  {
                     if (kind > 52)
                        kind = 52;
                     _jjCheckNAdd(29);
                  }
                  break;
               case 6:
                  if (_jjCanMove_0(hiByte, i1, i2, l1, l2))
                     _jjAddStates(26, 28);
                  break;
               case 11:
                  if (_jjCanMove_0(hiByte, i1, i2, l1, l2))
                     _jjAddStates(23, 25);
                  break;
               case 28:
                  if (!_jjCanMove_1(hiByte, i1, i2, l1, l2))
                     break;
                  if (kind > 51)
                     kind = 51;
                  _jjCheckNAdd(28);
                  break;
               case 29:
                  if (!_jjCanMove_1(hiByte, i1, i2, l1, l2))
                     break;
                  if (kind > 52)
                     kind = 52;
                  _jjCheckNAdd(29);
                  break;
               default : break;
            }
         } while(i != startsAt);
      }
      if (kind != 0x7fffffff)
      {
         jjmatchedKind_ = kind;
         jjmatchedPos_ = curPos;
         kind = 0x7fffffff;
      }
      ++curPos;
      if ((i = jjnewStateCnt_) == (startsAt = 30 - (jjnewStateCnt_ = startsAt)))
         return curPos;
      try { curChar_ = input_stream_.readCharCode(); }
      on ReaderIOException catch(e) { return curPos; }
   }
}
static final List<int> jjnextStates_ = const [
   0, 1, 3, 4, 2, 0, 1, 4, 2, 0, 1, 4, 5, 2, 0, 1,
   2, 6, 16, 17, 18, 23, 24, 11, 12, 14, 6, 7, 9, 3, 4, 21,
   22, 25, 26,
];
static bool _jjCanMove_0(int hiByte, int i1, int i2, int l1, int l2)
{
   switch(hiByte)
   {
      case 0:
         return ((jjbitVec2_[i2] & l2) != 0);
      default :
         if ((jjbitVec0_[i1] & l1) != 0)
            return true;
         return false;
   }
}
static bool _jjCanMove_1(int hiByte, int i1, int i2, int l1, int l2)
{
   switch(hiByte)
   {
      case 0:
         return ((jjbitVec4[i2] & l2) != 0);
      case 48:
         return ((jjbitVec5_[i2] & l2) != 0);
      case 49:
         return ((jjbitVec6_[i2] & l2) != 0);
      case 51:
         return ((jjbitVec7_[i2] & l2) != 0);
      case 61:
         return ((jjbitVec8_[i2] & l2) != 0);
      default :
         if ((jjbitVec3_[i1] & l1) != 0)
            return true;
         return false;
   }
}

/** Token literal values. */
//static final List<String> jjstrLiteralImages = const [
//"", null, "\44\173", "\43\173", null, null, null, null, null, null, null, null,
//"\164\162\165\145", "\146\141\154\163\145", "\156\165\154\154", "\175", "\56", "\50", "\51",
//"\133", "\135", "\72", "\54", "\76", "\147\164", "\74", "\154\164", "\76\75",
//"\147\145", "\74\75", "\154\145", "\75\75", "\145\161", "\41\75", "\156\145", "\41",
//"\156\157\164", "\46\46", "\141\156\144", "\174\174", "\157\162", "\145\155\160\164\171",
//"\151\156\163\164\141\156\143\145\157\146", "\52", "\53", "\55", "\77", "\57", "\144\151\166", "\45", "\155\157\144", null,
//null, null, null, null, null, ];

//20120927, henrichen: #issue2, support Map, add two more tokens at end;
//i.e. '{' and '}'.
static final List<String> jjstrLiteralImages = const [
"", null, "\${", "#{", null, null, null, null, null, null, null, null,
"true", "false", "null", "}", ".", "(", ")",
"[", "]", ":", ",", ">", "gt", "<", "lt", ">=",
"ge", "<=", "le", "==", "eq", "!=", "ne", "!",
"not", "&&", "and", "||", "or", "empty",
"instanceof", "*", "+", "-", "?", "/", "div", "%", "mod", null,
null, null, null, null, null, "{", "}"];

/** Lexer state names. */
static final List<String> lexStateNames = const [
   "DEFAULT",
   "IN_EXPRESSION",
];

//20120927, henrichen: #issue2, support Map, add -1 for two more tokens at end;
//i.e. '{' and '}'.
/** Lex State array. */ // [2] == [3] == 1, [15] == 0, others is -1
static final List<int> jjnewLexState = const [
   -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, -1
];

//20120927, henrichen: #issue2, support Map (add token '{' and '}')
//static final List<int> jjtoToken_ = const [
//   0x11ffffffffffb0f,
//];
static final List<int> jjtoToken_ = const [
   0x71FFFFFFFFFFB0F,
];

static final List<int> jjtoSkip_ = const [ // ELParserConstants has no 4 ~ 7
   0xf0,
];
SimpleCharStream input_stream_;
final List<int> _jjrounds = _newIntList(30);
final List<int> _jjstateSet = _newIntList(60);
int curChar_ = 0;

/** Constructor. */
ELParserTokenManager(SimpleCharStream stream, [int lexState]){
//  if (SimpleCharStream.staticFlag)
//    throw new Error("ERROR: Cannot use a static CharStream class with a non-static lexical analyzer.");
  input_stream_ = stream;

   if (lexState != null)
      SwitchTo(lexState);
}

/** Reinitialise parser. */
void _ReInitRounds()
{
   int i = 0;
   jjround_ = 0x80000001;
   for (i = 30; i-- > 0;)
      _jjrounds[i] = 0x80000000;
}

/** Reinitialise parser. */
void ReInit(SimpleCharStream stream, [int lexState])
{
  jjmatchedPos_ = jjnewStateCnt_ = 0;
  curLexState_ = defaultLexState_;
  input_stream_ = stream;
  _ReInitRounds();

  if (lexState != null)
    SwitchTo(lexState);
}

/** Switch to specified lex state. */
void SwitchTo(int lexState)
{
   if (lexState >= 2 || lexState < 0)
      throw new TokenMgrError.fromMessage("Error: Ignoring invalid lexical state : ${lexState}. State unchanged.", TokenMgrError.INVALID_LEXICAL_STATE);
   else
      curLexState_ = lexState;
}

Token jjFillToken_()
{
   Token t;
   String curTokenImage;
   int beginLine = 0;
   int endLine = 0;
   int beginColumn = 0;
   int endColumn = 0;
   String im = jjstrLiteralImages[jjmatchedKind_];
   curTokenImage = (im == null) ? input_stream_.GetImage() : im;
   beginLine = input_stream_.getBeginLine();
   beginColumn = input_stream_.getBeginColumn();
   endLine = input_stream_.getEndLine();
   endColumn = input_stream_.getEndColumn();
   t = Token.newToken(jjmatchedKind_, curTokenImage);

   t.beginLine_ = beginLine;
   t.endLine_ = endLine;
   t.beginColumn_ = beginColumn;
   t.endColumn_ = endColumn;

   return t;
}

int curLexState_ = 0;
int defaultLexState_ = 0;
int jjnewStateCnt_ = 0;
int jjround_ = 0;
int jjmatchedPos_ = 0;
int jjmatchedKind_ = 0;

/** Get the next Token. */
Token getNextToken()
{
  Token matchedToken;
  int curPos = 0;

  EOFLoop :
  for (;;)
  {
   try
   {
      curChar_ = input_stream_.BeginToken();
   }
   on ReaderIOException catch(e)
   {
      jjmatchedKind_ = 0;
      matchedToken = jjFillToken_();
      return matchedToken;
   }

   switch(curLexState_)
   {
     case 0: //ELParserConstants.DEFAULT
       jjmatchedKind_ = 0x7fffffff;
       jjmatchedPos_ = 0;
       curPos = _jjMoveStringLiteralDfa0_0();
       break;
     case 1: //ELParserConstants.IN_EXPRESSION
       try { input_stream_.backup(0);
          while (curChar_ <= 32 && (0x100002600 & (1 << curChar_)) != 0) //skip blank chars(TAB,LF,CR,SP)
             curChar_ = input_stream_.BeginToken();
       }
       on ReaderIOException catch (e1) { continue EOFLoop; }
       jjmatchedKind_ = 0x7fffffff;
       jjmatchedPos_ = 0;
       curPos = _jjMoveStringLiteralDfa0_1();
//20120927, henrichen: #issue2, support Map, add two more tokens '{' and '}'.
//       if (jjmatchedPos_ == 0 && jjmatchedKind_ > 56)
//       {
//          jjmatchedKind_ = 56;
//       }
       if (jjmatchedPos_ == 0 && jjmatchedKind_ > 58)
       {
          jjmatchedKind_ = 56; //ELParserConstants.ILLEGAL_CHARACTER
       }
       break;
   }
     if (jjmatchedKind_ != 0x7fffffff)
     {
        if (jjmatchedPos_ + 1 < curPos)
           input_stream_.backup(curPos - jjmatchedPos_ - 1);
        if ((jjtoToken_[jjmatchedKind_ >> 6] & (1 << (jjmatchedKind_ & 0x3f))) != 0)
        {
           matchedToken = jjFillToken_();
       if (jjnewLexState[jjmatchedKind_] != -1)
         curLexState_ = jjnewLexState[jjmatchedKind_];
           return matchedToken;
        }
        else
        {
         if (jjnewLexState[jjmatchedKind_] != -1)
           curLexState_ = jjnewLexState[jjmatchedKind_];
           continue EOFLoop;
        }
     }
     int error_line = input_stream_.getEndLine();
     int error_column = input_stream_.getEndColumn();
     String error_after = null;
     bool EOFSeen = false;
     try { input_stream_.readCharCode(); input_stream_.backup(1); }
     on ReaderIOException catch (e1) {
        EOFSeen = true;
        error_after = curPos <= 1 ? "" : input_stream_.GetImage();
        if (curChar_ == '\n' || curChar_ == '\r') {
           error_line++;
           error_column = 0;
        }
        else
           error_column++;
     }
     if (!EOFSeen) {
        input_stream_.backup(1);
        error_after = curPos <= 1 ? "" : input_stream_.GetImage();
     }
     throw new TokenMgrError(EOFSeen, curLexState_, error_line, error_column, error_after, curChar_, TokenMgrError.LEXICAL_ERROR);
  }
}

void _jjCheckNAdd(int state)
{
   if (_jjrounds[state] != jjround_)
   {
      _jjstateSet[jjnewStateCnt_++] = state;
      _jjrounds[state] = jjround_;
   }
}
void _jjAddStates(int start, int end)
{
   do {
      _jjstateSet[jjnewStateCnt_++] = jjnextStates_[start];
   } while (start++ != end);
}
void _jjCheckNAddTwoStates(int state1, int state2)
{
   _jjCheckNAdd(state1);
   _jjCheckNAdd(state2);
}

void _jjCheckNAddStates(int start, int end)
{
   do {
      _jjCheckNAdd(jjnextStates_[start]);
   } while (start++ != end);
}

}
