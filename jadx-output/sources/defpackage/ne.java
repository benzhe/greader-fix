package defpackage;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;

/* loaded from: classes.dex */
public class ne implements Runnable {
    public final /* synthetic */ MediaBrowserServiceCompat.i e;
    public final /* synthetic */ String f;
    public final /* synthetic */ Bundle g;
    public final /* synthetic */ ResultReceiver h;
    public final /* synthetic */ MediaBrowserServiceCompat.h i;

    public ne(MediaBrowserServiceCompat.h hVar, MediaBrowserServiceCompat.i iVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.i = hVar;
        this.e = iVar;
        this.f = str;
        this.g = bundle;
        this.h = resultReceiver;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (MediaBrowserServiceCompat.this.f.get(((MediaBrowserServiceCompat.j) this.e).a()) == null) {
            StringBuilder sbZ = jo.z("search for callback that isn't registered query=");
            sbZ.append(this.f);
            Log.w("MBServiceCompat", sbZ.toString());
        } else {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            String str = this.f;
            ee eeVar = new ee(mediaBrowserServiceCompat, str, this.h);
            mediaBrowserServiceCompat.f(eeVar);
            if (!eeVar.a()) {
                throw new IllegalStateException(jo.n("onSearch must call detach() or sendResult() before returning for query=", str));
            }
        }
    }
}
