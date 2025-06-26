package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import defpackage.cq0;
import java.util.Map;

/* loaded from: classes.dex */
public final class y11 implements v11 {
    public final Context a;
    public final zzf b = zzr.zzkz().f();

    public y11(Context context) {
        this.a = context;
    }

    @Override // defpackage.v11
    public final void a(Map<String, String> map) {
        Context context;
        if (map.isEmpty()) {
            return;
        }
        String str = map.get("gad_idless");
        if (str != null) {
            boolean z = Boolean.parseBoolean(str);
            map.remove("gad_idless");
            if (((Boolean) os3.j.f.a(y40.l0)).booleanValue()) {
                this.b.zzau(z);
                if (((Boolean) os3.j.f.a(y40.M3)).booleanValue() && z && (context = this.a) != null) {
                    context.deleteDatabase("OfflineUpload.db");
                }
            }
        }
        final Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        if (((Boolean) os3.j.f.a(y40.h0)).booleanValue()) {
            zzr.zzlt().f("setConsent", new cq0.a(bundle) { // from class: bq0
                public final Bundle a;

                {
                    this.a = bundle;
                }

                @Override // cq0.a
                public final void a(ny0 ny0Var) throws RemoteException {
                    ny0Var.k6(this.a);
                }
            });
        }
    }
}
