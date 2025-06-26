package defpackage;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ye0 implements nd0, ze0 {
    public final we0 e;
    public final HashSet<AbstractMap.SimpleEntry<String, kb0<? super we0>>> f = new HashSet<>();

    public ye0(we0 we0Var) {
        this.e = we0Var;
    }

    @Override // defpackage.zd0
    public final void Z(String str, JSONObject jSONObject) {
        c50.d2(this, str, jSONObject.toString());
    }

    @Override // defpackage.ze0
    public final void a0() {
        Iterator<AbstractMap.SimpleEntry<String, kb0<? super we0>>> it = this.f.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry<String, kb0<? super we0>> next = it.next();
            String strValueOf = String.valueOf(next.getValue().toString());
            zzd.zzed(strValueOf.length() != 0 ? "Unregistering eventhandler: ".concat(strValueOf) : new String("Unregistering eventhandler: "));
            this.e.n(next.getKey(), next.getValue());
        }
        this.f.clear();
    }

    @Override // defpackage.nd0, defpackage.zd0
    public final void d(String str) {
        this.e.d(str);
    }

    @Override // defpackage.od0
    public final void d0(String str, JSONObject jSONObject) {
        c50.f3(this, str, jSONObject);
    }

    @Override // defpackage.we0
    public final void n(String str, kb0<? super we0> kb0Var) {
        this.e.n(str, kb0Var);
        this.f.remove(new AbstractMap.SimpleEntry(str, kb0Var));
    }

    @Override // defpackage.we0
    public final void o(String str, kb0<? super we0> kb0Var) {
        this.e.o(str, kb0Var);
        this.f.add(new AbstractMap.SimpleEntry<>(str, kb0Var));
    }

    @Override // defpackage.od0
    public final void x(String str, Map map) {
        try {
            c50.f3(this, str, zzr.zzkv().zzj(map));
        } catch (JSONException unused) {
            is0.zzez("Could not convert parameters to JSON.");
        }
    }
}
