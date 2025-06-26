package com.google.android.gms.ads;

/* loaded from: classes.dex */
public class MediationUtils {
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.ads.AdSize findClosestSize(android.content.Context r11, com.google.android.gms.ads.AdSize r12, java.util.List<com.google.android.gms.ads.AdSize> r13) {
        /*
            r0 = 0
            if (r13 == 0) goto Lca
            if (r12 != 0) goto L7
            goto Lca
        L7:
            boolean r1 = r12.e
            if (r1 != 0) goto L32
            boolean r1 = r12.g
            if (r1 != 0) goto L32
            android.content.res.Resources r1 = r11.getResources()
            android.util.DisplayMetrics r1 = r1.getDisplayMetrics()
            float r1 = r1.density
            int r2 = r12.getWidthInPixels(r11)
            float r2 = (float) r2
            float r2 = r2 / r1
            int r2 = java.lang.Math.round(r2)
            int r11 = r12.getHeightInPixels(r11)
            float r11 = (float) r11
            float r11 = r11 / r1
            int r11 = java.lang.Math.round(r11)
            com.google.android.gms.ads.AdSize r12 = new com.google.android.gms.ads.AdSize
            r12.<init>(r2, r11)
        L32:
            java.util.Iterator r11 = r13.iterator()
        L36:
            boolean r13 = r11.hasNext()
            if (r13 == 0) goto Lca
            java.lang.Object r13 = r11.next()
            com.google.android.gms.ads.AdSize r13 = (com.google.android.gms.ads.AdSize) r13
            r1 = 0
            if (r13 != 0) goto L46
            goto Laa
        L46:
            int r2 = r12.getWidth()
            int r3 = r13.getWidth()
            int r4 = r12.getHeight()
            int r5 = r13.getHeight()
            double r6 = (double) r2
            r8 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            double r6 = r6 * r8
            double r8 = (double) r3
            int r10 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r10 > 0) goto Laa
            if (r2 >= r3) goto L63
            goto Laa
        L63:
            boolean r2 = r12.g
            if (r2 == 0) goto L90
            int r2 = r12.h
            o40<java.lang.Integer> r4 = defpackage.y40.A4
            os3 r6 = defpackage.os3.j
            u40 r6 = r6.f
            java.lang.Object r4 = r6.a(r4)
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            if (r4 > r3) goto Laa
            o40<java.lang.Integer> r3 = defpackage.y40.B4
            os3 r4 = defpackage.os3.j
            u40 r4 = r4.f
            java.lang.Object r3 = r4.a(r3)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            if (r3 > r5) goto Laa
            if (r2 >= r5) goto La9
            goto Laa
        L90:
            boolean r2 = r12.e
            if (r2 == 0) goto L99
            int r2 = r12.f
            if (r2 >= r5) goto La9
            goto Laa
        L99:
            double r2 = (double) r4
            r6 = 4604480259023595110(0x3fe6666666666666, double:0.7)
            double r2 = r2 * r6
            double r6 = (double) r5
            int r8 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r8 > 0) goto Laa
            if (r4 >= r5) goto La9
            goto Laa
        La9:
            r1 = 1
        Laa:
            if (r1 == 0) goto L36
            if (r0 != 0) goto Laf
            goto Lc7
        Laf:
            int r1 = r0.getWidth()
            int r2 = r0.getHeight()
            int r2 = r2 * r1
            int r1 = r13.getWidth()
            int r3 = r13.getHeight()
            int r3 = r3 * r1
            if (r2 <= r3) goto Lc7
            goto L36
        Lc7:
            r0 = r13
            goto L36
        Lca:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.MediationUtils.findClosestSize(android.content.Context, com.google.android.gms.ads.AdSize, java.util.List):com.google.android.gms.ads.AdSize");
    }
}
