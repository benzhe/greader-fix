package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class w78 extends Handler {
    public final WeakReference<r78> a;

    public w78(r78 r78Var) {
        super(Looper.getMainLooper());
        this.a = new WeakReference<>(r78Var);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        r78 r78Var = this.a.get();
        if (r78Var == null) {
            return;
        }
        if (message.what == -1) {
            r78Var.invalidateSelf();
            return;
        }
        Iterator<o78> it = r78Var.l.iterator();
        while (it.hasNext()) {
            it.next().a(message.what);
        }
    }
}
