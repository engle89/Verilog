/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/CS152B/Desktop/Group3/lab1/registerfile.v";
static int ng1[] = {0, 0};
static int ng2[] = {32, 0};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {1, 0};



static void Initial_15_0(char *t0)
{
    char t5[8];
    char t14[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    int t27;
    char *t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    int t34;
    int t35;

LAB0:    xsi_set_current_line(15, ng0);

LAB2:    xsi_set_current_line(16, ng0);
    xsi_set_current_line(16, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2888);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 2888);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    xsi_set_current_line(16, ng0);

LAB6:    xsi_set_current_line(17, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t0 + 2728);
    t16 = (t0 + 2728);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2728);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 2888);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_generic_convert_array_indices(t14, t15, t18, t21, 2, 1, t24, 32, 1);
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t15 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(16, ng0);
    t1 = (t0 + 2888);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng4)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2888);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB7:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t13, t12, 0, *((unsigned int *)t15), t35);
    goto LAB8;

}

static void Always_21_1(char *t0)
{
    char t13[8];
    char t15[8];
    char t16[8];
    char t49[8];
    char t50[8];
    char t62[8];
    char t68[8];
    char t114[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;
    char *t113;
    char *t115;
    char *t116;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    char *t122;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 4376);
    *((int *)t2) = 1;
    t3 = (t0 + 4088);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(21, ng0);

LAB5:    xsi_set_current_line(23, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t4);
    t34 = *((unsigned int *)t5);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB19;

LAB16:    if (t37 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t13) = 1;

LAB19:    t12 = (t13 + 4);
    t40 = *((unsigned int *)t12);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB20;

LAB21:
LAB22:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1688U);
    t4 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t4);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t2);
    t10 = *((unsigned int *)t5);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t2);
    t34 = *((unsigned int *)t5);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB29;

LAB26:    if (t37 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t16) = 1;

LAB29:    memset(t49, 0, 8);
    t12 = (t16 + 4);
    t40 = *((unsigned int *)t12);
    t41 = (~(t40));
    t42 = *((unsigned int *)t16);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t12) != 0)
        goto LAB32;

LAB33:    t17 = (t49 + 4);
    t45 = *((unsigned int *)t49);
    t46 = *((unsigned int *)t17);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB34;

LAB35:    memcpy(t68, t49, 8);

LAB36:    memset(t15, 0, 8);
    t95 = (t68 + 4);
    t96 = *((unsigned int *)t95);
    t97 = (~(t96));
    t98 = *((unsigned int *)t68);
    t99 = (t98 & t97);
    t100 = (t99 & 1U);
    if (t100 != 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t95) != 0)
        goto LAB50;

LAB51:    t102 = (t15 + 4);
    t103 = *((unsigned int *)t15);
    t104 = *((unsigned int *)t102);
    t105 = (t103 || t104);
    if (t105 > 0)
        goto LAB52;

LAB53:    t108 = *((unsigned int *)t15);
    t109 = (~(t108));
    t110 = *((unsigned int *)t102);
    t111 = (t109 || t110);
    if (t111 > 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t102) > 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t15) > 0)
        goto LAB58;

LAB59:    memcpy(t13, t114, 8);

LAB60:    t121 = (t0 + 2408);
    xsi_vlogvar_assign_value(t121, t13, 0, 0, 16);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1688U);
    t4 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t4);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t2);
    t10 = *((unsigned int *)t5);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t2);
    t34 = *((unsigned int *)t5);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB64;

LAB61:    if (t37 != 0)
        goto LAB63;

LAB62:    *((unsigned int *)t16) = 1;

LAB64:    memset(t49, 0, 8);
    t12 = (t16 + 4);
    t40 = *((unsigned int *)t12);
    t41 = (~(t40));
    t42 = *((unsigned int *)t16);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t12) != 0)
        goto LAB67;

LAB68:    t17 = (t49 + 4);
    t45 = *((unsigned int *)t49);
    t46 = *((unsigned int *)t17);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB69;

LAB70:    memcpy(t68, t49, 8);

LAB71:    memset(t15, 0, 8);
    t95 = (t68 + 4);
    t96 = *((unsigned int *)t95);
    t97 = (~(t96));
    t98 = *((unsigned int *)t68);
    t99 = (t98 & t97);
    t100 = (t99 & 1U);
    if (t100 != 0)
        goto LAB83;

LAB84:    if (*((unsigned int *)t95) != 0)
        goto LAB85;

LAB86:    t102 = (t15 + 4);
    t103 = *((unsigned int *)t15);
    t104 = *((unsigned int *)t102);
    t105 = (t103 || t104);
    if (t105 > 0)
        goto LAB87;

LAB88:    t108 = *((unsigned int *)t15);
    t109 = (~(t108));
    t110 = *((unsigned int *)t102);
    t111 = (t109 || t110);
    if (t111 > 0)
        goto LAB89;

LAB90:    if (*((unsigned int *)t102) > 0)
        goto LAB91;

LAB92:    if (*((unsigned int *)t15) > 0)
        goto LAB93;

LAB94:    memcpy(t13, t114, 8);

