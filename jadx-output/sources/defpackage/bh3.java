package defpackage;

import android.util.Pair;
import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;

/* loaded from: classes.dex */
public final class bh3 {
    public static final int a = el3.f("vide");
    public static final int b = el3.f("soun");
    public static final int c = el3.f(AtomText.TYPE_TEXT);
    public static final int d = el3.f("sbtl");
    public static final int e = el3.f("subt");
    public static final int f = el3.f("clcp");
    public static final int g = el3.f("cenc");
    public static final int h = el3.f("meta");

    public static int a(al3 al3Var, int i, int i2, gh3 gh3Var, int i3) {
        int i4 = al3Var.b;
        while (true) {
            if (i4 - i >= i2) {
                return 0;
            }
            al3Var.h(i4);
            int iB = al3Var.b();
            int i5 = 1;
            c50.s(iB > 0, "childAtomSize should be positive");
            if (al3Var.b() == ah3.W) {
                int i6 = i4 + 8;
                Pair pairCreate = null;
                Integer numValueOf = null;
                qh3 qh3Var = null;
                boolean z = false;
                while (i6 - i4 < iB) {
                    al3Var.h(i6);
                    int iB2 = al3Var.b();
                    int iB3 = al3Var.b();
                    if (iB3 == ah3.c0) {
                        numValueOf = Integer.valueOf(al3Var.b());
                    } else if (iB3 == ah3.X) {
                        al3Var.i(4);
                        z = al3Var.b() == g;
                    } else if (iB3 == ah3.Y) {
                        int i7 = i6 + 8;
                        while (true) {
                            if (i7 - i6 >= iB2) {
                                qh3Var = null;
                                break;
                            }
                            al3Var.h(i7);
                            int iB4 = al3Var.b();
                            if (al3Var.b() == ah3.Z) {
                                al3Var.i(6);
                                boolean z2 = al3Var.d() == i5;
                                int iD = al3Var.d();
                                byte[] bArr = new byte[16];
                                System.arraycopy(al3Var.a, al3Var.b, bArr, 0, 16);
                                al3Var.b += 16;
                                qh3Var = new qh3(z2, iD, bArr);
                            } else {
                                i7 += iB4;
                                i5 = 1;
                            }
                        }
                    }
                    i6 += iB2;
                    i5 = 1;
                }
                if (z) {
                    c50.s(numValueOf != null, "frma atom is mandatory");
                    c50.s(qh3Var != null, "schi->tenc atom is mandatory");
                    pairCreate = Pair.create(numValueOf, qh3Var);
                }
                if (pairCreate != null) {
                    gh3Var.a[i3] = (qh3) pairCreate.second;
                    return ((Integer) pairCreate.first).intValue();
                }
            }
            i4 += iB;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:430:0x07ea  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x07f3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:434:0x07f4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x019b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.rh3 b(defpackage.zg3 r65, defpackage.ch3 r66, long r67, com.google.android.gms.internal.ads.zzjo r69, boolean r70) throws defpackage.ne3 {
        /*
            Method dump skipped, instructions count: 2089
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bh3.b(zg3, ch3, long, com.google.android.gms.internal.ads.zzjo, boolean):rh3");
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.sh3 c(defpackage.rh3 r44, defpackage.zg3 r45, defpackage.lg3 r46) throws defpackage.ne3 {
        /*
            Method dump skipped, instructions count: 1367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bh3.c(rh3, zg3, lg3):sh3");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.String, byte[]> d(defpackage.al3 r5, int r6) {
        /*
            int r6 = r6 + 8
            int r6 = r6 + 4
            r5.h(r6)
            r6 = 1
            r5.i(r6)
            e(r5)
            r0 = 2
            r5.i(r0)
            int r1 = r5.d()
            r2 = r1 & 128(0x80, float:1.8E-43)
            if (r2 == 0) goto L1d
            r5.i(r0)
        L1d:
            r2 = r1 & 64
            if (r2 == 0) goto L28
            int r2 = r5.e()
            r5.i(r2)
        L28:
            r2 = 32
            r1 = r1 & r2
            if (r1 == 0) goto L30
            r5.i(r0)
        L30:
            r5.i(r6)
            e(r5)
            int r0 = r5.d()
            r1 = 0
            if (r0 == r2) goto L80
            r2 = 33
            if (r0 == r2) goto L7d
            r2 = 35
            if (r0 == r2) goto L7a
            r2 = 64
            if (r0 == r2) goto L77
            r2 = 107(0x6b, float:1.5E-43)
            if (r0 == r2) goto L70
            r2 = 165(0xa5, float:2.31E-43)
            if (r0 == r2) goto L6d
            r2 = 166(0xa6, float:2.33E-43)
            if (r0 == r2) goto L6a
            switch(r0) {
                case 102: goto L77;
                case 103: goto L77;
                case 104: goto L77;
                default: goto L58;
            }
        L58:
            switch(r0) {
                case 169: goto L63;
                case 170: goto L5c;
                case 171: goto L5c;
                case 172: goto L63;
                default: goto L5b;
            }
        L5b:
            goto L82
        L5c:
            java.lang.String r5 = "audio/vnd.dts.hd"
            android.util.Pair r5 = android.util.Pair.create(r5, r1)
            return r5
        L63:
            java.lang.String r5 = "audio/vnd.dts"
            android.util.Pair r5 = android.util.Pair.create(r5, r1)
            return r5
        L6a:
            java.lang.String r1 = "audio/eac3"
            goto L82
        L6d:
            java.lang.String r1 = "audio/ac3"
            goto L82
        L70:
            java.lang.String r5 = "audio/mpeg"
            android.util.Pair r5 = android.util.Pair.create(r5, r1)
            return r5
        L77:
            java.lang.String r1 = "audio/mp4a-latm"
            goto L82
        L7a:
            java.lang.String r1 = "video/hevc"
            goto L82
        L7d:
            java.lang.String r1 = "video/avc"
            goto L82
        L80:
            java.lang.String r1 = "video/mp4v-es"
        L82:
            r0 = 12
            r5.i(r0)
            r5.i(r6)
            int r6 = e(r5)
            byte[] r0 = new byte[r6]
            r2 = 0
            byte[] r3 = r5.a
            int r4 = r5.b
            java.lang.System.arraycopy(r3, r4, r0, r2, r6)
            int r2 = r5.b
            int r2 = r2 + r6
            r5.b = r2
            android.util.Pair r5 = android.util.Pair.create(r1, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bh3.d(al3, int):android.util.Pair");
    }

    public static int e(al3 al3Var) {
        int iD = al3Var.d();
        int i = iD & 127;
        while ((iD & 128) == 128) {
            iD = al3Var.d();
            i = (i << 7) | (iD & 127);
        }
        return i;
    }
}
