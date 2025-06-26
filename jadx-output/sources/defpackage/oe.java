package defpackage;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;

/* loaded from: classes.dex */
public class oe implements Runnable {
    public final /* synthetic */ MediaBrowserServiceCompat.i e;
    public final /* synthetic */ String f;
    public final /* synthetic */ Bundle g;
    public final /* synthetic */ ResultReceiver h;
    public final /* synthetic */ MediaBrowserServiceCompat.h i;

    public oe(MediaBrowserServiceCompat.h hVar, MediaBrowserServiceCompat.i iVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.i = hVar;
        this.e = iVar;
        this.f = str;
        this.g = bundle;
        this.h = resultReceiver;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (MediaBrowserServiceCompat.this.f.get(((MediaBrowserServiceCompat.j) this.e).a()) == null) {
            StringBuilder sbZ = jo.z("sendCustomAction for callback that isn't registered action=");
            sbZ.append(this.f);
            sbZ.append(", extras=");
            sbZ.append(this.g);
            Log.w("MBServiceCompat", sbZ.toString());
            return;
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.f;
        Bundle bundle = this.g;
        fe feVar = new fe(mediaBrowserServiceCompat, str, this.h);
        mediaBrowserServiceCompat.a(feVar);
        if (feVar.a()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
    }
}
