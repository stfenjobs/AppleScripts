FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  4     �� 

�� 
ldt  
 l   
 ����  n    
    1    	��
�� 
dstr  l    ����  l    ����  I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  ��  ��   	 o      ���� 0 	todaydate 	todayDate��  ��        l    ����  r        m    ����  Cp  n          1    ��
�� 
time  o    ���� 0 	todaydate 	todayDate��  ��        l     ��������  ��  ��     ��  l   ����  Q        k    �        O    � ! " ! k    � # #  $ % $ r    ! & ' & e     ( ( 1    ��
�� 
slct ' o      ���� 0 selected_messages   %  )�� ) X   " � *�� + * k   2 � , ,  - . - l   2 2�� / 0��   / 6 0 Retrieve information from the selected message     0 � 1 1 `   R e t r i e v e   i n f o r m a t i o n   f r o m   t h e   s e l e c t e d   m e s s a g e   .  2 3 2 r   2 7 4 5 4 n  2 5 6 7 6 1   3 5��
�� 
subj 7 o   2 3���� 0 selected_message   5 o      ���� 0 
thesubject 
theSubject 3  8 9 8 r   8 ? : ; : b   8 = < = < b   8 ; > ? > m   8 9 @ @ � A A  " ? o   9 :���� 0 
thesubject 
theSubject = m   ; < B B � C C  " ; o      ���� 0 
thesubject 
theSubject 9  D E D r   @ I F G F n  @ E H I H 1   A E��
�� 
sndr I o   @ A���� 0 selected_message   G o      ���� 0 	thesender 	theSender E  J K J r   J V L M L n   J R N O N 4  M R�� P
�� 
cwor P m   P Q����  O o   J M���� 0 	thesender 	theSender M o      ���� 0 thename theName K  Q R Q r   W h S T S b   W d U V U b   W b W X W b   W ^ Y Z Y m   W Z [ [ � \ \  R e p l y   Z o   Z ]���� 0 thename theName X m   ^ a ] ] � ^ ^    r e   V o   b c���� 0 
thesubject 
theSubject T o      ���� 0 the_task   R  _ ` _ r   i z a b a b   i v c d c b   i r e f e m   i l g g � h h  m e s s a g e : / / % 3 c f n  l q i j i 1   m q��
�� 
meid j o   l m���� 0 selected_message   d m   r u k k � l l  % 3 e b o      ���� 0 the_url   `  m n m r   { � o p o n  { � q r q 1   | ���
�� 
ctnt r o   { |���� 0 selected_message   p o      ���� 0 	the_notes   n  s t s r   � � u v u b   � � w x w b   � � y z y o   � ����� 0 the_url   z m   � � { { � | |  
 
 x o   � ����� 0 	the_notes   v o      ���� 0 	the_notes   t  } ~ } l   � ���  ���    #  Modify the selected message     � � � � :   M o d i f y   t h e   s e l e c t e d   m e s s a g e   ~  � � � r   � � � � � m   � ���
�� boovtrue � n      � � � 1   � ���
�� 
isrd � o   � ����� 0 selected_message   �  � � � l   � ��� � ���   � 5 / set selected_message's flagged status to true     � � � � ^   s e t   s e l e c t e d _ m e s s a g e ' s   f l a g g e d   s t a t u s   t o   t r u e   �  � � � l   � ��� � ���   � 4 . Set the flag index to 4 to use my reply flag     � � � � \   S e t   t h e   f l a g   i n d e x   t o   4   t o   u s e   m y   r e p l y   f l a g   �  � � � r   � � � � � m   � �����  � n      � � � 1   � ���
�� 
fidx � o   � ����� 0 selected_message   �  ��� � O   � � � � � k   � � � �  � � � l   � ��� � ���   � T N				tell default document					set theContext to context "Email"				end tell     � � � � � 	 	 	 	 t e l l   d e f a u l t   d o c u m e n t  	 	 	 	 	 s e t   t h e C o n t e x t   t o   c o n t e x t   " E m a i l "  	 	 	 	 e n d   t e l l   �  � � � r   � � � � � o   � ����� 0 	todaydate 	todayDate � o      ���� 0 
theduedate 
theDueDate �  ��� � O   � � � � � k   � � � �  � � � l   � ��� � ���   � ^ X Note: you can't set the project because it is read only, also 'new _inbox_ task' below     � � � � �   N o t e :   y o u   c a n ' t   s e t   t h e   p r o j e c t   b e c a u s e   i t   i s   r e a d   o n l y ,   a l s o   ' n e w   _ i n b o x _   t a s k '   b e l o w   �  � � � l   � ��� � ���   � � �					set theNewTask to make new inbox task with properties {name:the_task, note:the_notes, context:theContext, due date:theDueDate}     � � � � 	 	 	 	 	 s e t   t h e N e w T a s k   t o   m a k e   n e w   i n b o x   t a s k   w i t h   p r o p e r t i e s   { n a m e : t h e _ t a s k ,   n o t e : t h e _ n o t e s ,   c o n t e x t : t h e C o n t e x t ,   d u e   d a t e : t h e D u e D a t e }   �  � � � r   � � � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
FCit � �� ���
�� 
prdt � K   � � � � �� � �
�� 
pnam � o   � ����� 0 the_task   � �� � �
�� 
FCno � o   � ����� 0 	the_notes   � �� ���
�� 
FCDd � o   � ����� 0 
theduedate 
theDueDate��  ��   � o      ���� 0 
thenewtask 
theNewTask �  � � � I  � ��� ���
�� .OTREisalnull���     **** � J   � � � �  ��� � o   � ����� 0 
thenewtask 
theNewTask��  ��   �  ��� � I  � �������
�� .aevtodocnull  �    alis��  ��  ��   � 1   � ���
�� 
FCQE��   � m   � � � ��                                                                                  OFOC  alis    |  Machine                    �ڟH+   M;OmniFocus.app                                                  ���٫	        ����  	                Applications    ��      ���I     M; ��  ��  6Machine:Users: dfdnatural: Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c h i n e  +Users/dfdnatural/Applications/OmniFocus.app   /    ��  ��  �� 0 selected_message   + o   % &���� 0 selected_messages  ��   " m     � ��                                                                                  emal  alis    6  Machine                    �ڟH+  l��Mail.app                                                       n���-�B        ����  	                Applications    ��      �-ł    l��  Machine:Applications: Mail.app    M a i l . a p p    M a c h i n e  Applications/Mail.app   / ��      � � � l  � ���������  ��  ��   �  ��� � l  � ���������  ��  ��  ��    R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 estr eStr � �� ���
�� 
errn � o      ���� 0 enum eNum��    I �� ���
�� .sysodlogaskr        TEXT � b   � � � b   � � � b   � � � b   � � � m   � � � � � � F a i l e d   t r y i n g   t o   c r e a t e   O m n i f o c u s   t a s k s   f r o m   s e l e c t e d   m e s s a g e s   i n   M a i l . � l 	 ����� � m   � � � � �     E r r o r   M e s s a g e :  ��  ��   � o  ���� 0 estr eStr � m   � � � � �    N u m b e r   � o  ���� 0 enum eNum��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � �   � �   � �  ����  ��  ��   � �������� 0 selected_message  �� 0 estr eStr�� 0 enum eNum � 4����������� ��~�}�|�{�z�y�x @ B�w�v�u�t [ ]�s g�r k�q�p�o {�n�m�l ��k�j�i�h�g�f�e�d�c�b�a�`�_ � � � ��^
�� 
ldt 
�� .misccurdldt    ��� null
�� 
dstr�� 0 	todaydate 	todayDate��  Cp
� 
time
�~ 
slct�} 0 selected_messages  
�| 
kocl
�{ 
cobj
�z .corecnte****       ****
�y 
subj�x 0 
thesubject 
theSubject
�w 
sndr�v 0 	thesender 	theSender
�u 
cwor�t 0 thename theName�s 0 the_task  
�r 
meid�q 0 the_url  
�p 
ctnt�o 0 	the_notes  
�n 
isrd�m 
�l 
fidx�k 0 
theduedate 
theDueDate
�j 
FCQE
�i 
FCit
�h 
prdt
�g 
pnam
�f 
FCno
�e 
FCDd�d 
�c .corecrel****      � null�b 0 
thenewtask 
theNewTask
�a .OTREisalnull���     ****
�` .aevtodocnull  �    alis�_ 0 estr eStr � �]�\�[
�] 
errn�\ 0 enum eNum�[  
�^ .sysodlogaskr        TEXT��*�*j �,E/E�O���,FO �� �*�,EE�O ��[��l kh  ��,E�O��%�%E�O�a ,E` O_ a k/E` Oa _ %a %�%E` Oa �a ,%a %E` O�a ,E` O_ a %_ %E` Oe�a ,FOa �a  ,FOa ! I�E` "O*a #, :*�a $a %a &_ a '_ a (_ "a )a  *E` +O_ +kvj ,O*j -UU[OY�7UOPW X . /a 0a 1%�%a 2%�%j 3 ascr  ��ޭ