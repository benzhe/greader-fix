package defpackage;

import android.media.session.MediaSessionManager;
import android.os.Build;

/* loaded from: classes.dex */
public final class we {
    public xe a;

    public we(String str, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.a = new ye(str, i, i2);
        } else {
            this.a = new ze(str, i, i2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof we) {
            return this.a.equals(((we) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public we(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.a = new ye(remoteUserInfo);
    }
}
