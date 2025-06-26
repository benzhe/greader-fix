package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import defpackage.o;

/* loaded from: classes.dex */
public class PostMessageService extends Service {
    public o e = new a(this);

    public class a extends o {
        public a(PostMessageService postMessageService) {
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.e;
    }
}
