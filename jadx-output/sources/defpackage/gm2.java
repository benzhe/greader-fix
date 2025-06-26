package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzvh;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class gm2 implements da1 {
    public final HashSet<nr0> e = new HashSet<>();
    public final Context f;
    public final xr0 g;

    public gm2(Context context, xr0 xr0Var) {
        this.f = context;
        this.g = xr0Var;
    }

    @Override // defpackage.da1
    public final synchronized void Q(zzvh zzvhVar) {
        if (zzvhVar.e != 3) {
            xr0 xr0Var = this.g;
            HashSet<nr0> hashSet = this.e;
            synchronized (xr0Var.a) {
                xr0Var.e.addAll(hashSet);
            }
        }
    }

    public final Bundle a() {
        String str;
        Bundle bundle;
        xr0 xr0Var = this.g;
        Context context = this.f;
        Objects.requireNonNull(xr0Var);
        HashSet hashSet = new HashSet();
        synchronized (xr0Var.a) {
            hashSet.addAll(xr0Var.e);
            xr0Var.e.clear();
        }
        Bundle bundle2 = new Bundle();
        tr0 tr0Var = xr0Var.d;
        wr0 wr0Var = xr0Var.c;
        synchronized (wr0Var) {
            str = wr0Var.b;
        }
        synchronized (tr0Var.f) {
            bundle = new Bundle();
            bundle.putString("session_id", tr0Var.h.zzzn() ? "" : tr0Var.g);
            bundle.putLong("basets", tr0Var.b);
            bundle.putLong("currts", tr0Var.a);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", tr0Var.c);
            bundle.putInt("preqs_in_session", tr0Var.d);
            bundle.putLong("time_in_session", tr0Var.e);
            bundle.putInt("pclick", tr0Var.i);
            bundle.putInt("pimp", tr0Var.j);
            bundle.putBoolean("support_transparent_background", tr0.b(context));
        }
        bundle2.putBundle("app", bundle);
        Bundle bundle3 = new Bundle();
        Iterator<vr0> it = xr0Var.f.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NoSuchMethodError();
        }
        bundle2.putBundle("slots", bundle3);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            arrayList.add(((nr0) it2.next()).a());
        }
        bundle2.putParcelableArrayList("ads", arrayList);
        synchronized (this) {
            this.e.clear();
            this.e.addAll(hashSet);
        }
        return bundle2;
    }
}
