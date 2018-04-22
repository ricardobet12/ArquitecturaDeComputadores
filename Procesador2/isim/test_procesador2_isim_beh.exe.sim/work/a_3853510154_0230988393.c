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
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4670);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB6:    t5 = (t0 + 4672);
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
    t8 = (t0 + 4674);
    t11 = xsi_mem_cmp(t8, t9, 6U);
    if (t11 == 1)
        goto LAB10;

LAB19:    t12 = (t0 + 4680);
    t14 = xsi_mem_cmp(t12, t9, 6U);
    if (t14 == 1)
        goto LAB11;

LAB20:    t15 = (t0 + 4686);
    t17 = xsi_mem_cmp(t15, t9, 6U);
    if (t17 == 1)
        goto LAB12;

LAB21:    t18 = (t0 + 4692);
    t20 = xsi_mem_cmp(t18, t9, 6U);
    if (t20 == 1)
        goto LAB13;

LAB22:    t21 = (t0 + 4698);
    t23 = xsi_mem_cmp(t21, t9, 6U);
    if (t23 == 1)
        goto LAB14;

LAB23:    t24 = (t0 + 4704);
    t26 = xsi_mem_cmp(t24, t9, 6U);
    if (t26 == 1)
        goto LAB15;

LAB24:    t27 = (t0 + 4710);
    t29 = xsi_mem_cmp(t27, t9, 6U);
    if (t29 == 1)
        goto LAB16;

LAB25:    t30 = (t0 + 4716);
    t32 = xsi_mem_cmp(t30, t9, 6U);
    if (t32 == 1)
        goto LAB17;

LAB26:
LAB18:
LAB9:    goto LAB2;

LAB8:;
LAB10:    xsi_set_current_line(27, ng0);
    t33 = (t0 + 4722);
    t35 = (t0 + 2912);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t33, 6U);
    xsi_driver_first_trans_fast_port(t35);
    goto LAB9;

LAB11:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 4728);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB12:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 4734);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB13:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 4740);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB14:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 4746);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB15:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 4752);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB16:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 4758);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB17:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 4764);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB27:;
}


extern void work_a_3853510154_0230988393_init()
{
	static char *pe[] = {(void *)work_a_3853510154_0230988393_p_0};
	xsi_register_didat("work_a_3853510154_0230988393", "isim/test_procesador2_isim_beh.exe.sim/work/a_3853510154_0230988393.didat");
	xsi_register_executes(pe);
}
