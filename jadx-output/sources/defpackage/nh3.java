package defpackage;

import java.io.IOException;
import java.util.Stack;

/* loaded from: classes.dex */
public final class nh3 implements ig3, mg3 {
    public static final int p = el3.f("qt  ");
    public int e;
    public int f;
    public long g;
    public int h;
    public al3 i;
    public int j;
    public int k;
    public kg3 l;
    public ph3[] m;
    public long n;
    public boolean o;
    public final al3 c = new al3(16);
    public final Stack<zg3> d = new Stack<>();
    public final al3 a = new al3(zk3.a);
    public final al3 b = new al3(4);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x018a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01c1  */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v4 */
    @Override // defpackage.ig3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(defpackage.gg3 r24, defpackage.ng3 r25) throws java.lang.InterruptedException, java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.nh3.a(gg3, ng3):int");
    }

    @Override // defpackage.mg3
    public final boolean b() {
        return true;
    }

    @Override // defpackage.ig3
    public final void c(kg3 kg3Var) {
        this.l = kg3Var;
    }

    @Override // defpackage.mg3
    public final long d(long j) {
        long j2 = Long.MAX_VALUE;
        for (ph3 ph3Var : this.m) {
            sh3 sh3Var = ph3Var.b;
            int iA = sh3Var.a(j);
            if (iA == -1) {
                iA = sh3Var.b(j);
            }
            long j3 = sh3Var.b[iA];
            if (j3 < j2) {
                j2 = j3;
            }
        }
        return j2;
    }

    @Override // defpackage.ig3
    public final boolean e(gg3 gg3Var) throws InterruptedException, IOException {
        return oh3.a(gg3Var, false);
    }

    @Override // defpackage.ig3
    public final void f(long j, long j2) {
        this.d.clear();
        this.h = 0;
        this.j = 0;
        this.k = 0;
        if (j == 0) {
            i();
            return;
        }
        ph3[] ph3VarArr = this.m;
        if (ph3VarArr != null) {
            for (ph3 ph3Var : ph3VarArr) {
                sh3 sh3Var = ph3Var.b;
                int iA = sh3Var.a(j2);
                if (iA == -1) {
                    iA = sh3Var.b(j2);
                }
                ph3Var.d = iA;
            }
        }
    }

    @Override // defpackage.mg3
    public final long g() {
        return this.n;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01c0, code lost:
    
        r7 = defpackage.lh3.a(r13, "TSOC", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01c6, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01cc, code lost:
    
        if (r13 != defpackage.lh3.y) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01ce, code lost:
    
        r6 = defpackage.lh3.b(r13, "ITUNESADVISORY", r5, r8, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01d4, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01db, code lost:
    
        if (r13 != defpackage.lh3.z) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01dd, code lost:
    
        r6 = defpackage.lh3.b(r13, "ITUNESGAPLESS", r5, r8, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01e4, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01eb, code lost:
    
        if (r13 != defpackage.lh3.A) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01ed, code lost:
    
        r7 = defpackage.lh3.a(r13, "TVSHOWSORT", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01f3, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01f9, code lost:
    
        if (r13 != defpackage.lh3.B) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01fb, code lost:
    
        r7 = defpackage.lh3.a(r13, "TVSHOW", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0201, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0204, code lost:
    
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0209, code lost:
    
        if (r13 != defpackage.lh3.C) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x020b, code lost:
    
        r7 = null;
        r10 = null;
        r13 = -1;
        r15 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x020f, code lost:
    
        r8 = r5.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0211, code lost:
    
        if (r8 >= r14) goto L306;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0213, code lost:
    
        r19 = r5.b();
        r12 = r5.b();
        r5.i(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0223, code lost:
    
        if (r12 != defpackage.ah3.D0) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0225, code lost:
    
        r7 = r5.j(r19 - 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x022e, code lost:
    
        if (r12 != defpackage.ah3.E0) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0230, code lost:
    
        r10 = r5.j(r19 - 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0239, code lost:
    
        if (r12 != defpackage.ah3.F0) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x023b, code lost:
    
        r15 = r19;
        r13 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x023f, code lost:
    
        r5.i(r19 - 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x024c, code lost:
    
        if ("com.apple.iTunes".equals(r7) == false) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0252, code lost:
    
        if ("iTunSMPB".equals(r10) == false) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0255, code lost:
    
        if (r13 != (-1)) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0258, code lost:
    
        r5.h(r13);
        r5.i(16);
        r8 = new com.google.android.gms.internal.ads.zzmj("und", r10, r5.j(r15 - 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x026c, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x026d, code lost:
    
        r5.h(r14);
        r6 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0279, code lost:
    
        r8 = r13 & 16777215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x027d, code lost:
    
        if (r8 != defpackage.lh3.c) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x027f, code lost:
    
        r8 = r5.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0289, code lost:
    
        if (r5.b() != defpackage.ah3.F0) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x028b, code lost:
    
        r5.i(8);
        r7 = r5.j(r8 - 16);
        r6 = new com.google.android.gms.internal.ads.zzmj("und", r7, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x029e, code lost:
    
        r8 = java.lang.String.valueOf(defpackage.ah3.a(r13));
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02ae, code lost:
    
        if (r8.length() == 0) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02b0, code lost:
    
        r6 = "Failed to parse comment attribute: ".concat(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02b5, code lost:
    
        r6 = new java.lang.String("Failed to parse comment attribute: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02bb, code lost:
    
        android.util.Log.w("MetadataUtil", r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02be, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x02c8, code lost:
    
        if (r8 == defpackage.lh3.a) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x02cc, code lost:
    
        if (r8 != defpackage.lh3.b) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x02d2, code lost:
    
        if (r8 == defpackage.lh3.h) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x02d6, code lost:
    
        if (r8 != defpackage.lh3.i) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02dc, code lost:
    
        if (r8 != defpackage.lh3.d) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x02de, code lost:
    
        r6 = defpackage.lh3.a(r13, "TDRC", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x02e4, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x02eb, code lost:
    
        if (r8 != defpackage.lh3.e) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x02ed, code lost:
    
        r6 = defpackage.lh3.a(r13, "TPE1", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x02f3, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x02fa, code lost:
    
        if (r8 != defpackage.lh3.f) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x02fc, code lost:
    
        r6 = defpackage.lh3.a(r13, "TSSE", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0302, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0309, code lost:
    
        if (r8 != defpackage.lh3.g) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x030b, code lost:
    
        r6 = defpackage.lh3.a(r13, "TALB", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0311, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0317, code lost:
    
        if (r8 != defpackage.lh3.j) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0319, code lost:
    
        r6 = defpackage.lh3.a(r13, "USLT", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x031f, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0325, code lost:
    
        if (r8 != defpackage.lh3.k) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0327, code lost:
    
        r6 = defpackage.lh3.a(r13, "TCON", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x032b, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0331, code lost:
    
        if (r8 != defpackage.lh3.n) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0333, code lost:
    
        r6 = defpackage.lh3.a(r13, "TIT1", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0339, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005e, code lost:
    
        r5.h(r13);
        r13 = r13 + r14;
        r5.i(12);
        r8 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x033d, code lost:
    
        r8 = java.lang.String.valueOf(defpackage.ah3.a(r13));
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x034b, code lost:
    
        if (r8.length() == 0) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x034d, code lost:
    
        r6 = "Skipped unknown metadata entry: ".concat(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0352, code lost:
    
        r6 = new java.lang.String("Skipped unknown metadata entry: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0358, code lost:
    
        android.util.Log.d("MetadataUtil", r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x035b, code lost:
    
        r5.h(r14);
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0360, code lost:
    
        r6 = defpackage.lh3.a(r13, "TCOM", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0366, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x036a, code lost:
    
        r6 = defpackage.lh3.a(r13, "TIT2", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0067, code lost:
    
        r9 = r5.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0373, code lost:
    
        if (r6 == null) goto L305;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0375, code lost:
    
        r2.add(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x0378, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x037b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x037c, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x037f, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x0384, code lost:
    
        if (r2.isEmpty() != false) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0386, code lost:
    
        r9 = new com.google.android.gms.internal.ads.zzmh(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x038d, code lost:
    
        r5.i(r14 - 8);
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0069, code lost:
    
        if (r9 >= r13) goto L301;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006b, code lost:
    
        r14 = r5.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0075, code lost:
    
        if (r5.b() != defpackage.ah3.C0) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0077, code lost:
    
        r5.h(r9);
        r9 = r9 + r14;
        r5.i(8);
        r2 = new java.util.ArrayList();
        r8 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0083, code lost:
    
        r13 = r5.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0085, code lost:
    
        if (r13 >= r9) goto L303;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0087, code lost:
    
        r14 = defpackage.lh3.a;
        r14 = r5.b() + r13;
        r13 = r5.b();
        r15 = r13 >>> 24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
    
        if (r15 == 169) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a4, code lost:
    
        if (r15 != 65533) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00aa, code lost:
    
        if (r13 != defpackage.lh3.m) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ac, code lost:
    
        r6 = defpackage.lh3.d(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b0, code lost:
    
        if (r6 <= 0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b2, code lost:
    
        r10 = defpackage.lh3.D;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b5, code lost:
    
        if (r6 > r10.length) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b7, code lost:
    
        r6 = r10[r6 - 1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bc, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bd, code lost:
    
        if (r6 == null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bf, code lost:
    
        r7 = new com.google.android.gms.internal.ads.zzmn("TCON", r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c5, code lost:
    
        android.util.Log.w("MetadataUtil", "Failed to parse standard genre code");
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ca, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cb, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d2, code lost:
    
        if (r13 != defpackage.lh3.o) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d4, code lost:
    
        r7 = defpackage.lh3.c(r13, "TPOS", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00da, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e1, code lost:
    
        if (r13 != defpackage.lh3.p) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e3, code lost:
    
        r7 = defpackage.lh3.c(r13, "TRCK", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e9, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f0, code lost:
    
        if (r13 != defpackage.lh3.q) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f2, code lost:
    
        r6 = defpackage.lh3.b(r13, "TBPM", r5, true, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f9, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0100, code lost:
    
        if (r13 != defpackage.lh3.r) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0102, code lost:
    
        r6 = defpackage.lh3.b(r13, "TCMP", r5, true, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0109, code lost:
    
        r5.h(r14);
        r7 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0112, code lost:
    
        if (r13 != defpackage.lh3.l) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0114, code lost:
    
        r6 = r5.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x011e, code lost:
    
        if (r5.b() != defpackage.ah3.F0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0120, code lost:
    
        r10 = r5.b() & 16777215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0128, code lost:
    
        if (r10 != 13) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x012a, code lost:
    
        r13 = "image/jpeg";
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x012f, code lost:
    
        if (r10 != 14) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0131, code lost:
    
        r13 = "image/png";
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0134, code lost:
    
        r13 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0135, code lost:
    
        if (r13 != null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0137, code lost:
    
        r12 = new java.lang.StringBuilder(41);
        r12.append("Unrecognized cover art flags: ");
        r12.append(r10);
        android.util.Log.w("MetadataUtil", r12.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x014e, code lost:
    
        r5.i(4);
        r6 = r6 - 16;
        r7 = new byte[r6];
        java.lang.System.arraycopy(r5.a, r5.b, r7, r8, r6);
        r5.b += r6;
        r7 = new com.google.android.gms.internal.ads.zzmi(r13, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0169, code lost:
    
        android.util.Log.w("MetadataUtil", "Failed to parse cover art attribute");
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x016e, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x016f, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0176, code lost:
    
        if (r13 != defpackage.lh3.s) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0178, code lost:
    
        r7 = defpackage.lh3.a(r13, "TPE2", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x017e, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0185, code lost:
    
        if (r13 != defpackage.lh3.t) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0187, code lost:
    
        r7 = defpackage.lh3.a(r13, "TSOT", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x018d, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0194, code lost:
    
        if (r13 != defpackage.lh3.u) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0196, code lost:
    
        r7 = defpackage.lh3.a(r13, "TSO2", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x019c, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01a2, code lost:
    
        if (r13 != defpackage.lh3.v) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01a4, code lost:
    
        r7 = defpackage.lh3.a(r13, "TSOA", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01aa, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01b0, code lost:
    
        if (r13 != defpackage.lh3.w) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01b2, code lost:
    
        r7 = defpackage.lh3.a(r13, "TSOP", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01b8, code lost:
    
        r5.h(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01be, code lost:
    
        if (r13 != defpackage.lh3.x) goto L102;
     */
    /* JADX WARN: Removed duplicated region for block: B:223:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x03ef A[EDGE_INSN: B:311:0x03ef->B:247:0x03ef BREAK  A[LOOP:5: B:224:0x03a1->B:245:0x03eb], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:313:0x03eb A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v5, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(long r67) throws java.lang.NumberFormatException, defpackage.ne3 {
        /*
            Method dump skipped, instructions count: 1594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.nh3.h(long):void");
    }

    public final void i() {
        this.e = 0;
        this.h = 0;
    }

    @Override // defpackage.ig3
    public final void release() {
    }
}
