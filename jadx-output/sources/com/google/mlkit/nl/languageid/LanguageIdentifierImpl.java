package com.google.mlkit.nl.languageid;

import android.os.SystemClock;
import com.google.mlkit.nl.languageid.LanguageIdentifierImpl;
import com.google.mlkit.nl.languageid.internal.LanguageIdentificationJni;
import defpackage.ad;
import defpackage.ai6;
import defpackage.bi;
import defpackage.cd;
import defpackage.eh6;
import defpackage.fj4;
import defpackage.gp4;
import defpackage.ip4;
import defpackage.kd;
import defpackage.nh4;
import defpackage.oh4;
import defpackage.v35;
import defpackage.xp4;
import java.io.Closeable;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class LanguageIdentifierImpl implements cd, Closeable {
    public final ai6 e;
    public final fj4 f;
    public final Executor g;
    public final AtomicReference<LanguageIdentificationJni> h;
    public final v35 i = new v35();

    public static final class a {
        public final fj4 a;
        public final LanguageIdentificationJni b;
        public final eh6 c;

        public a(fj4 fj4Var, LanguageIdentificationJni languageIdentificationJni, eh6 eh6Var) {
            this.a = fj4Var;
            this.b = languageIdentificationJni;
            this.c = eh6Var;
        }
    }

    public LanguageIdentifierImpl(ai6 ai6Var, LanguageIdentificationJni languageIdentificationJni, fj4 fj4Var, Executor executor) {
        this.e = ai6Var;
        this.f = fj4Var;
        this.g = executor;
        this.h = new AtomicReference<>(languageIdentificationJni);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @kd(ad.a.ON_DESTROY)
    public void close() {
        final LanguageIdentificationJni andSet = this.h.getAndSet(null);
        if (andSet == null) {
            return;
        }
        this.i.a();
        Executor executor = this.g;
        bi.l(andSet.a.get() > 0);
        andSet.b.a(executor, new Runnable(andSet) { // from class: uh6
            public final jh6 e;

            {
                this.e = andSet;
            }

            @Override // java.lang.Runnable
            public final void run() {
                jh6 jh6Var = this.e;
                int iDecrementAndGet = jh6Var.a.decrementAndGet();
                bi.l(iDecrementAndGet >= 0);
                if (iDecrementAndGet == 0) {
                    LanguageIdentificationJni languageIdentificationJni = (LanguageIdentificationJni) jh6Var;
                    lh6 lh6Var = languageIdentificationJni.b;
                    Objects.requireNonNull(lh6Var);
                    bi.l(Thread.currentThread().equals(lh6Var.d.get()));
                    long j = languageIdentificationJni.g;
                    if (j != 0) {
                        languageIdentificationJni.nativeDestroy(j);
                        languageIdentificationJni.g = 0L;
                        languageIdentificationJni.f = null;
                    }
                    jh6Var.c.set(false);
                }
            }
        });
    }

    public final void k(long j, final boolean z, final xp4.d dVar, xp4.c cVar, final nh4 nh4Var) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
        final xp4.c cVar2 = null;
        this.f.a(new fj4.a(this, jElapsedRealtime, z, nh4Var, dVar, cVar2) { // from class: hi6
            public final LanguageIdentifierImpl a;
            public final long b;
            public final boolean c;
            public final nh4 d;
            public final xp4.d e;
            public final xp4.c f;

            {
                this.a = this;
                this.b = jElapsedRealtime;
                this.c = z;
                this.d = nh4Var;
                this.e = dVar;
                this.f = cVar2;
            }

            @Override // fj4.a
            public final gp4.a a() {
                LanguageIdentifierImpl languageIdentifierImpl = this.a;
                long j2 = this.b;
                boolean z2 = this.c;
                nh4 nh4Var2 = this.d;
                xp4.d dVar2 = this.e;
                xp4.c cVar3 = this.f;
                Objects.requireNonNull(languageIdentifierImpl);
                xp4.a aVarP = xp4.p();
                lp4 lp4VarA = languageIdentifierImpl.e.a();
                if (aVarP.g) {
                    aVarP.f();
                    aVarP.g = false;
                }
                xp4.s((xp4) aVarP.f, lp4VarA);
                ip4.a aVarP2 = ip4.p();
                if (aVarP2.g) {
                    aVarP2.f();
                    aVarP2.g = false;
                }
                ip4.q((ip4) aVarP2.f, j2);
                if (aVarP2.g) {
                    aVarP2.f();
                    aVarP2.g = false;
                }
                ip4.t((ip4) aVarP2.f, z2);
                if (aVarP2.g) {
                    aVarP2.f();
                    aVarP2.g = false;
                }
                ip4.s((ip4) aVarP2.f, nh4Var2);
                aVarP.k(aVarP2);
                if (dVar2 != null) {
                    if (aVarP.g) {
                        aVarP.f();
                        aVarP.g = false;
                    }
                    xp4.u((xp4) aVarP.f, dVar2);
                }
                if (cVar3 != null) {
                    if (aVarP.g) {
                        aVarP.f();
                        aVarP.g = false;
                    }
                    xp4.t((xp4) aVarP.f, cVar3);
                }
                gp4.a aVarW = gp4.w();
                if (aVarW.g) {
                    aVarW.f();
                    aVarW.g = false;
                }
                gp4.s((gp4) aVarW.f);
                aVarW.k(aVarP);
                return aVarW;
            }
        }, oh4.ON_DEVICE_LANGUAGE_IDENTIFICATION_DETECT);
    }
}
