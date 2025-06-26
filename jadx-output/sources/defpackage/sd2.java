package defpackage;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final /* synthetic */ class sd2 implements Runnable {
    public final qd2 e;
    public final long f;

    public sd2(qd2 qd2Var, long j) {
        this.e = qd2Var;
        this.f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        qd2 qd2Var = this.e;
        long j = this.f;
        String canonicalName = qd2Var.getClass().getCanonicalName();
        long jB = zzr.zzlc().b() - j;
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
        sb.append("Signal runtime : ");
        sb.append(canonicalName);
        sb.append(" = ");
        sb.append(jB);
        zzd.zzed(sb.toString());
    }
}
