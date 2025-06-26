package defpackage;

import android.media.MediaCodec;
import com.google.android.gms.internal.ads.zzht;

/* loaded from: classes.dex */
public final class xh3 extends Exception {
    public xh3(zzht zzhtVar, Throwable th, int i) {
        String strValueOf = String.valueOf(zzhtVar);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 36);
        sb.append("Decoder init failed: [");
        sb.append(i);
        sb.append("], ");
        sb.append(strValueOf);
        super(sb.toString(), th);
        String str = zzhtVar.j;
        String str2 = i < 0 ? "neg_" : "";
        Math.abs(i);
        str2.length();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public xh3(zzht zzhtVar, Throwable th, String str) {
        String strValueOf = String.valueOf(zzhtVar);
        super(jo.d(strValueOf.length() + jo.x(str, 23), "Decoder init failed: ", str, ", ", strValueOf), th);
        String str2 = zzhtVar.j;
        if (el3.a < 21 || !(th instanceof MediaCodec.CodecException)) {
            return;
        }
        ((MediaCodec.CodecException) th).getDiagnosticInfo();
    }
}
