package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;

/* loaded from: classes.dex */
public final class nr0 {
    public final b20 a;
    public final xr0 b;
    public final String e;
    public final String f;
    public final Object d = new Object();
    public long g = -1;
    public long h = -1;
    public long i = 0;
    public long j = -1;
    public long k = -1;
    public final LinkedList<mr0> c = new LinkedList<>();

    public nr0(b20 b20Var, xr0 xr0Var, String str, String str2) {
        this.a = b20Var;
        this.b = xr0Var;
        this.e = str;
        this.f = str2;
    }

    public final Bundle a() {
        Bundle bundle;
        synchronized (this.d) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.e);
            bundle.putString("slotid", this.f);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.j);
            bundle.putLong("tresponse", this.k);
            bundle.putLong("timp", this.g);
            bundle.putLong("tload", this.h);
            bundle.putLong("pcc", this.i);
            bundle.putLong("tfetch", -1L);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<mr0> it = this.c.iterator();
            while (it.hasNext()) {
                mr0 next = it.next();
                Objects.requireNonNull(next);
                Bundle bundle2 = new Bundle();
                bundle2.putLong("topen", next.a);
                bundle2.putLong("tclose", next.b);
                arrayList.add(bundle2);
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }
}
