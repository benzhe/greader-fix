package defpackage;

import android.content.SharedPreferences;
import android.util.Pair;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes.dex */
public final class ex4 extends my4 {
    public static final Pair<String, Long> C = new Pair<>("", 0L);
    public final bx4 A;
    public final ax4 B;
    public SharedPreferences c;
    public cx4 d;
    public final bx4 e;
    public final bx4 f;
    public final bx4 g;
    public final bx4 h;
    public final bx4 i;
    public final bx4 j;
    public final bx4 k;
    public final dx4 l;
    public String m;
    public boolean n;
    public long o;
    public final bx4 p;
    public final zw4 q;
    public final dx4 r;
    public final zw4 s;
    public final bx4 t;
    public boolean u;
    public final zw4 v;
    public final zw4 w;
    public final bx4 x;
    public final dx4 y;
    public final dx4 z;

    public ex4(rx4 rx4Var) {
        super(rx4Var);
        this.e = new bx4(this, "last_upload", 0L);
        this.f = new bx4(this, "last_upload_attempt", 0L);
        this.g = new bx4(this, "backoff", 0L);
        this.h = new bx4(this, "last_delete_stale", 0L);
        this.p = new bx4(this, "session_timeout", 1800000L);
        this.q = new zw4(this, "start_new_session", true);
        this.t = new bx4(this, "last_pause_time", 0L);
        this.r = new dx4(this, "non_personalized_ads");
        this.s = new zw4(this, "allow_remote_dynamite", false);
        this.i = new bx4(this, "midnight_offset", 0L);
        this.j = new bx4(this, "first_open_time", 0L);
        this.k = new bx4(this, "app_install_time", 0L);
        this.l = new dx4(this, "app_instance_id");
        this.v = new zw4(this, "app_backgrounded", false);
        this.w = new zw4(this, "deep_link_retrieval_complete", false);
        this.x = new bx4(this, "deep_link_retrieval_attempts", 0L);
        this.y = new dx4(this, "firebase_feature_rollouts");
        this.z = new dx4(this, "deferred_attribution_cache");
        this.A = new bx4(this, "deferred_attribution_cache_timestamp", 0L);
        this.B = new ax4(this);
    }

    @Override // defpackage.my4
    public final boolean f() {
        return true;
    }

    @Override // defpackage.my4
    @EnsuresNonNull.List({@EnsuresNonNull({"this.preferences"}), @EnsuresNonNull({"this.monitoringSample"})})
    public final void g() {
        SharedPreferences sharedPreferences = this.a.a.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.c = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.u = z;
        if (!z) {
            SharedPreferences.Editor editorEdit = this.c.edit();
            editorEdit.putBoolean("has_been_opened", true);
            editorEdit.apply();
        }
        cs4 cs4Var = this.a.g;
        this.d = new cx4(this, Math.max(0L, ew4.c.a(null).longValue()));
    }

    public final SharedPreferences n() {
        d();
        i();
        Objects.requireNonNull(this.c, "null reference");
        return this.c;
    }

    public final void p(Boolean bool) {
        d();
        SharedPreferences.Editor editorEdit = n().edit();
        if (bool != null) {
            editorEdit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            editorEdit.remove("measurement_enabled");
        }
        editorEdit.apply();
    }

    public final Boolean q() {
        d();
        if (n().contains("measurement_enabled")) {
            return Boolean.valueOf(n().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    public final boolean r(int i) {
        return ds4.i(i, n().getInt("consent_source", 100));
    }

    public final ds4 s() {
        d();
        return ds4.b(n().getString("consent_settings", "G1"));
    }

    public final void t(boolean z) {
        d();
        this.a.a().n.b("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor editorEdit = n().edit();
        editorEdit.putBoolean("deferred_analytics_collection", z);
        editorEdit.apply();
    }

    public final boolean u(long j) {
        return j - this.p.a() > this.t.a();
    }
}
