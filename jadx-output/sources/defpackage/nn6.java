package defpackage;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public class nn6 extends AsyncTask<Void, Void, Void> {
    public Context a;
    public String b;
    public long c;

    public nn6(Context context, String str, long j) {
        this.b = null;
        this.c = 0L;
        this.a = context;
        if (!TextUtils.isEmpty(str)) {
            this.b = str;
        }
        if (j > 0) {
            this.c = j;
        }
    }

    @Override // android.os.AsyncTask
    public Void doInBackground(Void[] voidArr) {
        Context context = this.a;
        if (context == null) {
            return null;
        }
        n56.s0(context, this.b, this.c);
        return null;
    }
}
