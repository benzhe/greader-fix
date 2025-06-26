package defpackage;

import android.os.RemoteException;
import com.noinnion.android.reader.ui.dialog.YoutubePlayerActivity;
import defpackage.oc5;

/* loaded from: classes2.dex */
public final class zw6 implements oc5.b {
    public final /* synthetic */ YoutubePlayerActivity a;

    public static final class a implements oc5.c {
        @Override // oc5.c
        public void a() {
        }

        @Override // oc5.c
        public void b(String str) {
        }

        @Override // oc5.c
        public void c() {
        }

        @Override // oc5.c
        public void d() {
        }

        @Override // oc5.c
        public void e() {
        }

        @Override // oc5.c
        public void f(oc5.a aVar) {
        }
    }

    public zw6(YoutubePlayerActivity youtubePlayerActivity) {
        this.a = youtubePlayerActivity;
    }

    @Override // oc5.b
    public void a(oc5.e eVar, oc5 oc5Var, boolean z) {
        YoutubePlayerActivity youtubePlayerActivity = this.a;
        youtubePlayerActivity.l = oc5Var;
        if (!z && oc5Var != null) {
            String str = youtubePlayerActivity.n;
            if (str == null) {
                im7.k("videoId");
                throw null;
            }
            try {
                ((dd5) oc5Var).b.J4(str, 0);
            } catch (RemoteException e) {
                throw new ad5(e);
            }
        }
        if (oc5Var != null) {
            dd5 dd5Var = (dd5) oc5Var;
            try {
                dd5Var.b.d4(new cd5(dd5Var, new a()));
            } catch (RemoteException e2) {
                throw new ad5(e2);
            }
        }
    }

    @Override // oc5.b
    public void b(oc5.e eVar, nc5 nc5Var) {
    }
}
