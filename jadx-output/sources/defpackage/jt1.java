package defpackage;

import android.content.Context;
import android.util.JsonWriter;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzauj;
import com.google.android.gms.internal.ads.zzvh;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class jt1 implements AppEventListener, ca1, da1, ua1, va1, ob1, sc1, fp2, er3 {
    public final List<Object> e;
    public final ys1 f;
    public long g;

    public jt1(ys1 ys1Var, sy0 sy0Var) {
        this.f = ys1Var;
        this.e = Collections.singletonList(sy0Var);
    }

    @Override // defpackage.fp2
    public final void A(ap2 ap2Var, String str) throws IOException {
        R(xo2.class, "onTaskStarted", str);
    }

    @Override // defpackage.fp2
    public final void C(ap2 ap2Var, String str) throws IOException {
        R(xo2.class, "onTaskSucceeded", str);
    }

    @Override // defpackage.sc1
    public final void M(hl2 hl2Var) {
    }

    @Override // defpackage.ca1
    public final void O(gn0 gn0Var, String str, String str2) throws IOException {
        R(ca1.class, "onRewarded", gn0Var, str, str2);
    }

    @Override // defpackage.da1
    public final void Q(zzvh zzvhVar) throws IOException {
        R(da1.class, "onAdFailedToLoad", Integer.valueOf(zzvhVar.e), zzvhVar.f, zzvhVar.g);
    }

    public final void R(Class<?> cls, String str, Object... objArr) throws IOException {
        ys1 ys1Var = this.f;
        List<Object> list = this.e;
        String simpleName = cls.getSimpleName();
        String strConcat = simpleName.length() != 0 ? "Event-".concat(simpleName) : new String("Event-");
        Objects.requireNonNull(ys1Var);
        if (q60.a.a().booleanValue()) {
            long jA = ys1Var.a.a();
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            try {
                jsonWriter.beginObject();
                jsonWriter.name("timestamp").value(jA);
                jsonWriter.name("source").value(strConcat);
                jsonWriter.name("event").value(str);
                jsonWriter.name("components").beginArray();
                Iterator<Object> it = list.iterator();
                while (it.hasNext()) {
                    jsonWriter.value(it.next().toString());
                }
                jsonWriter.endArray();
                jsonWriter.name("params").beginArray();
                int length = objArr.length;
                for (int i = 0; i < length; i++) {
                    Object obj = objArr[i];
                    jsonWriter.value(obj != null ? obj.toString() : null);
                }
                jsonWriter.endArray();
                jsonWriter.endObject();
                jsonWriter.flush();
                jsonWriter.close();
            } catch (IOException e) {
                is0.zzc("unable to log", e);
            }
            String strValueOf = String.valueOf(stringWriter.toString());
            is0.zzey(strValueOf.length() != 0 ? "AD-DBG ".concat(strValueOf) : new String("AD-DBG "));
        }
    }

    @Override // defpackage.fp2
    public final void d(ap2 ap2Var, String str, Throwable th) throws IOException {
        R(xo2.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // defpackage.er3
    public final void onAdClicked() throws IOException {
        R(er3.class, "onAdClicked", new Object[0]);
    }

    @Override // defpackage.ca1
    public final void onAdClosed() throws IOException {
        R(ca1.class, "onAdClosed", new Object[0]);
    }

    @Override // defpackage.va1
    public final void onAdImpression() throws IOException {
        R(va1.class, "onAdImpression", new Object[0]);
    }

    @Override // defpackage.ca1
    public final void onAdLeftApplication() throws IOException {
        R(ca1.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // defpackage.ob1
    public final void onAdLoaded() throws IOException {
        long jB = zzr.zzlc().b() - this.g;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(jB);
        zzd.zzed(sb.toString());
        R(ob1.class, "onAdLoaded", new Object[0]);
    }

    @Override // defpackage.ca1
    public final void onAdOpened() throws IOException {
        R(ca1.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) throws IOException {
        R(AppEventListener.class, "onAppEvent", str, str2);
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoCompleted() throws IOException {
        R(ca1.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoStarted() throws IOException {
        R(ca1.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // defpackage.ua1
    public final void r(Context context) throws IOException {
        R(ua1.class, "onPause", context);
    }

    @Override // defpackage.ua1
    public final void s(Context context) throws IOException {
        R(ua1.class, "onDestroy", context);
    }

    @Override // defpackage.sc1
    public final void t(zzauj zzaujVar) throws IOException {
        this.g = zzr.zzlc().b();
        R(sc1.class, "onAdRequest", new Object[0]);
    }

    @Override // defpackage.ua1
    public final void x(Context context) throws IOException {
        R(ua1.class, "onResume", context);
    }

    @Override // defpackage.fp2
    public final void z(ap2 ap2Var, String str) throws IOException {
        R(xo2.class, "onTaskCreated", str);
    }
}
