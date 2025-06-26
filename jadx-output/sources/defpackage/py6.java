package defpackage;

import android.content.Context;
import android.widget.Toast;

/* loaded from: classes2.dex */
public final class py6 implements Runnable {
    public final /* synthetic */ Context e;
    public final /* synthetic */ CharSequence f;
    public final /* synthetic */ int g;

    public py6(Context context, CharSequence charSequence, int i) {
        this.e = context;
        this.f = charSequence;
        this.g = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context = this.e;
        if (context == null) {
            return;
        }
        Toast.makeText(context, this.f, this.g).show();
    }
}
