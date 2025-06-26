package defpackage;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public final class cv3 {
    public Date g;
    public String h;
    public Location k;
    public String m;
    public String n;
    public boolean p;
    public AdInfo q;
    public String s;
    public final HashSet<String> a = new HashSet<>();
    public final Bundle b = new Bundle();
    public final HashMap<Class<? extends NetworkExtras>, NetworkExtras> c = new HashMap<>();
    public final HashSet<String> d = new HashSet<>();
    public final Bundle e = new Bundle();
    public final HashSet<String> f = new HashSet<>();
    public final List<String> i = new ArrayList();
    public int j = -1;
    public boolean l = false;
    public int o = -1;
    public int r = -1;
    public int t = 60000;

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public final void a(NetworkExtras networkExtras) {
        if (!(networkExtras instanceof AdMobExtras)) {
            this.c.put(networkExtras.getClass(), networkExtras);
        } else {
            this.b.putBundle(AdMobAdapter.class.getName(), ((AdMobExtras) networkExtras).getExtras());
        }
    }

    public final void b(Class<? extends CustomEvent> cls, Bundle bundle) {
        if (this.b.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
            this.b.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
        }
        this.b.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(cls.getName(), bundle);
    }

    public final void c(List<String> list) {
        this.i.clear();
        for (String str : list) {
            if (TextUtils.isEmpty(str)) {
                is0.zzez("neighboring content URL should not be null or empty");
            } else {
                this.i.add(str);
            }
        }
    }

    @Deprecated
    public final void d(String str) {
        if ("G".equals(str) || "PG".equals(str) || "T".equals(str) || "MA".equals(str)) {
            this.s = str;
        }
    }
}
