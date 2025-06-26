package defpackage;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzkr;
import java.util.Objects;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public final class dz4 implements Runnable {
    public final /* synthetic */ Bundle e;
    public final /* synthetic */ sz4 f;

    public dz4(sz4 sz4Var, Bundle bundle) {
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
        bi.g(bundle.getString(InetAddressKeys.KEY_NAME));
        if (!sz4Var.a.g()) {
            sz4Var.a.a().n.a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        zzkr zzkrVar = new zzkr(bundle.getString(InetAddressKeys.KEY_NAME), 0L, null, null);
        try {
            p25 p25VarT = sz4Var.a.t();
            String string = bundle.getString("app_id");
            String string2 = bundle.getString("expired_event_name");
            Bundle bundle2 = bundle.getBundle("expired_event_params");
            String string3 = bundle.getString("origin");
            long j = bundle.getLong("creation_timestamp");
            tb4.b();
            sz4Var.a.z().y(new zzaa(bundle.getString("app_id"), bundle.getString("origin"), zzkrVar, bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), p25VarT.J(string, string2, bundle2, string3, j, true, false, sz4Var.a.g.s(null, ew4.I0))));
        } catch (IllegalArgumentException unused) {
        }
    }
}
