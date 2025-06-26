package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import java.util.Objects;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* loaded from: classes.dex */
public class wx {
    public static final Lock c = new ReentrantLock();
    public static wx d;
    public final Lock a = new ReentrantLock();
    public final SharedPreferences b;

    public wx(Context context) {
        this.b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static wx a(Context context) {
        Objects.requireNonNull(context, "null reference");
        Lock lock = c;
        lock.lock();
        try {
            if (d == null) {
                d = new wx(context.getApplicationContext());
            }
            wx wxVar = d;
            lock.unlock();
            return wxVar;
        } catch (Throwable th) {
            c.unlock();
            throw th;
        }
    }

    public GoogleSignInAccount b() {
        String strC = c("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(strC)) {
            return null;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(strC).length() + 20);
        sb.append("googleSignInAccount");
        sb.append(":");
        sb.append(strC);
        String strC2 = c(sb.toString());
        if (strC2 == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.C(strC2);
        } catch (JSONException unused) {
            return null;
        }
    }

    public final String c(String str) {
        this.a.lock();
        try {
            return this.b.getString(str, null);
        } finally {
            this.a.unlock();
        }
    }
}
