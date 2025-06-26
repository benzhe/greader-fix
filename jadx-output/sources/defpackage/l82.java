package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzvt;
import java.util.List;

/* loaded from: classes.dex */
public final class l82 implements nd2<Bundle> {
    public final Context a;
    public final zzvt b;
    public final List<Parcelable> c;

    public l82(Context context, zzvt zzvtVar, List<Parcelable> list) {
        this.a = context;
        this.b = zzvtVar;
        this.c = list;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (t60.a.a().booleanValue()) {
            Bundle bundle3 = new Bundle();
            zzr.zzkv();
            bundle3.putString("activity", zzj.zzas(this.a));
            Bundle bundle4 = new Bundle();
            bundle4.putInt("width", this.b.i);
            bundle4.putInt("height", this.b.f);
            bundle3.putBundle("size", bundle4);
            if (this.c.size() > 0) {
                List<Parcelable> list = this.c;
                bundle3.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
            }
            bundle2.putBundle("view_hierarchy", bundle3);
        }
    }
}
