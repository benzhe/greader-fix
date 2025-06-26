package defpackage;

import android.text.TextUtils;
import android.util.Log;
import defpackage.aa6;
import defpackage.ja6;
import defpackage.la6;
import defpackage.ma6;
import defpackage.oa6;
import defpackage.qa6;
import defpackage.sa6;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class y96 implements z96 {
    public static final Object m = new Object();
    public static final ThreadFactory n = new a();
    public final pe5 a;
    public final pa6 b;
    public final la6 c;
    public final ha6 d;
    public final ka6 e;
    public final fa6 f;
    public final Object g;
    public final ExecutorService h;
    public final ExecutorService i;
    public String j;
    public Set<ia6> k;
    public final List<ga6> l;

    public class a implements ThreadFactory {
        public final AtomicInteger e = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.e.getAndIncrement())));
        }
    }

    public y96(pe5 pe5Var, s96<cb6> s96Var, s96<by5> s96Var2) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        ThreadFactory threadFactory = n;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30L, timeUnit, linkedBlockingQueue, threadFactory);
        pe5Var.a();
        pa6 pa6Var = new pa6(pe5Var.a, s96Var, s96Var2);
        la6 la6Var = new la6(pe5Var);
        ha6 ha6VarC = ha6.c();
        ka6 ka6Var = new ka6(pe5Var);
        fa6 fa6Var = new fa6();
        this.g = new Object();
        this.k = new HashSet();
        this.l = new ArrayList();
        this.a = pe5Var;
        this.b = pa6Var;
        this.c = la6Var;
        this.d = ha6VarC;
        this.e = ka6Var;
        this.f = fa6Var;
        this.h = threadPoolExecutor;
        this.i = new ThreadPoolExecutor(0, 1, 30L, timeUnit, new LinkedBlockingQueue(), threadFactory);
    }

    public static y96 f() {
        pe5 pe5VarB = pe5.b();
        bi.c(true, "Null is not a valid value of FirebaseApp.");
        pe5VarB.a();
        return (y96) pe5VarB.d.a(z96.class);
    }

    @Override // defpackage.z96
    public e45<ea6> a(final boolean z) {
        h();
        f45 f45Var = new f45();
        ca6 ca6Var = new ca6(this.d, f45Var);
        synchronized (this.g) {
            this.l.add(ca6Var);
        }
        e45 e45Var = f45Var.a;
        this.h.execute(new Runnable(this, z) { // from class: w96
            public final y96 e;
            public final boolean f;

            {
                this.e = this;
                this.f = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                y96 y96Var = this.e;
                boolean z2 = this.f;
                Object obj = y96.m;
                y96Var.b(z2);
            }
        });
        return e45Var;
    }

    public final void b(final boolean z) {
        ma6 ma6VarB;
        synchronized (m) {
            pe5 pe5Var = this.a;
            pe5Var.a();
            u96 u96VarA = u96.a(pe5Var.a, "generatefid.lock");
            try {
                ma6VarB = this.c.b();
                if (ma6VarB.i()) {
                    String strI = i(ma6VarB);
                    la6 la6Var = this.c;
                    ja6.b bVar = (ja6.b) ma6VarB.k();
                    bVar.a = strI;
                    bVar.b(la6.a.UNREGISTERED);
                    ma6VarB = bVar.a();
                    la6Var.a(ma6VarB);
                }
            } finally {
                if (u96VarA != null) {
                    u96VarA.b();
                }
            }
        }
        if (z) {
            ja6.b bVar2 = (ja6.b) ma6VarB.k();
            bVar2.c = null;
            ma6VarB = bVar2.a();
        }
        l(ma6VarB);
        this.i.execute(new Runnable(this, z) { // from class: x96
            public final y96 e;
            public final boolean f;

            {
                this.e = this;
                this.f = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                u96 u96VarA2;
                ma6 ma6VarB2;
                ma6 ma6VarJ;
                y96 y96Var = this.e;
                boolean z2 = this.f;
                Object obj = y96.m;
                Objects.requireNonNull(y96Var);
                Object obj2 = y96.m;
                synchronized (obj2) {
                    pe5 pe5Var2 = y96Var.a;
                    pe5Var2.a();
                    u96VarA2 = u96.a(pe5Var2.a, "generatefid.lock");
                    try {
                        ma6VarB2 = y96Var.c.b();
                    } finally {
                        if (u96VarA2 != null) {
                            u96VarA2.b();
                        }
                    }
                }
                try {
                    if (ma6VarB2.h()) {
                        ma6VarJ = y96Var.j(ma6VarB2);
                    } else {
                        if (ma6VarB2.f() == la6.a.UNREGISTERED) {
                            ma6VarJ = y96Var.j(ma6VarB2);
                        } else if (!z2 && !y96Var.d.d(ma6VarB2)) {
                            return;
                        } else {
                            ma6VarJ = y96Var.c(ma6VarB2);
                        }
                    }
                    synchronized (obj2) {
                        pe5 pe5Var3 = y96Var.a;
                        pe5Var3.a();
                        u96VarA2 = u96.a(pe5Var3.a, "generatefid.lock");
                        try {
                            y96Var.c.a(ma6VarJ);
                            if (u96VarA2 != null) {
                                u96VarA2.b();
                            }
                        } finally {
                            if (u96VarA2 != null) {
                                u96VarA2.b();
                            }
                        }
                    }
                    synchronized (y96Var) {
                        if (y96Var.k.size() != 0 && !ma6VarB2.c().equals(ma6VarJ.c())) {
                            Iterator<ia6> it = y96Var.k.iterator();
                            while (it.hasNext()) {
                                it.next().a(ma6VarJ.c());
                            }
                        }
                    }
                    if (ma6VarJ.j()) {
                        String str = ((ja6) ma6VarJ).b;
                        synchronized (y96Var) {
                            y96Var.j = str;
                        }
                    }
                    if (ma6VarJ.h()) {
                        y96Var.k(new aa6(aa6.a.BAD_CONFIG));
                    } else if (ma6VarJ.i()) {
                        y96Var.k(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
                    } else {
                        y96Var.l(ma6VarJ);
                    }
                } catch (aa6 e) {
                    y96Var.k(e);
                }
            }
        });
    }

    public final ma6 c(ma6 ma6Var) throws aa6 {
        int responseCode;
        sa6 sa6VarF;
        aa6.a aVar = aa6.a.UNAVAILABLE;
        pa6 pa6Var = this.b;
        String strD = d();
        ja6 ja6Var = (ja6) ma6Var;
        String str = ja6Var.b;
        String strG = g();
        String str2 = ja6Var.e;
        if (!pa6Var.d.a()) {
            throw new aa6("Firebase Installations Service is unavailable. Please try again later.", aVar);
        }
        URL urlA = pa6Var.a(String.format("projects/%s/installations/%s/authTokens:generate", strG, str));
        for (int i = 0; i <= 1; i++) {
            HttpURLConnection httpURLConnectionC = pa6Var.c(urlA, strD);
            try {
                httpURLConnectionC.setRequestMethod("POST");
                httpURLConnectionC.addRequestProperty("Authorization", "FIS_v2 " + str2);
                httpURLConnectionC.setDoOutput(true);
                pa6Var.h(httpURLConnectionC);
                responseCode = httpURLConnectionC.getResponseCode();
                pa6Var.d.b(responseCode);
            } catch (IOException | AssertionError unused) {
            } catch (Throwable th) {
                httpURLConnectionC.disconnect();
                throw th;
            }
            if (responseCode >= 200 && responseCode < 300) {
                sa6VarF = pa6Var.f(httpURLConnectionC);
            } else {
                pa6.b(httpURLConnectionC, null, strD, strG);
                if (responseCode == 401 || responseCode == 404) {
                    oa6.b bVar = (oa6.b) sa6.a();
                    bVar.c = sa6.b.AUTH_ERROR;
                    sa6VarF = bVar.a();
                } else {
                    if (responseCode == 429) {
                        throw new aa6("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", aa6.a.TOO_MANY_REQUESTS);
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                        oa6.b bVar2 = (oa6.b) sa6.a();
                        bVar2.c = sa6.b.BAD_CONFIG;
                        sa6VarF = bVar2.a();
                    } else {
                        httpURLConnectionC.disconnect();
                    }
                }
            }
            httpURLConnectionC.disconnect();
            oa6 oa6Var = (oa6) sa6VarF;
            int iOrdinal = oa6Var.c.ordinal();
            if (iOrdinal == 0) {
                String str3 = oa6Var.a;
                long j = oa6Var.b;
                long jB = this.d.b();
                ja6.b bVar3 = (ja6.b) ma6Var.k();
                bVar3.c = str3;
                bVar3.e = Long.valueOf(j);
                bVar3.f = Long.valueOf(jB);
                return bVar3.a();
            }
            if (iOrdinal == 1) {
                ja6.b bVar4 = (ja6.b) ma6Var.k();
                bVar4.g = "BAD CONFIG";
                bVar4.b(la6.a.REGISTER_ERROR);
                return bVar4.a();
            }
            if (iOrdinal != 2) {
                throw new aa6("Firebase Installations Service is unavailable. Please try again later.", aVar);
            }
            synchronized (this) {
                this.j = null;
            }
            ma6.a aVarK = ma6Var.k();
            aVarK.b(la6.a.NOT_GENERATED);
            return aVarK.a();
        }
        throw new aa6("Firebase Installations Service is unavailable. Please try again later.", aVar);
    }

    public String d() {
        pe5 pe5Var = this.a;
        pe5Var.a();
        return pe5Var.c.a;
    }

    public String e() {
        pe5 pe5Var = this.a;
        pe5Var.a();
        return pe5Var.c.b;
    }

    public String g() {
        pe5 pe5Var = this.a;
        pe5Var.a();
        return pe5Var.c.g;
    }

    public final void h() {
        bi.h(e(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        bi.h(g(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        bi.h(d(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        String strE = e();
        Pattern pattern = ha6.c;
        bi.c(strE.contains(":"), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        bi.c(ha6.c.matcher(d()).matches(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    public final String i(ma6 ma6Var) {
        String string;
        pe5 pe5Var = this.a;
        pe5Var.a();
        if (pe5Var.b.equals("CHIME_ANDROID_SDK") || this.a.g()) {
            if (((ja6) ma6Var).c == la6.a.ATTEMPT_MIGRATION) {
                ka6 ka6Var = this.e;
                synchronized (ka6Var.a) {
                    synchronized (ka6Var.a) {
                        string = ka6Var.a.getString("|S|id", null);
                    }
                    if (string == null) {
                        string = ka6Var.a();
                    }
                }
                return TextUtils.isEmpty(string) ? this.f.a() : string;
            }
        }
        return this.f.a();
    }

    public final ma6 j(ma6 ma6Var) throws aa6 {
        int responseCode;
        qa6 qa6VarE;
        aa6.a aVar = aa6.a.UNAVAILABLE;
        ja6 ja6Var = (ja6) ma6Var;
        String str = ja6Var.b;
        String string = null;
        if (str != null && str.length() == 11) {
            ka6 ka6Var = this.e;
            synchronized (ka6Var.a) {
                String[] strArr = ka6.c;
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    String str2 = strArr[i];
                    String string2 = ka6Var.a.getString("|T|" + ka6Var.b + "|" + str2, null);
                    if (string2 == null || string2.isEmpty()) {
                        i++;
                    } else if (string2.startsWith("{")) {
                        try {
                            string = new JSONObject(string2).getString("token");
                        } catch (JSONException unused) {
                        }
                    } else {
                        string = string2;
                    }
                }
            }
        }
        pa6 pa6Var = this.b;
        String strD = d();
        String str3 = ja6Var.b;
        String strG = g();
        String strE = e();
        if (!pa6Var.d.a()) {
            throw new aa6("Firebase Installations Service is unavailable. Please try again later.", aVar);
        }
        URL urlA = pa6Var.a(String.format("projects/%s/installations", strG));
        for (int i2 = 0; i2 <= 1; i2++) {
            HttpURLConnection httpURLConnectionC = pa6Var.c(urlA, strD);
            try {
                try {
                    httpURLConnectionC.setRequestMethod("POST");
                    httpURLConnectionC.setDoOutput(true);
                    if (string != null) {
                        httpURLConnectionC.addRequestProperty("x-goog-fis-android-iid-migration-auth", string);
                    }
                    pa6Var.g(httpURLConnectionC, str3, strE);
                    responseCode = httpURLConnectionC.getResponseCode();
                    pa6Var.d.b(responseCode);
                } catch (IOException | AssertionError unused2) {
                }
                if (responseCode >= 200 && responseCode < 300) {
                    qa6VarE = pa6Var.e(httpURLConnectionC);
                } else {
                    pa6.b(httpURLConnectionC, strE, strD, strG);
                    if (responseCode == 429) {
                        throw new aa6("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", aa6.a.TOO_MANY_REQUESTS);
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                        na6 na6Var = new na6(null, null, null, null, qa6.a.BAD_CONFIG, null);
                        httpURLConnectionC.disconnect();
                        qa6VarE = na6Var;
                    } else {
                        httpURLConnectionC.disconnect();
                    }
                }
                na6 na6Var2 = (na6) qa6VarE;
                int iOrdinal = na6Var2.e.ordinal();
                if (iOrdinal != 0) {
                    if (iOrdinal != 1) {
                        throw new aa6("Firebase Installations Service is unavailable. Please try again later.", aVar);
                    }
                    ja6.b bVar = (ja6.b) ma6Var.k();
                    bVar.g = "BAD CONFIG";
                    bVar.b(la6.a.REGISTER_ERROR);
                    return bVar.a();
                }
                String str4 = na6Var2.b;
                String str5 = na6Var2.c;
                long jB = this.d.b();
                String strC = na6Var2.d.c();
                long jD = na6Var2.d.d();
                ja6.b bVar2 = (ja6.b) ma6Var.k();
                bVar2.a = str4;
                bVar2.b(la6.a.REGISTERED);
                bVar2.c = strC;
                bVar2.d = str5;
                bVar2.e = Long.valueOf(jD);
                bVar2.f = Long.valueOf(jB);
                return bVar2.a();
            } finally {
                httpURLConnectionC.disconnect();
            }
        }
        throw new aa6("Firebase Installations Service is unavailable. Please try again later.", aVar);
    }

    public final void k(Exception exc) {
        synchronized (this.g) {
            Iterator<ga6> it = this.l.iterator();
            while (it.hasNext()) {
                if (it.next().a(exc)) {
                    it.remove();
                }
            }
        }
    }

    public final void l(ma6 ma6Var) {
        synchronized (this.g) {
            Iterator<ga6> it = this.l.iterator();
            while (it.hasNext()) {
                if (it.next().b(ma6Var)) {
                    it.remove();
                }
            }
        }
    }

    @Override // defpackage.z96
    public e45<String> n() {
        String str;
        h();
        synchronized (this) {
            str = this.j;
        }
        if (str != null) {
            return c50.X(str);
        }
        f45 f45Var = new f45();
        da6 da6Var = new da6(f45Var);
        synchronized (this.g) {
            this.l.add(da6Var);
        }
        e45 e45Var = f45Var.a;
        this.h.execute(new Runnable(this) { // from class: v96
            public final y96 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                y96 y96Var = this.e;
                Object obj = y96.m;
                y96Var.b(false);
            }
        });
        return e45Var;
    }
}
