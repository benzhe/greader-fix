package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import defpackage.m;
import java.util.Objects;

/* loaded from: classes.dex */
public class s3 extends m.a {
    public Handler f = new Handler(Looper.getMainLooper());
    public final /* synthetic */ r3 g;

    public class a implements Runnable {
        public final /* synthetic */ int e;
        public final /* synthetic */ Bundle f;

        public a(int i, Bundle bundle) {
            this.e = i;
            this.f = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            Objects.requireNonNull(s3.this);
            throw null;
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ String e;
        public final /* synthetic */ Bundle f;

        public b(String str, Bundle bundle) {
            this.e = str;
            this.f = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            Objects.requireNonNull(s3.this);
            throw null;
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ Bundle e;

        public c(Bundle bundle) {
            this.e = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            Objects.requireNonNull(s3.this);
            throw null;
        }
    }

    public class d implements Runnable {
        public final /* synthetic */ String e;
        public final /* synthetic */ Bundle f;

        public d(String str, Bundle bundle) {
            this.e = str;
            this.f = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            Objects.requireNonNull(s3.this);
            throw null;
        }
    }

    public class e implements Runnable {
        public final /* synthetic */ int e;
        public final /* synthetic */ Uri f;
        public final /* synthetic */ boolean g;
        public final /* synthetic */ Bundle h;

        public e(int i, Uri uri, boolean z, Bundle bundle) {
            this.e = i;
            this.f = uri;
            this.g = z;
            this.h = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            Objects.requireNonNull(s3.this);
            throw null;
        }
    }

    public s3(t3 t3Var, r3 r3Var) {
        this.g = r3Var;
    }

    public void b2(int i, Uri uri, boolean z, Bundle bundle) throws RemoteException {
        if (this.g == null) {
            return;
        }
        this.f.post(new e(i, uri, z, bundle));
    }

    @Override // defpackage.m
    public void c6(String str, Bundle bundle) throws RemoteException {
        if (this.g == null) {
            return;
        }
        this.f.post(new d(str, bundle));
    }

    public void g0(String str, Bundle bundle) throws RemoteException {
        if (this.g == null) {
            return;
        }
        this.f.post(new b(str, bundle));
    }

    public void l0(int i, Bundle bundle) {
        if (this.g == null) {
            return;
        }
        this.f.post(new a(i, bundle));
    }

    @Override // defpackage.m
    public void n6(Bundle bundle) throws RemoteException {
        if (this.g == null) {
            return;
        }
        this.f.post(new c(bundle));
    }
}
