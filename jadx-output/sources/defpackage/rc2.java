package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class rc2 implements qd2<oc2> {
    public final zv2 a;
    public final ScheduledExecutorService b;
    public final l52 c;
    public final Context d;
    public final ll2 e;
    public final i52 f;
    public String g;

    public rc2(zv2 zv2Var, ScheduledExecutorService scheduledExecutorService, String str, l52 l52Var, Context context, ll2 ll2Var, i52 i52Var) {
        this.a = zv2Var;
        this.b = scheduledExecutorService;
        this.g = str;
        this.c = l52Var;
        this.d = context;
        this.e = ll2Var;
        this.f = i52Var;
    }

    @Override // defpackage.qd2
    public final aw2<oc2> a() {
        return ((Boolean) os3.j.f.a(y40.W0)).booleanValue() ? vt2.c(new dv2(this) { // from class: qc2
            public final rc2 a;

            {
                this.a = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.util.Map] */
            /* JADX WARN: Type inference failed for: r1v11, types: [java.util.Map] */
            /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Map] */
            /* JADX WARN: Type inference failed for: r1v6, types: [java.util.HashMap] */
            /* JADX WARN: Type inference failed for: r1v7, types: [java.util.Map] */
            @Override // defpackage.dv2
            public final aw2 a() {
                ?? EmptyMap;
                Map<String, List<o52>> map;
                final rc2 rc2Var = this.a;
                l52 l52Var = rc2Var.c;
                String str = rc2Var.g;
                String str2 = rc2Var.e.f;
                Objects.requireNonNull(l52Var);
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (map = l52Var.b.get(str)) == null) {
                    EmptyMap = Collections.emptyMap();
                } else {
                    List<o52> list = map.get(str2);
                    if (list == null) {
                        list = map.get(c50.O1(l52Var.d, str2, str));
                    }
                    if (list == null) {
                        EmptyMap = Collections.emptyMap();
                    } else {
                        EmptyMap = new HashMap();
                        for (o52 o52Var : list) {
                            String str3 = o52Var.a;
                            if (!EmptyMap.containsKey(str3)) {
                                EmptyMap.put(str3, new ArrayList());
                            }
                            ((List) EmptyMap.get(str3)).add(o52Var.b);
                        }
                    }
                }
                final ArrayList arrayList = new ArrayList();
                for (Map.Entry entry : EmptyMap.entrySet()) {
                    final String str4 = (String) entry.getKey();
                    final List list2 = (List) entry.getValue();
                    Bundle bundle = rc2Var.e.d.q;
                    final Bundle bundle2 = bundle != null ? bundle.getBundle(str4) : null;
                    nv2 nv2VarX = nv2.A(vt2.c(new dv2(rc2Var, str4, list2, bundle2) { // from class: tc2
                        public final rc2 a;
                        public final String b;
                        public final List c;
                        public final Bundle d;

                        {
                            this.a = rc2Var;
                            this.b = str4;
                            this.c = list2;
                            this.d = bundle2;
                        }

                        @Override // defpackage.dv2
                        public final aw2 a() throws RemoteException {
                            rc2 rc2Var2 = this.a;
                            String str5 = this.b;
                            List list3 = this.c;
                            Bundle bundle3 = this.d;
                            Objects.requireNonNull(rc2Var2);
                            xs0 xs0Var = new xs0();
                            i52 i52Var = rc2Var2.f;
                            Objects.requireNonNull(i52Var);
                            try {
                                i52Var.a.put(str5, i52Var.b.c(str5));
                            } catch (RemoteException e) {
                                is0.zzc("Couldn't create RTB adapter : ", e);
                            }
                            vi0 vi0VarA = rc2Var2.f.a(str5);
                            Objects.requireNonNull(vi0VarA);
                            vi0VarA.a3(new y20(rc2Var2.d), rc2Var2.g, bundle3, (Bundle) list3.get(0), rc2Var2.e.e, new r52(str5, vi0VarA, xs0Var));
                            return xs0Var;
                        }
                    }, rc2Var.a)).x(((Long) os3.j.f.a(y40.V0)).longValue(), TimeUnit.MILLISECONDS, rc2Var.b);
                    vs2 vs2Var = new vs2(str4) { // from class: sc2
                        public final String a;

                        {
                            this.a = str4;
                        }

                        @Override // defpackage.vs2
                        public final Object apply(Object obj) {
                            String strValueOf = String.valueOf(this.a);
                            is0.zzex(strValueOf.length() != 0 ? "Error calling adapter: ".concat(strValueOf) : new String("Error calling adapter: "));
                            return null;
                        }
                    };
                    zv2 zv2Var = rc2Var.a;
                    qu2 qu2Var = new qu2(nv2VarX, Throwable.class, vs2Var);
                    nv2VarX.i(qu2Var, vt2.g(zv2Var, qu2Var));
                    arrayList.add(qu2Var);
                }
                return new gv2(nt2.y(arrayList), true, rc2Var.a, new Callable(arrayList) { // from class: vc2
                    public final List e;

                    {
                        this.e = arrayList;
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        List<aw2> list3 = this.e;
                        JSONArray jSONArray = new JSONArray();
                        for (aw2 aw2Var : list3) {
                            if (((JSONObject) aw2Var.get()) != null) {
                                jSONArray.put(aw2Var.get());
                            }
                        }
                        if (jSONArray.length() == 0) {
                            return null;
                        }
                        return new oc2(jSONArray.toString());
                    }
                });
            }
        }, this.a) : vt2.j(null);
    }
}
