       H  �@        T��         �         G   ieee       ieee �     �      ieee   std_logic_1164   all     �     :   ALUCommands  q �        )  .�  J9  e�  ��  �A  ��  ��  �I 	� $� @Q [� w �Y �� �	 �a ��  6i Q� m �q �� �! �� �y �1 �� �� 	Y   � <! Wy r� �) �� �� Б �a       *  2�  N!  iy  ��  �)  ��  ��  �1 � (� D9 _� z� �A �� �� �I � � :Q U� q �Y �� �	 ҩ �a � �� � A � $� @	 [a v� � �i �� �y �I  �          q     X  �  �     �     @     A     ' Q2     Y  #)      '     @      A     v  �[     A      2�     s   00  �[  2�     :   ALUAddBlock  2�  �     !     .�     '  *�  �     @     :�     ' Q2     6�  >�      Bi     @      :�     v  �[     :�      N!     s   01  �[  N!     :   	ALUFBlock  N!  �     !     J9     Bi  FQ  �     @     U�     ' Q2     R	  Y�      ]�     @      U�     v  �[     U�      iy     s   10  �[  iy     :   ALUShiftBlock  iy  �     !     e�     ]�  a�  �     @     qI     ' Q2     ma  u1      y     @      qI     v  �[     qI      ��     s   11  �[  ��     :   ALUMulBlock  ��  �     !     ��     y  }  �     @     ��     ' Q2     ��  ��      �q     @      ��     v  �[     ��      �)     s   0000  �[  �)     :   
FBlockZERO  �)  �     !     �A     �q  �Y  �     @     ��     ' Q2     �  ��      ��     @      ��     v  �[     ��      ��     s   0001  �[  ��     :   	FBlockNOR  ��  �     !     ��     ��  ��  �     @     �Q     ' Q2     �i  �9      �!     @      �Q     v  �[     �Q      ��     s   0011  �[  ��     :   
FBlockNOTA  ��  �     !      ��     �!  �	  �     @     ީ     ' Q2     ��  �      �y     @      ީ     v  �[     ީ      �1     s   0101  �[  �1     :   
FBlockNOTB  �1  �     !   !  �I     �y  �a  �     @     �     ' Q2     �  ��     �     @      �     v  �[     �     �     s   0110  �[ �     :   	FBlockXOR �  �     !   " 	�    � �  �     @    Y     ' Q2    q A     )     @     Y     v  �[    Y     (�     s   0111  �[ (�     :   
FBlockNAND (�  �     !   # $�    ) !  �     @    0�     ' Q2    ,� 4�     8�     @     0�     v  �[    0�     D9     s   1000  �[ D9     :   	FBlockAND D9  �     !   $ @Q    8� <i  �     @    L	     ' Q2    H! O�     S�     @     L	     v  �[    L	     _�     s   1001  �[ _�     :   
FBlockXNOR _�  �     !   % [�    S� W�  �     @    ga     ' Q2    cy kI     o1     @     ga     v  �[    ga     z�     s   1110  �[ z�     :   FBlockOR z�  �     !   & w    o1 s  �     @    ��     ' Q2    ~� ��     ��     @     ��     v  �[    ��     �A     s   1111  �[ �A     :   	FBlockONE �A  �     !   ' �Y    �� �q  �     @    �     ' Q2    �) ��     ��     @     �     v  �[    �     ��     s   0010  �[ ��     :   ShiftBlockArith ��  �     !   , ��    �� ��  �     @    �i     ' Q2    �� �Q     �9     @     �i     v  �[    �i     ��     s   0000  �[ ��     :   ShiftBlockLog ��  �     !   - �	    �9 �!  �     @    ��     ' Q2    �� ة     ܑ     @     ��     v  �[    ��     �I     s   0001  �[ �I     :   ShiftBlockRot �I  �     !   . �a    ܑ �y  �     @    �     ' Q2    �1 �     ��     @     �     v  �[    �     �     s   0100  �[ �     :   ShiftBlockSwap �  �     !   / ��    �� ��  �     @    q     ' Q2    � Y     A     @     q     v  �[    q     �     s   0000  �[ �     :   AddBlockAdd �  �     !   2     A )  �     @    &�     ' Q2    "� *�     .�     @     &�     v  �[    &�     :Q     s   0010  �[ :Q     :   AddBlockSub :Q  �     !   3 6i    .� 2�  �     @    B!     ' Q2    >9 F	     I�     @     B!     v  �[    B!     U�     s   0001  �[ U�     :   AddBlockAddCarr U�  �     !   4 Q�    I� M�  �     @    ]y     ' Q2    Y� aa     eI     @     ]y     v  �[    ]y     q     s   0011  �[ q     :   AddBlockSubCarr q  �     !   5 m    eI i1  �     @    x�     ' Q2    t� |�     ��     @     x�     v  �[    x�     �Y     s   0100  �[ �Y     :   AddBlockNeg �Y  �     !   6 �q    �� ��  �     @    �)     ' Q2    �A �     ��     @     �)     v  �[    �)     ��     s   0000  �[ ��     :   MulBlockLowByte ��  �     !   9 ��    �� ��  �     @    ��     ' Q2    �� �i     �Q     @     ��     v  �[    ��     �	     s   0001  �[ �	     :   MulBlockHighByt �	  �     !   : �!    �Q �9  �     v �         ҩ     @     ҩ     :   flag_C ҩ  �     !   > ��    �� ��  �     @    �a     :   flag_Z �a  �     !   ? �y    �� ֑  �     @    �     :   flag_N �  �     !   @ �1    �� �I  �     @    ��     :   flag_V ��  �     !   A ��    �� �  �     @    �     :   flag_S �  �     !   B ��    �� ��  �     @    A     :   flag_H A  �     !   C 	Y    �� q  �     @    �     :   flag_T �  �     !   D     �� )  �     @    $�     :   flag_I $�  �     !   E  �    �� �  �     @    ,�     ' Q2    (� 0i     4Q     @     ,�     v  �[    ,�     @	     s   00111111  �[ @	     :   flag_mask_ZCNVSH @	  �     !   H <!    4Q 89  �     @    G�     ' Q2    C� K�     O�     @     G�     v  �[    G�     [a     s   00011111  �[ [a     :   flag_mask_ZCNVS [a  �     !   I Wy    O� S�  �     @    c1     ' Q2    _I g     k     @     c1     v  �[    c1     v�     s   00011110  �[ v�     :   flag_mask_ZNVS v�  �     !   J r�    k n�  �     @    ~�     ' Q2    z� �q     �Y     @     ~�     v  �[    ~�     �     s   01000000  �[ �     :   flag_mask_T �  �     !   K �)    �Y �A  �     @    ��     ' Q2    �� ��     ��     @     ��     v  �[    ��     �i     s   00000011  �[ �i     :   flag_mask_ZC �i  �     !   L ��    �� ��  �     @    �9     ' Q2    �Q �!     �	     @     �9     v  �[    �9     ��     s   00000000  �[ ��     :   flag_mask_KEEPALL ��  �     !   M ��    �	 ��  �     v  ��         �y     :   RegOp2 �y  �     !   Q Б    ̩  [  �     :   ImmedOp2 �I  �     !   R �a    ̩  C  �     P             %     �  �         �  q �     �   FC:/Users/Albert/Documents/GitHub/AVR-Processor/src/AVR/ALUCommands.vhd �  �                ALUCommands       ALUCommands      ALUCommands       ALUCommands      standard       std      std_logic_1164       ieee