package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Shader;

/* loaded from: classes.dex */
public final class v7 {
    public final Shader a;
    public final ColorStateList b;
    public int c;

    public v7(Shader shader, ColorStateList colorStateList, int i) {
        this.a = shader;
        this.b = colorStateList;
        this.c = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01fa, code lost:
    
        if (r9 == 2) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01fc, code lost:
    
        r4 = r0.a;
        r0 = r0.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0202, code lost:
    
        if (r6 == 1) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0204, code lost:
    
        if (r6 == 2) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0206, code lost:
    
        r1 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0209, code lost:
    
        r1 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x020c, code lost:
    
        r1 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x020e, code lost:
    
        r3 = new android.graphics.LinearGradient(r12, r26, r25, r24, r4, r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x021f, code lost:
    
        r3 = new android.graphics.SweepGradient(r20, r22, r0.a, r0.b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0234, code lost:
    
        if (r21 <= 0.0f) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0236, code lost:
    
        r1 = r0.a;
        r0 = r0.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x023d, code lost:
    
        if (r6 == 1) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0240, code lost:
    
        if (r6 == 2) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0242, code lost:
    
        r2 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0245, code lost:
    
        r2 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0248, code lost:
    
        r2 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x024a, code lost:
    
        r3 = new android.graphics.RadialGradient(r20, r22, r21, r1, r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0262, code lost:
    
        return new defpackage.v7(r3, null, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x026a, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01dc, code lost:
    
        if (r8.size() <= 0) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01de, code lost:
    
        r0 = new defpackage.a8(r8, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01e4, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01e5, code lost:
    
        if (r0 == null) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e9, code lost:
    
        if (r18 == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01eb, code lost:
    
        r0 = new defpackage.a8(r5, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01f1, code lost:
    
        r0 = new defpackage.a8(r5, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01f7, code lost:
    
        if (r9 == 1) goto L109;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.v7 a(android.content.res.Resources r28, int r29, android.content.res.Resources.Theme r30) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 657
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v7.a(android.content.res.Resources, int, android.content.res.Resources$Theme):v7");
    }

    public boolean b() {
        return this.a != null;
    }

    public boolean c() {
        ColorStateList colorStateList;
        return this.a == null && (colorStateList = this.b) != null && colorStateList.isStateful();
    }

    public boolean d(int[] iArr) {
        if (c()) {
            ColorStateList colorStateList = this.b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.c) {
                this.c = colorForState;
                return true;
            }
        }
        return false;
    }
}
