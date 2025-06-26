package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class je implements Runnable {
    public final /* synthetic */ MediaBrowserServiceCompat.i e;
    public final /* synthetic */ String f;
    public final /* synthetic */ IBinder g;
    public final /* synthetic */ MediaBrowserServiceCompat.h h;

    public je(MediaBrowserServiceCompat.h hVar, MediaBrowserServiceCompat.i iVar, String str, IBinder iBinder) {
        this.h = hVar;
        this.e = iVar;
        this.f = str;
        this.g = iBinder;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserServiceCompat.a aVar = MediaBrowserServiceCompat.this.f.get(((MediaBrowserServiceCompat.j) this.e).a());
        if (aVar == null) {
            StringBuilder sbZ = jo.z("removeSubscription for callback that isn't registered id=");
            sbZ.append(this.f);
            Log.w("MBServiceCompat", sbZ.toString());
            return;
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.f;
        IBinder iBinder = this.g;
        Objects.requireNonNull(mediaBrowserServiceCompat);
        boolean z = false;
        try {
            if (iBinder != null) {
                List<s9<IBinder, Bundle>> list = aVar.c.get(str);
                if (list != null) {
                    Iterator<s9<IBinder, Bundle>> it = list.iterator();
                    while (it.hasNext()) {
                        if (iBinder == it.next().a) {
                            it.remove();
                            z = true;
                        }
                    }
                    if (list.size() == 0) {
                        aVar.c.remove(str);
                    }
                }
            } else if (aVar.c.remove(str) != null) {
                z = true;
            }
            if (z) {
                return;
            }
            StringBuilder sbZ2 = jo.z("removeSubscription called for ");
            sbZ2.append(this.f);
            sbZ2.append(" which is not subscribed");
            Log.w("MBServiceCompat", sbZ2.toString());
        } finally {
            mediaBrowserServiceCompat.h();
        }
    }
}
