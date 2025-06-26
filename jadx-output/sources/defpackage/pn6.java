package defpackage;

import android.text.format.DateUtils;
import android.util.Log;
import defpackage.dc6;
import defpackage.ob6;
import java.io.IOException;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes2.dex */
public final class pn6<TResult> implements z35<Void> {
    public final /* synthetic */ jb6 a;

    public static final class a<TResult> implements z35<Void> {
        public a() {
        }

        @Override // defpackage.z35
        public final void a(e45<Void> e45Var) {
            im7.e(e45Var, "it");
            final jb6 jb6Var = pn6.this.a;
            final dc6 dc6Var = jb6Var.f;
            final long j = dc6Var.g.a.getLong("minimum_fetch_interval_in_seconds", dc6.i);
            dc6Var.e.b().j(dc6Var.c, new w35(dc6Var, j) { // from class: zb6
                public final dc6 a;
                public final long b;

                {
                    this.a = dc6Var;
                    this.b = j;
                }

                @Override // defpackage.w35
                public Object a(e45 e45Var2) {
                    e45 e45VarJ;
                    dc6 dc6Var2 = this.a;
                    long j2 = this.b;
                    int[] iArr = dc6.j;
                    Objects.requireNonNull(dc6Var2);
                    Date date = new Date(System.currentTimeMillis());
                    if (e45Var2.o()) {
                        gc6 gc6Var = dc6Var2.g;
                        Objects.requireNonNull(gc6Var);
                        Date date2 = new Date(gc6Var.a.getLong("last_fetch_time_in_millis", -1L));
                        if (date2.equals(gc6.d) ? false : date.before(new Date(TimeUnit.SECONDS.toMillis(j2) + date2.getTime()))) {
                            return c50.X(new dc6.a(date, 2, null, null));
                        }
                    }
                    Date date3 = dc6Var2.g.a().b;
                    Date date4 = date.before(date3) ? date3 : null;
                    if (date4 != null) {
                        e45VarJ = c50.W(new mb6(String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(date4.getTime() - date.getTime()))), date4.getTime()));
                    } else {
                        e45<String> e45VarN = dc6Var2.a.n();
                        e45<ea6> e45VarA = dc6Var2.a.a(false);
                        e45VarJ = c50.N0(e45VarN, e45VarA).j(dc6Var2.c, new w35(dc6Var2, e45VarN, e45VarA, date) { // from class: ac6
                            public final dc6 a;
                            public final e45 b;
                            public final e45 c;
                            public final Date d;

                            {
                                this.a = dc6Var2;
                                this.b = e45VarN;
                                this.c = e45VarA;
                                this.d = date;
                            }

                            @Override // defpackage.w35
                            public Object a(e45 e45Var3) throws JSONException, IOException {
                                dc6 dc6Var3 = this.a;
                                e45 e45Var4 = this.b;
                                e45 e45Var5 = this.c;
                                Date date5 = this.d;
                                int[] iArr2 = dc6.j;
                                if (!e45Var4.o()) {
                                    return c50.W(new kb6("Firebase Installations failed to get installation ID for fetch.", e45Var4.k()));
                                }
                                if (!e45Var5.o()) {
                                    return c50.W(new kb6("Firebase Installations failed to get installation auth token for fetch.", e45Var5.k()));
                                }
                                String str = (String) e45Var4.l();
                                String strA = ((ea6) e45Var5.l()).a();
                                Objects.requireNonNull(dc6Var3);
                                try {
                                    final dc6.a aVarA = dc6Var3.a(str, strA, date5);
                                    return aVarA.a != 0 ? c50.X(aVarA) : dc6Var3.e.c(aVarA.b).q(dc6Var3.c, new d45(aVarA) { // from class: cc6
                                        public final dc6.a a;

                                        {
                                            this.a = aVarA;
                                        }

                                        @Override // defpackage.d45
                                        public e45 a(Object obj) {
                                            dc6.a aVar = this.a;
                                            int[] iArr3 = dc6.j;
                                            return c50.X(aVar);
                                        }
                                    });
                                } catch (lb6 e) {
                                    return c50.W(e);
                                }
                            }
                        });
                    }
                    return e45VarJ.j(dc6Var2.c, new w35(dc6Var2, date) { // from class: bc6
                        public final dc6 a;
                        public final Date b;

                        {
                            this.a = dc6Var2;
                            this.b = date;
                        }

                        @Override // defpackage.w35
                        public Object a(e45 e45Var3) {
                            dc6 dc6Var3 = this.a;
                            Date date5 = this.b;
                            int[] iArr2 = dc6.j;
                            Objects.requireNonNull(dc6Var3);
                            if (e45Var3.o()) {
                                gc6 gc6Var2 = dc6Var3.g;
                                synchronized (gc6Var2.b) {
                                    gc6Var2.a.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date5.getTime()).apply();
                                }
                            } else {
                                Exception excK = e45Var3.k();
                                if (excK != null) {
                                    if (excK instanceof mb6) {
                                        gc6 gc6Var3 = dc6Var3.g;
                                        synchronized (gc6Var3.b) {
                                            gc6Var3.a.edit().putInt("last_fetch_status", 2).apply();
                                        }
                                    } else {
                                        gc6 gc6Var4 = dc6Var3.g;
                                        synchronized (gc6Var4.b) {
                                            gc6Var4.a.edit().putInt("last_fetch_status", 1).apply();
                                        }
                                    }
                                }
                            }
                            return e45Var3;
                        }
                    });
                }
            }).p(new d45() { // from class: gb6
                @Override // defpackage.d45
                public e45 a(Object obj) {
                    return c50.X(null);
                }
            }).q(jb6Var.b, new d45(jb6Var) { // from class: eb6
                public final jb6 a;

                {
                    this.a = jb6Var;
                }

                @Override // defpackage.d45
                public e45 a(Object obj) {
                    final jb6 jb6Var2 = this.a;
                    final e45<yb6> e45VarB = jb6Var2.c.b();
                    final e45<yb6> e45VarB2 = jb6Var2.d.b();
                    return c50.N0(e45VarB, e45VarB2).j(jb6Var2.b, new w35(jb6Var2, e45VarB, e45VarB2) { // from class: fb6
                        public final jb6 a;
                        public final e45 b;
                        public final e45 c;

                        {
                            this.a = jb6Var2;
                            this.b = e45VarB;
                            this.c = e45VarB2;
                        }

                        @Override // defpackage.w35
                        public Object a(e45 e45Var2) {
                            jb6 jb6Var3 = this.a;
                            e45 e45Var3 = this.b;
                            e45 e45Var4 = this.c;
                            if (!e45Var3.o() || e45Var3.l() == null) {
                                return c50.X(Boolean.FALSE);
                            }
                            yb6 yb6Var = (yb6) e45Var3.l();
                            if (e45Var4.o()) {
                                yb6 yb6Var2 = (yb6) e45Var4.l();
                                if (!(yb6Var2 == null || !yb6Var.c.equals(yb6Var2.c))) {
                                    return c50.X(Boolean.FALSE);
                                }
                            }
                            return jb6Var3.d.c(yb6Var).i(jb6Var3.b, new w35(jb6Var3) { // from class: db6
                                public final jb6 a;

                                {
                                    this.a = jb6Var3;
                                }

                                @Override // defpackage.w35
                                public Object a(e45 e45Var5) {
                                    boolean z;
                                    jb6 jb6Var4 = this.a;
                                    Objects.requireNonNull(jb6Var4);
                                    if (e45Var5.o()) {
                                        xb6 xb6Var = jb6Var4.c;
                                        synchronized (xb6Var) {
                                            xb6Var.c = c50.X(null);
                                        }
                                        hc6 hc6Var = xb6Var.b;
                                        synchronized (hc6Var) {
                                            hc6Var.a.deleteFile(hc6Var.b);
                                        }
                                        if (e45Var5.l() != null) {
                                            JSONArray jSONArray = ((yb6) e45Var5.l()).d;
                                            if (jb6Var4.a != null) {
                                                try {
                                                    jb6Var4.a.d(jb6.d(jSONArray));
                                                } catch (JSONException e) {
                                                    Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e);
                                                } catch (we5 e2) {
                                                    Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e2);
                                                }
                                            }
                                        } else {
                                            Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
                                        }
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    return Boolean.valueOf(z);
                                }
                            });
                        }
                    });
                }
            });
        }
    }

    public pn6(jb6 jb6Var) {
        this.a = jb6Var;
    }

    @Override // defpackage.z35
    public final void a(e45<Void> e45Var) {
        im7.e(e45Var, "it");
        ob6.b bVar = new ob6.b();
        bVar.a = 3600L;
        final ob6 ob6Var = new ob6(bVar, null);
        im7.d(ob6Var, "FirebaseRemoteConfigSett…                 .build()");
        final jb6 jb6Var = this.a;
        c50.i(jb6Var.b, new Callable(jb6Var, ob6Var) { // from class: hb6
            public final jb6 e;
            public final ob6 f;

            {
                this.e = jb6Var;
                this.f = ob6Var;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                jb6 jb6Var2 = this.e;
                ob6 ob6Var2 = this.f;
                gc6 gc6Var = jb6Var2.h;
                synchronized (gc6Var.b) {
                    gc6Var.a.edit().putLong("fetch_timeout_in_seconds", ob6Var2.a).putLong("minimum_fetch_interval_in_seconds", ob6Var2.b).commit();
                }
                return null;
            }
        }).b(new a());
    }
}
