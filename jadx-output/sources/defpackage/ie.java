package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import defpackage.d0;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class ie implements Runnable {
    public final /* synthetic */ MediaBrowserServiceCompat.i e;
    public final /* synthetic */ String f;
    public final /* synthetic */ IBinder g;
    public final /* synthetic */ Bundle h;
    public final /* synthetic */ MediaBrowserServiceCompat.h i;

    public ie(MediaBrowserServiceCompat.h hVar, MediaBrowserServiceCompat.i iVar, String str, IBinder iBinder, Bundle bundle) {
        this.i = hVar;
        this.e = iVar;
        this.f = str;
        this.g = iBinder;
        this.h = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserServiceCompat.a aVar = MediaBrowserServiceCompat.this.f.get(((MediaBrowserServiceCompat.j) this.e).a());
        if (aVar == null) {
            StringBuilder sbZ = jo.z("addSubscription for callback that isn't registered id=");
            sbZ.append(this.f);
            Log.w("MBServiceCompat", sbZ.toString());
            return;
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.f;
        IBinder iBinder = this.g;
        Bundle bundle = this.h;
        Objects.requireNonNull(mediaBrowserServiceCompat);
        List<s9<IBinder, Bundle>> arrayList = aVar.c.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        for (s9<IBinder, Bundle> s9Var : arrayList) {
            if (iBinder == s9Var.a && d0.h.b(bundle, s9Var.b)) {
                return;
            }
        }
        arrayList.add(new s9<>(iBinder, bundle));
        aVar.c.put(str, arrayList);
        ce ceVar = new ce(mediaBrowserServiceCompat, str, aVar, str, bundle, null);
        if (bundle == null) {
            mediaBrowserServiceCompat.c(str, ceVar);
        } else {
            mediaBrowserServiceCompat.d(str, ceVar);
        }
        if (!ceVar.a()) {
            throw new IllegalStateException(jo.t(jo.z("onLoadChildren must call detach() or sendResult() before returning for package="), aVar.a, " id=", str));
        }
        mediaBrowserServiceCompat.g();
    }
}
