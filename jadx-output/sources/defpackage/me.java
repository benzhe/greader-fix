package defpackage;

import android.os.IBinder;
import androidx.media.MediaBrowserServiceCompat;

/* loaded from: classes.dex */
public class me implements Runnable {
    public final /* synthetic */ MediaBrowserServiceCompat.i e;
    public final /* synthetic */ MediaBrowserServiceCompat.h f;

    public me(MediaBrowserServiceCompat.h hVar, MediaBrowserServiceCompat.i iVar) {
        this.f = hVar;
        this.e = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        IBinder iBinderA = ((MediaBrowserServiceCompat.j) this.e).a();
        MediaBrowserServiceCompat.a aVarRemove = MediaBrowserServiceCompat.this.f.remove(iBinderA);
        if (aVarRemove != null) {
            iBinderA.unlinkToDeath(aVarRemove, 0);
        }
    }
}
