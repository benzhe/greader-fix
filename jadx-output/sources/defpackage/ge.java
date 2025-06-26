package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes.dex */
public class ge implements Runnable {
    public final /* synthetic */ MediaBrowserServiceCompat.i e;
    public final /* synthetic */ String f;
    public final /* synthetic */ int g;
    public final /* synthetic */ int h;
    public final /* synthetic */ Bundle i;
    public final /* synthetic */ MediaBrowserServiceCompat.h j;

    public ge(MediaBrowserServiceCompat.h hVar, MediaBrowserServiceCompat.i iVar, String str, int i, int i2, Bundle bundle) {
        this.j = hVar;
        this.e = iVar;
        this.f = str;
        this.g = i;
        this.h = i2;
        this.i = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserServiceCompat.this.f.remove(((MediaBrowserServiceCompat.j) this.e).a());
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.f;
        int i = this.g;
        int i2 = this.h;
        new HashMap();
        if (Build.VERSION.SDK_INT >= 28) {
            new ye(str, i, i2);
        }
        Objects.requireNonNull(MediaBrowserServiceCompat.this);
        MediaBrowserServiceCompat.this.b(this.f, this.h, this.i);
        Objects.requireNonNull(MediaBrowserServiceCompat.this);
        Log.i("MBServiceCompat", "No root for client " + this.f + " from service " + ge.class.getName());
        try {
            ((MediaBrowserServiceCompat.j) this.e).c(2, null);
        } catch (RemoteException unused) {
            StringBuilder sbZ = jo.z("Calling onConnectFailed() failed. Ignoring. pkg=");
            sbZ.append(this.f);
            Log.w("MBServiceCompat", sbZ.toString());
        }
    }
}
