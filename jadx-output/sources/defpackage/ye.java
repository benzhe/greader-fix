package defpackage;

import android.media.session.MediaSessionManager;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ye implements xe {
    public final MediaSessionManager.RemoteUserInfo a;

    public ye(String str, int i, int i2) {
        this.a = new MediaSessionManager.RemoteUserInfo(str, i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ye) {
            return this.a.equals(((ye) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.a);
    }

    public ye(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.a = remoteUserInfo;
    }
}
