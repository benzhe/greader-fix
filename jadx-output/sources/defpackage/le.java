package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media.MediaBrowserServiceCompat.a;

/* loaded from: classes.dex */
public class le implements Runnable {
    public final /* synthetic */ MediaBrowserServiceCompat.i e;
    public final /* synthetic */ String f;
    public final /* synthetic */ int g;
    public final /* synthetic */ int h;
    public final /* synthetic */ Bundle i;
    public final /* synthetic */ MediaBrowserServiceCompat.h j;

    public le(MediaBrowserServiceCompat.h hVar, MediaBrowserServiceCompat.i iVar, String str, int i, int i2, Bundle bundle) {
        this.j = hVar;
        this.e = iVar;
        this.f = str;
        this.g = i;
        this.h = i2;
        this.i = bundle;
    }

    @Override // java.lang.Runnable
    public void run() throws RemoteException {
        IBinder iBinderA = ((MediaBrowserServiceCompat.j) this.e).a();
        MediaBrowserServiceCompat.this.f.remove(iBinderA);
        MediaBrowserServiceCompat.a aVar = MediaBrowserServiceCompat.this.new a(this.f, this.g, this.h, this.i, this.e);
        MediaBrowserServiceCompat.this.f.put(iBinderA, aVar);
        try {
            iBinderA.linkToDeath(aVar, 0);
        } catch (RemoteException unused) {
            Log.w("MBServiceCompat", "IBinder is already dead.");
        }
    }
}
