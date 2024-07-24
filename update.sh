#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��t� O�����������������������������������⾴
 �`N�������_s�����w_e_}�ŷ���4����_g�ݵ�7n��m��x�����G���I�SdI����Sё��OD���̚d���T�d�<�&��ҏSi�SzF��MhLb�����l#2� ��Q�d���j�?!6��L
y3@d�2�iO���jm��M4�l��d�1�A���g���= MO�Кhڦd�C#C&��xS�MOC��Lbjj�L�~��2���٢l&I��O��Țl�h���
z�L��O&F��A6�OS�~� &ɠ53�@i=M���i��j`��OS!����5M���M�2� Й6�mOЍ'���=)��zOQ�&h��zPފxL��S�Se4�O!�2yC#�MG��0�i��M�d�OF�A��� ��LMȚ4ڌ��h��z&�4�4mA�=M4�4d�����L���@6� ��F�5 � 44a�h	D#&�F��4`�OD�j�T��G�<S�MOT�SƤ��S)�2e0��T{Mbh�ԧ����==��ޑO��z�'��S4�О�����LL��S�OF��SM�5��6���\�-�����{�ʹf�b ���#��^@>�E<Pd+-B���(U�+�<R���o��׌n,��D�1Ѫ�8��RA <����o�IpD�
�r�Ǟc0�j�KaJ0kj#��5�AJ']K����v�2dׅ*�W���ND�H�b��˽E�H��a�&�|���4���H%R?F��v	%?-BS�g�P?|�L:����/�
j"C9�����"�X�[ �Ƨb�1��0s�dM�I"�p���`�m��n.ضf͜�����:���O�����w�)���j�V1	f}���,k`�\Q�ɡ>D$%�h����y���qm�O��}���^"�Cv�Sl�@�!����[�J�	� !-$h]�g5�Q�xl%����)L�D8Y	%���F\:G����J�A���jM?���������>���<�]�S��F~�~�~���P��q��gA��\^I�#{B\�SԒ���R�0�]ӡ���H2����V�� �Z�gi���
��]JN��j�G�̧�D�<�M 	���\�������Y�]\s��%�cǳigU������p��s-X��A �i	vO!�R�D�A��͹��D�&��Rm�8��Rb@�E�X�1I8b�F���r�#IJ�d�:����m��fW
Sw����{5����$�&�V�vvP�mP�48l5
��km[R��33!0��K�Z�b��@r$��0�@yr�6j���ySƔftg�A�T��G_+f�A�wM~���f~9�M�f+Jp
ð�MF����&����!��&�D�	$��1��� )0�R�p�Ñ}[���ZA��{_��`�(sS�����[���r���G`�!���77:�f�0�LG��GϹ�ౙS�@��9�X���V���[D�UVK��������V�]�z��Ҭ�eyGa��߻A�GG�M%l4��h�4�����0�|�@��/-�S��e�7-%���裙�94�f|x����¬��*���M�,�|TB�!Gʴ��0�:�Ģ��SaP2�%�IC� �wX&���9��&(��S����kl�.���B���Q�B�Jm�(o��tz�V�֥����=�D�n�+$�iu�M����=��Y�k)�-2�@�ƽ$W1/�^����@���@-���0�f�^�J���sݔ�X��a��\�I��w��B�.���
0�	J�J�̴��Ih��{9��#�4lX ���h[���݅��1�L��Q�{���n݋��ae����5�{ V��H�]�2��p]��~�G�(9�,�n^:Rv�WVf
IW&A�"=�@�V������X��
����>v#��!+rL8C8�3Z��Yp����֪�V��Y1�c�Cn� N=ܢ�s�z�v�zm��˻[e�J��ز!B���16�E.�B�E<��20��3���{~,(�!qZ�]�E�k��"�l�m��2R�~$��ь9B�� �c��]1<��Y0�>�OYruJj+��)��~��ځB2ct`A�Cj]�H���E��MZ�gN	�E�%���X02v�x8����\���`q0���1���|��_����A�5�~x�T�t���ks�4G\_D6�1�-���v�nvT��<zpּ5�Ў�wd�"���h\u��/�A���_[cy�i ζ��u��y/�����Swm���6R�^d��6��`h,v��3F$����D|8�;)���bճ�h��o����	_���S��[dТO]���*�(R�d*�~���f��)�ϧ�&��a�׻U��>�;Һ�Yr)�0�\ЃKg~�{�5��\�u����	Rcc6�����G���/��-��YEj2M ѫVmZ�E�>��h�V3֥�v��ק��ߺ�W�Tlܔ �{2���h���ͻ�B��ʘ 0�m�O�8W�:�ܾ��Sc��G:1:� xB�����3KV�wZ�8R��P �Q�ۢljF1�Ӕ�+�+�t3�q�z�9�P�n�\Z�9�.��B~�n�f������p�;xt�kW�9�S����#ْ�LZ}���{��I=x���RH��qVh�-�O�ί�c0�� W���aj���K����7� �P�Q�1�u��sI�(�&0�5��t��]_�8o-Y8oq���6]v��"3��e7�a��2��0A�Dh^gF��Ul� KB�� �������v���4D,�e���3��{zTM�@�>�j2�ߏ�B:ws�� �ğ�#��d���M�$���0��_k�_̂˭|��if�/�~F�i�Rr���ћB�a�����o/�4���Zr��,7~O=�5]gB��g�q����l���M`����d�	�sO-�#����`ARw�n�Z���}夦�EWA��mu����!��}3/�Kd��ʀ	��k�ߴ�;���)�Uao{T���u+&#��32s�NpS���[;�Nϩ-s�t��[���~�)C]��dQ�/��F��1^�t͗�~�C��a�g'7R��V-�֎,�_���Jsq�PՕ6f��%�+���#y;�`ku���� �k�G��q��5{��Q�:>�i!��{�,��<��ͳ�&�C���i�h<�߲��TA�w���'K�'		���JQ��ԍɒ'�&䚊��JF�^&�M'SCYc�.��y��&.�Z����`;����=1�R�V�GB~0fۈ�_���\�GE�vc���l�>˵�Kvpe��j<��7q`�,��{��R�3��H�g#�e���&�������5{�M��m���m.q#)�%V�o��������{厧v�Z�w�Í����%e�	_Z�i���r���D�:/	������m���)ȏ�n��9B��@���t�:��*��B����u��5��0�TL�,�ה�y>>�{hua�<S��\�©��6���mL��YY{���,���V�L�Tϫύ���Đ����U�ܔ�����7�;�Ly�t�;)�lٴu<=���m��z!ɩ��PA͞U ��/	 tz����)eҲ���v�Y��ͤ�A:u�%�~�A�'����i�j���h�^(�����{EH��Z�hdm��\�P��*~��P�[�c����Q�~̫z�+5�Y
�_�'�b��..
uy�����'��Q���-=��m"��:u�j��)���O�&�9�&S�q��.�� s��A���Qn7>L�{� �`�Sƽ��x�y�9�YJ�� (�S���g��k����Ωl`�=�%�J4�Hm7�=��҆�f$@b�Q�B9�z���5:�$aZ���.�"�Z>�/I��]�!;<`arQi���y��v���aL:��qL�W(u�gN�|=9�g��Mf�PWiV1L�W��ʃ�T�Z���]�6�C��Vk-��9�G�_f����'��(��4k+��wrn��}"����{�ȗ��N �*̄�iIC���PY�0�
s��� cd�u?w{oY5&zl��aخX|�Ü��܏M �$�3A~���+�����Y�E��܁d���$Px�@�B0���ʵ�'Rl�wN�hc�����u�&V.M��S���	���j`;�1#[�D�Q籶��}���Y��|���A�yW9��)�#���|Q���� �Se�B�.�✚g���SOν�L�r}聾~�� ��-Q��㒳�M2�j�)Vn�D��[��M0�[�%��b&�s#��g
��:b�S��/Y���&/sgE_��/�56���ѐ�M��?O-���_j?���A�pL�P�bF �7Gc}��=�h�<��M�1 D�#J�ۿ��>ʷꝍa�q���C�F�B�� ��:Bc�A"��'���1O�����q�&9Ă*�N��dhv<��n<s��s�;�6���%ٜ�lu��D��$fF�K�-��6���+,�ʕ�a��jӿ���3'��c�<!~%w�R�#�5����1U[�c}�A����9|��:��yғ��I@
��p ��Q�E�N�h8Hx��~F�^
��\�uyc�����S��!����Ѝ�U�wǅ�Z&��Է�5RiʟJ��`�x,�d�-����e�ww�����3���t�X�A�F��A�n�Hy������G����x�`�=�G�1�;-�GPf|�'�
��ө@9�������Z�I.������YT0�-�{�>^�e����2t����ՑdQ�u`���g�q!�Ib&`��D�~Ze� �'���Oi�E�Ȭ �rß�Yz�[=�9�/^��� �K�RŠ&�:��v%�|p�*��*F!/VRKz.z��AB�����9hY4�C�2ך�^�v'�R͈ŲuԒz�$4K�KE� %�yF��p3�]9�${�R{3Q��W#��4}78,���i�'̜��c�y�9U����@��A����p�$@��0��`Q�T���g�u���p���J�持k!�%ES0��E��r,�7Ol��3O"d9�!����+�w�C���`|��թp��_�*�\�V>Og�|v�59� %�n�J�s���iɈ�� ^���%aV���v�v�2�a�o�%���:�=dL���r]�����j�Y$�0 �M�=�W;o��٦O�1��@�!<l>T_c1��/#��� ��=�����j-Y�Te;-��ӳm��ǿ�j@8�X�����^y:��΃Oay/����f 2~�y�P�x����H�kڪ���KX�HBɾ����Ph�����o'[����p�n��U_*%(/ԯ�U�s:\ڨ�{9�)�Us��~�N�˚�1'�uX�9�u�<���\����o��I��_����2�u2.���/�o����<[9r��<c�'��wW�=��F鉮>n� 2Y;FbY1;e"1+�'U��7�t�C�xM�em��L7��R��.�	�(r7�y���Vn�g�����{�^�,ޥ��e���Z�a����&�Kdz�U���_㛩`p�Z���̦�P���	��_�n��h8������ޙ�,N?P1��f_�-�:�"�(�}:�{�P�3�{��1�����U���y��-��f�����AS㶴�����0 L�-�9*�G��&��R��^>�.���~���\�����+K�~�7��p|n�bX��D���Ԑ�T���D�03 ����n�?��g} ��(Uџ1�#g|�v�J��:`� 1�g�(���V*lx4��r��=��_�6O��xX�J \��t�i���Ӳ�fۧ$�X�$��+�g>'5?��9'�BFi��hNF��o�>ci��o�{�n��c����90�)��v�w]Ϫ��lM��K���1+�����
����G5�G����;hh16�����?�߼��v��כj���	����h8��s0K��g#o� �K�[F��q� ���8�8��en=����̩�hZ��Y����]��+]�Dd�J�x�Bg�ޛ����J���q�qڐO>�cZn2.!�M_3�<�J���s���\"�,�kQȣ5/ͳ����P����e��]ߦ�=��8�)]:������1_r�l���4Vx�:����u"M:	:�(Iޜڅ�BrWI=-v����lH=�f@ݩ\�z�ʶ��6�o�uޮ���}#ܔ�a��oIXUkD�).�Jl��[���d饔�'��=΢��@�E�1�S���̓���Q8>I��z�
��O��n�c�H��ʝ���Vj�k(�͕�8�=��)T=��Ǭ�f�W�bB���V>�n2�D�S���͚(05hOȱɹ/D�ˁ�\G�6��R�:]�J�ghF�7?B�_+��&	5*/+I{%����cH��'F�T�Y����Te��b�h��_OE�u�A��5ދjGv�6b(R�.�sL�eg���:�oSU�����u�&ߛF�A���B��K��r�^+���شO�㕶��/��̙Eш__T��6@^F�U!�������T������y�VC�B�˲se��!b&d��*?%>����S��n�-�/�=R�N�ê����_f�B3�`����@�����;D��t-�bfA�z{>s��U|�k���o��.Ko��/�i{�]�ԙ������kC����Ο����L�ެ#N� bP.�Gr~����k���3�βl��&m�z,)�Yo��t��χG�kU�i�u���x����m؍��b!��k���;�	�Y���������z�S����V����ۋW��:/�["�����yV�����YKH;W x�ݫ�:\i�E;{Ne���2����	1tjN� �h���S���a�G;\=���0�6iU��O�ҙ�d?>�6�Z����(���kI��2H!w���E'�c��hS� �%w�U�Sj�~2=D�-`t��hc����1n���I,u��ی�X}�ǜ����@P(������~�e��]��{g�;�w��k�8�t���u	VnMi!:��ѿ�D��t��rM�jg�@ F�DgA�����������kګ�G�����>� �r���t~t��Q&�p�9W6{2όu�Q��@�ϋQ��bM����^�ĶT��i�m�t��\؇.�������|�~�\�%��&*Fu�Z�]f�k��kt�ftˉ�a�Li?��Sf�3� �2��	���
|�� 1����D"@d��:*n�s(�E:\��jU욦���,��`R���u�����G��R�.5E7�٦������]B�E��f@A�5�g6�DZH�j��4
��_�N�7]�f�%��y;M�M�EՋ�+C�����b��aBn�n��4�.��ݚ�K��sGɇ�۠�C�0���=U��{V�����T�<,�0������P�Y��vw}�Tt��K��#e�����&���?_����'K�M�49d��=�1�+�B�݉�mn�RQ���x�?�5q&_�&A�p-�Oo"�U���az<¶���eW�D��<��$�v8MRU'�aCD���1��?X3D��=0�U+���u^ƺ�!�F1b��˄�*hI��Zw�K��U������&�35(���<��g������v�+M]�! �?�0]ux�!�~tGL�d�uC����G��2O�|Φi�"�u�z��z#w��Ix�أ�o��1�\������_�gZHc0���l@���n�m��}���e��s����%�S�o����K��O]@M+}"�N�hFqvITGe�%�	�a�#]WZ<�"�k�[�!u��`-�CoOY�7�W��e��Ur�z�O�JЌo��l���� ����P?88�͛;�2;�w�jj�x��}3����4,�ړ��/F��"��d&X�� a��κ�����֡�����z��s�� ��B� È�̝�n��3V�R�K_�����)�O�7H�g%�X�e�����C� �,��]���)d�� �R�h�5g�g{�� I�aB~�@ֻX4�4�`�K{JPu�#]���B�|٭�**�&��m�$��"H�^�����>4�����t�s@�,����H��`��?�u��+۶w����~��O]����7��K�_���PW7~�$�ǣ�7����}׋�׮���Y7
�n@!�ݑ=����՜l&R�z�~��'�� V�ہ|���AIp]
�
�ڣ����/�ߊ��T�Lw���!��<�g}�?�.�ݯ�!��#c�h��3������E}���7y�ܰ��Ξ���n��:ή�W�ߨ$�O4�����w��^���M�t��C@�����D�����#���v�/�N��k�&�Z���M���'ʜ��Z+Z!$����'��2z1�h5�k79tms�(�PEcF���9
�l J 1J�ߎ�9g���#�����-�\��1�3��ρq�v\^:����_Tݻv����n-��?픉ƇK�ľ�]��BB~�x