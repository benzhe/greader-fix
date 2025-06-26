package defpackage;

import android.os.SystemClock;
import com.google.mlkit.nl.languageid.IdentifiedLanguage;
import com.google.mlkit.nl.languageid.LanguageIdentifierImpl;
import com.google.mlkit.nl.languageid.internal.LanguageIdentificationJni;
import defpackage.eh7;
import defpackage.gp4;
import defpackage.xp4;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class ay6<T> implements dc7<String> {
    public final /* synthetic */ String a;

    public static final class a<TResult> implements b45<List<IdentifiedLanguage>> {
        public final /* synthetic */ bc7 a;

        public a(bc7 bc7Var) {
            this.a = bc7Var;
        }

        @Override // defpackage.b45
        public void onSuccess(List<IdentifiedLanguage> list) {
            List<IdentifiedLanguage> list2 = list;
            im7.d(list2, "languageCode");
            Object objF = ek7.f(list2);
            im7.d(objF, "languageCode.first()");
            if (list2.isEmpty()) {
                jy6.a("=> Can't identify language.");
                ((eh7.a) this.a).c("");
                return;
            }
            Object objF2 = ek7.f(list2);
            im7.d(objF2, "languageCode.first()");
            String str = ((IdentifiedLanguage) objF2).a;
            im7.d(str, "languageCode.first().languageTag");
            if (im7.a(str, "und")) {
                ((eh7.a) this.a).c("");
            } else {
                ((eh7.a) this.a).c(str);
            }
        }
    }

    public static final class b implements a45 {
        public final /* synthetic */ bc7 a;

        public b(bc7 bc7Var) {
            this.a = bc7Var;
        }

        @Override // defpackage.a45
        public final void c(Exception exc) {
            im7.e(exc, "it");
            ((eh7.a) this.a).b(exc);
        }
    }

    public ay6(String str) {
        this.a = str;
    }

    @Override // defpackage.dc7
    public final void a(bc7<String> bc7Var) {
        e55 e55Var;
        im7.e(bc7Var, "emiter");
        AtomicReference<hh6> atomicReference = hh6.b;
        hh6 hh6Var = atomicReference.get();
        bi.m(hh6Var != null, "MlKitContext has not been initialized");
        Objects.requireNonNull(hh6Var);
        bi.m(atomicReference.get() == hh6Var, "MlKitContext has been deleted");
        LanguageIdentifierImpl.a aVar = (LanguageIdentifierImpl.a) hh6Var.a.a(LanguageIdentifierImpl.a.class);
        ai6 ai6Var = ai6.c;
        LanguageIdentificationJni languageIdentificationJni = aVar.b;
        fj4 fj4Var = aVar.a;
        eh6 eh6Var = aVar.c;
        Objects.requireNonNull(eh6Var);
        final LanguageIdentifierImpl languageIdentifierImpl = new LanguageIdentifierImpl(ai6Var, languageIdentificationJni, fj4Var, eh6Var.a.get());
        gp4.a aVarW = gp4.w();
        if (aVarW.g) {
            aVarW.f();
            aVarW.g = false;
        }
        gp4.s((gp4) aVarW.f);
        xp4.a aVarP = xp4.p();
        lp4 lp4VarA = languageIdentifierImpl.e.a();
        if (aVarP.g) {
            aVarP.f();
            aVarP.g = false;
        }
        xp4.s((xp4) aVarP.f, lp4VarA);
        aVarW.k(aVarP);
        oh4 oh4Var = oh4.ON_DEVICE_LANGUAGE_IDENTIFICATION_CREATE;
        Objects.requireNonNull(fj4Var);
        Object obj = gh6.b;
        gh6.a().a.post(new gj4(fj4Var, aVarW, oh4Var));
        languageIdentifierImpl.h.get().a.incrementAndGet();
        final String str = this.a;
        bi.j(str, "Text can not be null");
        final LanguageIdentificationJni languageIdentificationJni2 = languageIdentifierImpl.h.get();
        bi.m(languageIdentificationJni2 != null, "LanguageIdentification has been closed");
        final boolean z = !languageIdentificationJni2.c.get();
        final Executor executor = languageIdentifierImpl.g;
        final Callable callable = new Callable(languageIdentifierImpl, languageIdentificationJni2, str, z) { // from class: gi6
            public final LanguageIdentifierImpl e;
            public final LanguageIdentificationJni f;
            public final String g;
            public final boolean h;

            {
                this.e = languageIdentifierImpl;
                this.f = languageIdentificationJni2;
                this.g = str;
                this.h = z;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                LanguageIdentifierImpl languageIdentifierImpl2 = this.e;
                LanguageIdentificationJni languageIdentificationJni3 = this.f;
                String str2 = this.g;
                boolean z2 = this.h;
                Float f = languageIdentifierImpl2.e.a;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                try {
                    String strSubstring = str2.substring(0, Math.min(str2.length(), 200));
                    float fFloatValue = f != null ? f.floatValue() : 0.01f;
                    bi.l(languageIdentificationJni3.g != 0);
                    List<IdentifiedLanguage> listAsList = Arrays.asList(languageIdentificationJni3.nativeIdentifyPossibleLanguages(languageIdentificationJni3.g, strSubstring.getBytes(yh4.a), fFloatValue));
                    xp4.d.a aVarP2 = xp4.d.p();
                    for (IdentifiedLanguage identifiedLanguage : listAsList) {
                        xp4.b.a aVarP3 = xp4.b.p();
                        String str3 = identifiedLanguage.a;
                        if (aVarP3.g) {
                            aVarP3.f();
                            aVarP3.g = false;
                        }
                        xp4.b.s((xp4.b) aVarP3.f, str3);
                        float f2 = identifiedLanguage.b;
                        if (aVarP3.g) {
                            aVarP3.f();
                            aVarP3.g = false;
                        }
                        xp4.b.q((xp4.b) aVarP3.f, f2);
                        if (aVarP2.g) {
                            aVarP2.f();
                            aVarP2.g = false;
                        }
                        xp4.d.q((xp4.d) aVarP2.f, (xp4.b) ((pk4) aVarP3.j()));
                    }
                    languageIdentifierImpl2.k(jElapsedRealtime, z2, (xp4.d) ((pk4) aVarP2.j()), null, nh4.NO_ERROR);
                    return listAsList;
                } catch (RuntimeException e) {
                    languageIdentifierImpl2.k(jElapsedRealtime, z2, xp4.d.s(), null, nh4.UNKNOWN_ERROR);
                    throw e;
                }
            }
        };
        final k45 k45Var = languageIdentifierImpl.i.a;
        final AtomicReference atomicReference2 = new AtomicReference(Thread.currentThread());
        final Executor executor2 = new Executor(languageIdentificationJni2, atomicReference2, executor) { // from class: ci6
            public final LanguageIdentificationJni e;
            public final AtomicReference f;
            public final Executor g;

            {
                this.e = languageIdentificationJni2;
                this.f = atomicReference2;
                this.g = executor;
            }

            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                LanguageIdentificationJni languageIdentificationJni3 = this.e;
                AtomicReference atomicReference3 = this.f;
                Executor executor3 = this.g;
                if (Thread.currentThread().equals(atomicReference3.get()) && languageIdentificationJni3.c.get()) {
                    runnable.run();
                } else {
                    executor3.execute(runnable);
                }
            }
        };
        bi.l(languageIdentificationJni2.a.get() > 0);
        if (k45Var.a()) {
            e55 e55Var2 = new e55();
            e55Var2.t();
            e55Var = e55Var2;
        } else {
            final v35 v35Var = new v35();
            final f45 f45Var = new f45(v35Var.a);
            languageIdentificationJni2.b.a(new Executor(executor2, k45Var, v35Var, f45Var) { // from class: wh6
                public final Executor e;
                public final k45 f;
                public final v35 g;
                public final f45 h;

                {
                    this.e = executor2;
                    this.f = k45Var;
                    this.g = v35Var;
                    this.h = f45Var;
                }

                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    Executor executor3 = this.e;
                    k45 k45Var2 = this.f;
                    v35 v35Var2 = this.g;
                    f45 f45Var2 = this.h;
                    try {
                        executor3.execute(runnable);
                    } catch (RuntimeException e) {
                        if (k45Var2.a()) {
                            v35Var2.a();
                        } else {
                            f45Var2.a.r(e);
                        }
                        throw e;
                    }
                }
            }, new Runnable(languageIdentificationJni2, k45Var, v35Var, callable, f45Var) { // from class: vh6
                public final jh6 e;
                public final k45 f;
                public final v35 g;
                public final Callable h;
                public final f45 i;

                {
                    this.e = languageIdentificationJni2;
                    this.f = k45Var;
                    this.g = v35Var;
                    this.h = callable;
                    this.i = f45Var;
                }

                @Override // java.lang.Runnable
                public final void run() throws Exception {
                    jh6 jh6Var = this.e;
                    k45 k45Var2 = this.f;
                    v35 v35Var2 = this.g;
                    Callable callable2 = this.h;
                    f45 f45Var2 = this.i;
                    Objects.requireNonNull(jh6Var);
                    try {
                        if (k45Var2.a()) {
                            v35Var2.a();
                            return;
                        }
                        try {
                            if (!jh6Var.c.get()) {
                                jh6Var.a();
                                jh6Var.c.set(true);
                            }
                            if (k45Var2.a()) {
                                v35Var2.a();
                                return;
                            }
                            Object objCall = callable2.call();
                            if (k45Var2.a()) {
                                v35Var2.a();
                            } else {
                                f45Var2.a.s(objCall);
                            }
                        } catch (RuntimeException e) {
                            throw new tg6("Internal error has occurred when executing ML Kit tasks", 13, e);
                        }
                    } catch (Exception e2) {
                        if (k45Var2.a()) {
                            v35Var2.a();
                        } else {
                            f45Var2.a.r(e2);
                        }
                    }
                }
            });
            e55Var = f45Var.a;
        }
        atomicReference2.set(null);
        a aVar2 = new a(bc7Var);
        Objects.requireNonNull(e55Var);
        Executor executor3 = g45.a;
        e55Var.g(executor3, aVar2);
        e55Var.e(executor3, new b(bc7Var));
    }
}
