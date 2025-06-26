package defpackage;

import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ws1 {
    public String e;
    public ss1 f;
    public List<Map<String, String>> b = new ArrayList();
    public boolean c = false;
    public boolean d = false;
    public final zzf a = zzr.zzkz().f();

    public ws1(String str, ss1 ss1Var) {
        this.e = str;
        this.f = ss1Var;
    }

    public final synchronized void a() {
        if (((Boolean) os3.j.f.a(y40.o1)).booleanValue()) {
            if (!((Boolean) os3.j.f.a(y40.e5)).booleanValue()) {
                if (!this.c) {
                    Map<String, String> mapB = b();
                    ((HashMap) mapB).put("action", "init_started");
                    this.b.add(mapB);
                    this.c = true;
                }
            }
        }
    }

    public final Map<String, String> b() {
        ss1 ss1Var = this.f;
        Objects.requireNonNull(ss1Var);
        HashMap map = new HashMap(ss1Var.a);
        map.put("tms", Long.toString(zzr.zzlc().b(), 10));
        map.put("tid", this.a.zzzn() ? "" : this.e);
        return map;
    }

    public final synchronized void c(String str) {
        if (((Boolean) os3.j.f.a(y40.o1)).booleanValue()) {
            if (!((Boolean) os3.j.f.a(y40.e5)).booleanValue()) {
                Map<String, String> mapB = b();
                HashMap map = (HashMap) mapB;
                map.put("action", "adapter_init_started");
                map.put("ancn", str);
                this.b.add(mapB);
            }
        }
    }

    public final synchronized void d(String str) {
        if (((Boolean) os3.j.f.a(y40.o1)).booleanValue()) {
            if (!((Boolean) os3.j.f.a(y40.e5)).booleanValue()) {
                Map<String, String> mapB = b();
                HashMap map = (HashMap) mapB;
                map.put("action", "adapter_init_finished");
                map.put("ancn", str);
                this.b.add(mapB);
            }
        }
    }

    public final synchronized void e(String str, String str2) {
        if (((Boolean) os3.j.f.a(y40.o1)).booleanValue()) {
            if (!((Boolean) os3.j.f.a(y40.e5)).booleanValue()) {
                Map<String, String> mapB = b();
                HashMap map = (HashMap) mapB;
                map.put("action", "adapter_init_finished");
                map.put("ancn", str);
                map.put("rqe", str2);
                this.b.add(mapB);
            }
        }
    }
}
