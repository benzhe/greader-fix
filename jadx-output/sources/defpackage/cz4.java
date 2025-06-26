package defpackage;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzkr;
import java.util.Objects;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public final class cz4 implements Runnable {
    public final /* synthetic */ Bundle e;
    public final /* synthetic */ sz4 f;

    public cz4(sz4 sz4Var, Bundle bundle) {
        this.f = sz4Var;
        this.e = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        sz4 sz4Var = this.f;
        Bundle bundle = this.e;
        sz4Var.d();
        sz4Var.f();
        Objects.requireNonNull(bundle, "null reference");
        String string = bundle.getString(InetAddressKeys.KEY_NAME);
        String string2 = bundle.getString("origin");
        bi.g(string);
        bi.g(string2);
        Objects.requireNonNull(bundle.get("value"), "null reference");
        if (!sz4Var.a.g()) {
            sz4Var.a.a().n.a("Conditional property not set since app measurement is disabled");
            return;
        }
        zzkr zzkrVar = new zzkr(string, bundle.getLong("triggered_timestamp"), bundle.get("value"), string2);
        try {
            p25 p25VarT = sz4Var.a.t();
            String string3 = bundle.getString("app_id");
            String string4 = bundle.getString("triggered_event_name");
            Bundle bundle2 = bundle.getBundle("triggered_event_params");
            tb4.b();
            cs4 cs4Var = sz4Var.a.g;
            dw4<Boolean> dw4Var = ew4.I0;
            zzas zzasVarJ = p25VarT.J(string3, string4, bundle2, string2, 0L, true, false, cs4Var.s(null, dw4Var));
            p25 p25VarT2 = sz4Var.a.t();
            String string5 = bundle.getString("app_id");
            String string6 = bundle.getString("timed_out_event_name");
            Bundle bundle3 = bundle.getBundle("timed_out_event_params");
            tb4.b();
            zzas zzasVarJ2 = p25VarT2.J(string5, string6, bundle3, string2, 0L, true, false, sz4Var.a.g.s(null, dw4Var));
            p25 p25VarT3 = sz4Var.a.t();
            String string7 = bundle.getString("app_id");
            String string8 = bundle.getString("expired_event_name");
            Bundle bundle4 = bundle.getBundle("expired_event_params");
            tb4.b();
            sz4Var.a.z().y(new zzaa(bundle.getString("app_id"), string2, zzkrVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), zzasVarJ2, bundle.getLong("trigger_timeout"), zzasVarJ, bundle.getLong("time_to_live"), p25VarT3.J(string7, string8, bundle4, string2, 0L, true, false, sz4Var.a.g.s(null, dw4Var))));
        } catch (IllegalArgumentException unused) {
        }
    }
}
