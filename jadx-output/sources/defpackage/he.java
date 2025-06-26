package defpackage;

import androidx.media.MediaBrowserServiceCompat;

/* loaded from: classes.dex */
public class he implements Runnable {
    public final /* synthetic */ MediaBrowserServiceCompat.i e;
    public final /* synthetic */ MediaBrowserServiceCompat.h f;

    public he(MediaBrowserServiceCompat.h hVar, MediaBrowserServiceCompat.i iVar) {
        this.f = hVar;
        this.e = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserServiceCompat.a aVarRemove = MediaBrowserServiceCompat.this.f.remove(((MediaBrowserServiceCompat.j) this.e).a());
        if (aVarRemove != null) {
            ((MediaBrowserServiceCompat.j) aVarRemove.b).a().unlinkToDeath(aVarRemove, 0);
        }
    }
}
