package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes.dex */
public final class lc4 implements kc4 {
    public static final b74<Long> A;
    public static final b74<Long> B;
    public static final b74<Long> C;
    public static final b74<Long> D;
    public static final b74<Long> E;
    public static final b74<String> F;
    public static final b74<Long> G;
    public static final b74<Long> a;
    public static final b74<Long> b;
    public static final b74<String> c;
    public static final b74<String> d;
    public static final b74<Long> e;
    public static final b74<Long> f;
    public static final b74<Long> g;
    public static final b74<Long> h;
    public static final b74<Long> i;
    public static final b74<Long> j;
    public static final b74<Long> k;
    public static final b74<Long> l;
    public static final b74<Long> m;
    public static final b74<Long> n;
    public static final b74<Long> o;
    public static final b74<Long> p;
    public static final b74<Long> q;
    public static final b74<Long> r;
    public static final b74<Long> s;
    public static final b74<Long> t;
    public static final b74<Long> u;
    public static final b74<Long> v;
    public static final b74<Long> w;
    public static final b74<Long> x;
    public static final b74<Long> y;
    public static final b74<Long> z;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.a("measurement.ad_id_cache_time", 10000L);
        b = z64Var.a("measurement.config.cache_time", DateUtils.MILLIS_PER_DAY);
        new y64(z64Var, "measurement.log_tag", "FA");
        c = new y64(z64Var, "measurement.config.url_authority", "app-measurement.com");
        d = new y64(z64Var, "measurement.config.url_scheme", "https");
        e = z64Var.a("measurement.upload.debug_upload_interval", 1000L);
        f = z64Var.a("measurement.lifetimevalue.max_currency_tracked", 4L);
        g = z64Var.a("measurement.store.max_stored_events_per_app", 100000L);
        h = z64Var.a("measurement.experiment.max_ids", 50L);
        i = z64Var.a("measurement.audience.filter_result_max_count", 200L);
        j = z64Var.a("measurement.alarm_manager.minimum_interval", DateUtils.MILLIS_PER_MINUTE);
        k = z64Var.a("measurement.upload.minimum_delay", 500L);
        l = z64Var.a("measurement.monitoring.sample_period_millis", DateUtils.MILLIS_PER_DAY);
        m = z64Var.a("measurement.upload.realtime_upload_interval", 10000L);
        n = z64Var.a("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        z64Var.a("measurement.config.cache_time.service", DateUtils.MILLIS_PER_HOUR);
        o = z64Var.a("measurement.service_client.idle_disconnect_millis", 5000L);
        new y64(z64Var, "measurement.log_tag.service", "FA-SVC");
        p = z64Var.a("measurement.upload.stale_data_deletion_interval", DateUtils.MILLIS_PER_DAY);
        q = z64Var.a("measurement.upload.backoff_period", 43200000L);
        r = z64Var.a("measurement.upload.initial_upload_delay_time", 15000L);
        s = z64Var.a("measurement.upload.interval", DateUtils.MILLIS_PER_HOUR);
        t = z64Var.a("measurement.upload.max_bundle_size", PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
        u = z64Var.a("measurement.upload.max_bundles", 100L);
        v = z64Var.a("measurement.upload.max_conversions_per_day", 500L);
        w = z64Var.a("measurement.upload.max_error_events_per_day", 1000L);
        x = z64Var.a("measurement.upload.max_events_per_bundle", 1000L);
        y = z64Var.a("measurement.upload.max_events_per_day", 100000L);
        z = z64Var.a("measurement.upload.max_public_events_per_day", 50000L);
        A = z64Var.a("measurement.upload.max_queue_time", 2419200000L);
        B = z64Var.a("measurement.upload.max_realtime_events_per_day", 10L);
        C = z64Var.a("measurement.upload.max_batch_size", PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
        D = z64Var.a("measurement.upload.retry_count", 6L);
        E = z64Var.a("measurement.upload.retry_time", 1800000L);
        F = new y64(z64Var, "measurement.upload.url", "https://app-measurement.com/a");
        G = z64Var.a("measurement.upload.window_interval", DateUtils.MILLIS_PER_HOUR);
    }

    @Override // defpackage.kc4
    public final long A() {
        return x.c().longValue();
    }

    @Override // defpackage.kc4
    public final long B() {
        return l.c().longValue();
    }

    @Override // defpackage.kc4
    public final long C() {
        return B.c().longValue();
    }

    @Override // defpackage.kc4
    public final long D() {
        return C.c().longValue();
    }

    @Override // defpackage.kc4
    public final long E() {
        return s.c().longValue();
    }

    @Override // defpackage.kc4
    public final long F() {
        return A.c().longValue();
    }

    @Override // defpackage.kc4
    public final long G() {
        return t.c().longValue();
    }

    @Override // defpackage.kc4
    public final long a() {
        return a.c().longValue();
    }

    @Override // defpackage.kc4
    public final long b() {
        return b.c().longValue();
    }

    @Override // defpackage.kc4
    public final String c() {
        return c.c();
    }

    @Override // defpackage.kc4
    public final String d() {
        return d.c();
    }

    @Override // defpackage.kc4
    public final long e() {
        return i.c().longValue();
    }

    @Override // defpackage.kc4
    public final long f() {
        return v.c().longValue();
    }

    @Override // defpackage.kc4
    public final long g() {
        return h.c().longValue();
    }

    @Override // defpackage.kc4
    public final long h() {
        return e.c().longValue();
    }

    @Override // defpackage.kc4
    public final long i() {
        return j.c().longValue();
    }

    @Override // defpackage.kc4
    public final long j() {
        return k.c().longValue();
    }

    @Override // defpackage.kc4
    public final long k() {
        return p.c().longValue();
    }

    @Override // defpackage.kc4
    public final long l() {
        return r.c().longValue();
    }

    @Override // defpackage.kc4
    public final long m() {
        return n.c().longValue();
    }

    @Override // defpackage.kc4
    public final long n() {
        return f.c().longValue();
    }

    @Override // defpackage.kc4
    public final long o() {
        return o.c().longValue();
    }

    @Override // defpackage.kc4
    public final long p() {
        return g.c().longValue();
    }

    @Override // defpackage.kc4
    public final long q() {
        return u.c().longValue();
    }

    @Override // defpackage.kc4
    public final long r() {
        return m.c().longValue();
    }

    @Override // defpackage.kc4
    public final String s() {
        return F.c();
    }

    @Override // defpackage.kc4
    public final long t() {
        return y.c().longValue();
    }

    @Override // defpackage.kc4
    public final long u() {
        return q.c().longValue();
    }

    @Override // defpackage.kc4
    public final long v() {
        return z.c().longValue();
    }

    @Override // defpackage.kc4
    public final long w() {
        return G.c().longValue();
    }

    @Override // defpackage.kc4
    public final long x() {
        return w.c().longValue();
    }

    @Override // defpackage.kc4
    public final long y() {
        return D.c().longValue();
    }

    @Override // defpackage.kc4
    public final long z() {
        return E.c().longValue();
    }
}