LAB95:    t121 = (t0 + 2568);
    xsi_vlogvar_assign_value(t121, t13, 0, 0, 16);
    goto LAB2;

LAB6:    xsi_set_current_line(23, ng0);

LAB9:    xsi_set_current_line(24, ng0);
    xsi_set_current_line(24, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2888);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);

LAB10:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_signed_less(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:    goto LAB8;

LAB11:    xsi_set_current_line(24, ng0);

LAB13:    xsi_set_current_line(25, ng0);
    t12 = ((char*)((ng3)));
    t14 = (t0 + 2728);
    t17 = (t0 + 2728);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2728);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 2888);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t15, t16, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_signed_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 2888);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 32);
    goto LAB10;

LAB14:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t14, t12, 0, *((unsigned int *)t16), t36);
    goto LAB15;

LAB18:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(30, ng0);

LAB23:    xsi_set_current_line(31, ng0);
    t14 = (t0 + 2008U);
    t17 = *((char **)t14);
    t14 = (t0 + 2728);
    t18 = (t0 + 2728);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 2728);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 1688U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t15, t16, t20, t23, 2, 1, t25, 5, 2);
    t24 = (t15 + 4);
    t45 = *((unsigned int *)t24);
    t28 = (!(t45));
    t26 = (t16 + 4);
    t46 = *((unsigned int *)t26);
    t31 = (!(t46));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB24;

LAB25:    goto LAB22;

LAB24:    t47 = *((unsigned int *)t15);
    t48 = *((unsigned int *)t16);
    t35 = (t47 - t48);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t14, t17, 0, *((unsigned int *)t16), t36);
    goto LAB25;

LAB28:    t11 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB29;

LAB30:    *((unsigned int *)t49) = 1;
    goto LAB33;

LAB32:    t14 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB33;

LAB34:    t18 = (t0 + 1848U);
    t19 = *((char **)t18);
    t18 = ((char*)((ng4)));
    memset(t50, 0, 8);
    t20 = (t19 + 4);
    t21 = (t18 + 4);
    t48 = *((unsigned int *)t19);
    t51 = *((unsigned int *)t18);
    t52 = (t48 ^ t51);
    t53 = *((unsigned int *)t20);
    t54 = *((unsigned int *)t21);
    t55 = (t53 ^ t54);
    t56 = (t52 | t55);
    t57 = *((unsigned int *)t20);
    t58 = *((unsigned int *)t21);
    t59 = (t57 | t58);
    t60 = (~(t59));
    t61 = (t56 & t60);
    if (t61 != 0)
        goto LAB40;

LAB37:    if (t59 != 0)
        goto LAB39;

LAB38:    *((unsigned int *)t50) = 1;

LAB40:    memset(t62, 0, 8);
    t23 = (t50 + 4);
    t63 = *((unsigned int *)t23);
    t64 = (~(t63));
    t65 = *((unsigned int *)t50);
    t66 = (t65 & t64);
    t67 = (t66 & 1U);
    if (t67 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t23) != 0)
        goto LAB43;

LAB44:    t69 = *((unsigned int *)t49);
    t70 = *((unsigned int *)t62);
    t71 = (t69 & t70);
    *((unsigned int *)t68) = t71;
    t25 = (t49 + 4);
    t26 = (t62 + 4);
    t29 = (t68 + 4);
    t72 = *((unsigned int *)t25);
    t73 = *((unsigned int *)t26);
    t74 = (t72 | t73);
    *((unsigned int *)t29) = t74;
    t75 = *((unsigned int *)t29);
    t76 = (t75 != 0);
    if (t76 == 1)
        goto LAB45;

LAB46:
LAB47:    goto LAB36;

LAB39:    t22 = (t50 + 4);
    *((unsigned int *)t50) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB40;

LAB41:    *((unsigned int *)t62) = 1;
    goto LAB44;

LAB43:    t24 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB44;

LAB45:    t77 = *((unsigned int *)t68);
    t78 = *((unsigned int *)t29);
    *((unsigned int *)t68) = (t77 | t78);
    t79 = (t49 + 4);
    t80 = (t62 + 4);
    t81 = *((unsigned int *)t49);
    t82 = (~(t81));
    t83 = *((unsigned int *)t79);
    t84 = (~(t83));
    t85 = *((unsigned int *)t62);
    t86 = (~(t85));
    t87 = *((unsigned int *)t80);
    t88 = (~(t87));
    t28 = (t82 & t84);
    t31 = (t86 & t88);
    t89 = (~(t28));
    t90 = (~(t31));
    t91 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t91 & t89);
    t92 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t92 & t90);
    t93 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t93 & t89);
    t94 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t94 & t90);
    goto LAB47;

LAB48:    *((unsigned int *)t15) = 1;
    goto LAB51;

LAB50:    t101 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t101) = 1;
    goto LAB51;

LAB52:    t106 = (t0 + 2008U);
    t107 = *((char **)t106);
    goto LAB53;

