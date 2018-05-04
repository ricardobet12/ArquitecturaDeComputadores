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
static const char *ng0 = "C:/Users/Richy/Desktop/Proyectos ISE/Procesador1/UC.vhd";



static void work_a_3853510154_0230988393_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    int t50;
    char *t51;
    int t53;
    char *t54;
    int t56;
    char *t57;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;

LAB0:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4702);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB6:    t5 = (t0 + 4704);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB7:
LAB5:
LAB2:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    goto LAB2;

LAB4:    xsi_set_current_line(25, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t8 = (t0 + 4706);
    t11 = xsi_mem_cmp(t8, t9, 6U);
    if (t11 == 1)
        goto LAB10;

LAB27:    t12 = (t0 + 4712);
    t14 = xsi_mem_cmp(t12, t9, 6U);
    if (t14 == 1)
        goto LAB11;

LAB28:    t15 = (t0 + 4718);
    t17 = xsi_mem_cmp(t15, t9, 6U);
    if (t17 == 1)
        goto LAB12;

LAB29:    t18 = (t0 + 4724);
    t20 = xsi_mem_cmp(t18, t9, 6U);
    if (t20 == 1)
        goto LAB13;

LAB30:    t21 = (t0 + 4730);
    t23 = xsi_mem_cmp(t21, t9, 6U);
    if (t23 == 1)
        goto LAB14;

LAB31:    t24 = (t0 + 4736);
    t26 = xsi_mem_cmp(t24, t9, 6U);
    if (t26 == 1)
        goto LAB15;

LAB32:    t27 = (t0 + 4742);
    t29 = xsi_mem_cmp(t27, t9, 6U);
    if (t29 == 1)
        goto LAB16;

LAB33:    t30 = (t0 + 4748);
    t32 = xsi_mem_cmp(t30, t9, 6U);
    if (t32 == 1)
        goto LAB17;

LAB34:    t33 = (t0 + 4754);
    t35 = xsi_mem_cmp(t33, t9, 6U);
    if (t35 == 1)
        goto LAB18;

LAB35:    t36 = (t0 + 4760);
    t38 = xsi_mem_cmp(t36, t9, 6U);
    if (t38 == 1)
        goto LAB19;

LAB36:    t39 = (t0 + 4766);
    t41 = xsi_mem_cmp(t39, t9, 6U);
    if (t41 == 1)
        goto LAB20;

LAB37:    t42 = (t0 + 4772);
    t44 = xsi_mem_cmp(t42, t9, 6U);
    if (t44 == 1)
        goto LAB21;

LAB38:    t45 = (t0 + 4778);
    t47 = xsi_mem_cmp(t45, t9, 6U);
    if (t47 == 1)
        goto LAB22;

LAB39:    t48 = (t0 + 4784);
    t50 = xsi_mem_cmp(t48, t9, 6U);
    if (t50 == 1)
        goto LAB23;

LAB40:    t51 = (t0 + 4790);
    t53 = xsi_mem_cmp(t51, t9, 6U);
    if (t53 == 1)
        goto LAB24;

LAB41:    t54 = (t0 + 4796);
    t56 = xsi_mem_cmp(t54, t9, 6U);
    if (t56 == 1)
        goto LAB25;

LAB42:
LAB26:
LAB9:    goto LAB2;

LAB8:;
LAB10:    xsi_set_current_line(27, ng0);
    t57 = (t0 + 4802);
    t59 = (t0 + 2912);
    t60 = (t59 + 56U);
    t61 = *((char **)t60);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    memcpy(t63, t57, 6U);
    xsi_driver_first_trans_fast_port(t59);
    goto LAB9;

LAB11:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 4808);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB12:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 4814);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB13:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 4820);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB14:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 4826);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB15:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 4832);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB16:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 4838);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB17:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 4844);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB18:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 4850);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB19:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 4856);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB20:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4862);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB21:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4868);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB22:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 4874);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB23:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4880);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB24:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4886);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB25:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4892);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB43:;
}


extern void work_a_3853510154_0230988393_init()
{
	static char *pe[] = {(void *)work_a_3853510154_0230988393_p_0};
	xsi_register_didat("work_a_3853510154_0230988393", "isim/test_procesador2_isim_beh.exe.sim/work/a_3853510154_0230988393.didat");
	xsi_register_executes(pe);
}
