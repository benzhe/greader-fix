package defpackage;

import android.support.v4.os.ResultReceiver;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;

/* loaded from: classes.dex */
public class ke implements Runnable {
    public final /* synthetic */ MediaBrowserServiceCompat.i e;
    public final /* synthetic */ String f;
    public final /* synthetic */ ResultReceiver g;
    public final /* synthetic */ MediaBrowserServiceCompat.h h;

    public ke(MediaBrowserServiceCompat.h hVar, MediaBrowserServiceCompat.i iVar, String str, ResultReceiver resultReceiver) {
        this.h = hVar;
        this.e = iVar;
        this.f = str;
        this.g = resultReceiver;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (MediaBrowserServiceCompat.this.f.get(((MediaBrowserServiceCompat.j) this.e).a()) == null) {
            StringBuilder sbZ = jo.z("getMediaItem for callback that isn't registered id=");
            sbZ.append(this.f);
            Log.w("MBServiceCompat", sbZ.toString());
        } else {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            String str = this.f;
            de deVar = new de(mediaBrowserServiceCompat, str, this.g);
            mediaBrowserServiceCompat.e(deVar);
            if (!deVar.a()) {
                throw new IllegalStateException(jo.n("onLoadItem must call detach() or sendResult() before returning for id=", str));
            }
        }
    }
}