LAB54:    t106 = (t0 + 2728);
    t112 = (t106 + 56U);
    t113 = *((char **)t112);
    t115 = (t0 + 2728);
    t116 = (t115 + 72U);
    t117 = *((char **)t116);
    t118 = (t0 + 2728);
    t119 = (t118 + 64U);
    t120 = *((char **)t119);
    t121 = (t0 + 1368U);
    t122 = *((char **)t121);
    xsi_vlog_generic_get_array_select_value(t114, 16, t113, t117, t120, 2, 1, t122, 5, 2);
    goto LAB55;

LAB56:    xsi_vlog_unsigned_bit_combine(t13, 16, t107, 16, t114, 16);
    goto LAB60;

LAB58:    memcpy(t13, t107, 8);
    goto LAB60;

LAB63:    t11 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB64;

LAB65:    *((unsigned int *)t49) = 1;
    goto LAB68;

LAB67:    t14 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB68;

LAB69:    t18 = (t0 + 1848U);
    t19 = *((char **)t18);
    t18 = ((char*)((ng4)));
    memset(t50, 0, 8);
    t20 = (t19 + 4);
    t21 = (t18 + 4);
    t48 = *((unsigned int *)t19);
    t51 = *((unsigned int *)t18);
    t52 = (t48 ^ t51);
    t53 = *((unsigned int *)t20);
    t54 = *((unsigned int *)t21);
    t55 = (t53 ^ t54);
    t56 = (t52 | t55);
    t57 = *((unsigned int *)t20);
    t58 = *((unsigned int *)t21);
    t59 = (t57 | t58);
    t60 = (~(t59));
    t61 = (t56 & t60);
    if (t61 != 0)
        goto LAB75;

LAB72:    if (t59 != 0)
        goto LAB74;

LAB73:    *((unsigned int *)t50) = 1;

LAB75:    memset(t62, 0, 8);
    t23 = (t50 + 4);
    t63 = *((unsigned int *)t23);
    t64 = (~(t63));
    t65 = *((unsigned int *)t50);
    t66 = (t65 & t64);
    t67 = (t66 & 1U);
    if (t67 != 0)
        goto LAB76;

LAB77:    if (*((unsigned int *)t23) != 0)
        goto LAB78;

LAB79:    t69 = *((unsigned int *)t49);
    t70 = *((unsigned int *)t62);
    t71 = (t69 & t70);
    *((unsigned int *)t68) = t71;
    t25 = (t49 + 4);
    t26 = (t62 + 4);
    t29 = (t68 + 4);
    t72 = *((unsigned int *)t25);
    t73 = *((unsigned int *)t26);
    t74 = (t72 | t73);
    *((unsigned int *)t29) = t74;
    t75 = *((unsigned int *)t29);
    t76 = (t75 != 0);
    if (t76 == 1)
        goto LAB80;

LAB81:
LAB82:    goto LAB71;

LAB74:    t22 = (t50 + 4);
    *((unsigned int *)t50) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB75;

LAB76:    *((unsigned int *)t62) = 1;
    goto LAB79;

LAB78:    t24 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB79;

LAB80:    t77 = *((unsigned int *)t68);
    t78 = *((unsigned int *)t29);
    *((unsigned int *)t68) = (t77 | t78);
    t79 = (t49 + 4);
    t80 = (t62 + 4);
    t81 = *((unsigned int *)t49);
    t82 = (~(t81));
    t83 = *((unsigned int *)t79);
    t84 = (~(t83));
    t85 = *((unsigned int *)t62);
    t86 = (~(t85));
    t87 = *((unsigned int *)t80);
    t88 = (~(t87));
    t28 = (t82 & t84);
    t31 = (t86 & t88);
    t89 = (~(t28));
    t90 = (~(t31));
    t91 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t91 & t89);
    t92 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t92 & t90);
    t93 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t93 & t89);
    t94 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t94 & t90);
    goto LAB82;

LAB83:    *((unsigned int *)t15) = 1;
    goto LAB86;

LAB85:    t101 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t101) = 1;
    goto LAB86;

LAB87:    t106 = (t0 + 2008U);
    t107 = *((char **)t106);
    goto LAB88;

LAB89:    t106 = (t0 + 2728);
    t112 = (t106 + 56U);
    t113 = *((char **)t112);
    t115 = (t0 + 2728);
    t116 = (t115 + 72U);
    t117 = *((char **)t116);
    t118 = (t0 + 2728);
    t119 = (t118 + 64U);
    t120 = *((char **)t119);
    t121 = (t0 + 1528U);
    t122 = *((char **)t121);
    xsi_vlog_generic_get_array_select_value(t114, 16, t113, t117, t120, 2, 1, t122, 5, 2);
    goto LAB90;

LAB91:    xsi_vlog_unsigned_bit_combine(t13, 16, t107, 16, t114, 16);
    goto LAB95;

LAB93:    memcpy(t13, t107, 8);
    goto LAB95;

}


extern void work_m_00000000003444703189_1661724263_init()
{
	static char *pe[] = {(void *)Initial_15_0,(void *)Always_21_1};
	xsi_register_didat("work_m_00000000003444703189_1661724263", "isim/registerfile_tb_isim_beh.exe.sim/work/m_00000000003444703189_1661724263.didat");
	xsi_register_executes(pe);
}
