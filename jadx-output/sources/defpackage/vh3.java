package defpackage;

import android.media.MediaCodecInfo;
import android.util.Log;

/* loaded from: classes.dex */
public final class vh3 {
    public final String a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final String e;
    public final MediaCodecInfo.CodecCapabilities f;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public vh3(java.lang.String r2, java.lang.String r3, android.media.MediaCodecInfo.CodecCapabilities r4, boolean r5, boolean r6) {
        /*
            r1 = this;
            r1.<init>()
            java.util.Objects.requireNonNull(r2)
            r1.a = r2
            r1.e = r3
            r1.f = r4
            r2 = 1
            r3 = 0
            if (r5 != 0) goto L27
            if (r4 == 0) goto L27
            int r5 = defpackage.el3.a
            r0 = 19
            if (r5 < r0) goto L22
            java.lang.String r5 = "adaptive-playback"
            boolean r5 = r4.isFeatureSupported(r5)
            if (r5 == 0) goto L22
            r5 = 1
            goto L23
        L22:
            r5 = 0
        L23:
            if (r5 == 0) goto L27
            r5 = 1
            goto L28
        L27:
            r5 = 0
        L28:
            r1.b = r5
            r5 = 21
            if (r4 == 0) goto L41
            int r0 = defpackage.el3.a
            if (r0 < r5) goto L3c
            java.lang.String r0 = "tunneled-playback"
            boolean r0 = r4.isFeatureSupported(r0)
            if (r0 == 0) goto L3c
            r0 = 1
            goto L3d
        L3c:
            r0 = 0
        L3d:
            if (r0 == 0) goto L41
            r0 = 1
            goto L42
        L41:
            r0 = 0
        L42:
            r1.c = r0
            if (r6 != 0) goto L5b
            if (r4 == 0) goto L5a
            int r6 = defpackage.el3.a
            if (r6 < r5) goto L56
            java.lang.String r5 = "secure-playback"
            boolean r4 = r4.isFeatureSupported(r5)
            if (r4 == 0) goto L56
            r4 = 1
            goto L57
        L56:
            r4 = 0
        L57:
            if (r4 == 0) goto L5a
            goto L5b
        L5a:
            r2 = 0
        L5b:
            r1.d = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vh3.<init>(java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean):void");
    }

    public static boolean b(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    public final boolean a(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f;
        if (codecCapabilities == null) {
            c("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            c("sizeAndRate.vCaps");
            return false;
        }
        if (b(videoCapabilities, i, i2, d)) {
            return true;
        }
        if (i >= i2 || !b(videoCapabilities, i2, i, d)) {
            StringBuilder sb = new StringBuilder(69);
            sb.append("sizeAndRate.support, ");
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            sb.append("x");
            sb.append(d);
            c(sb.toString());
            return false;
        }
        StringBuilder sb2 = new StringBuilder(69);
        sb2.append("sizeAndRate.rotated, ");
        sb2.append(i);
        sb2.append("x");
        sb2.append(i2);
        sb2.append("x");
        sb2.append(d);
        String string = sb2.toString();
        String str = this.a;
        String str2 = this.e;
        String str3 = el3.e;
        StringBuilder sbY = jo.y(jo.x(str3, jo.x(str2, jo.x(str, jo.x(string, 25)))), "AssumedSupport [", string, "] [", str);
        jo.J(sbY, ", ", str2, "] [", str3);
        sbY.append("]");
        Log.d("MediaCodecInfo", sbY.toString());
        return true;
    }

    public final void c(String str) {
        String str2 = this.a;
        String str3 = this.e;
        String str4 = el3.e;
        StringBuilder sbY = jo.y(jo.x(str4, jo.x(str3, jo.x(str2, jo.x(str, 20)))), "NoSupport [", str, "] [", str2);
        jo.J(sbY, ", ", str3, "] [", str4);
        sbY.append("]");
        Log.d("MediaCodecInfo", sbY.toString());
    }
}
