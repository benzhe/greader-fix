package defpackage;

import android.os.AsyncTask;
import androidx.appcompat.app.AppCompatActivity;
import com.michaelflisar.gdprdialog.GDPRSetup;
import defpackage.pl6;
import java.lang.ref.WeakReference;
import pl6.b;

/* loaded from: classes.dex */
public class im6<T extends AppCompatActivity & pl6.b> extends AsyncTask<Object, Void, em6> {
    public WeakReference<T> a;
    public GDPRSetup b;

    public im6(T t, GDPRSetup gDPRSetup) {
        this.a = new WeakReference<>(t);
        this.b = gDPRSetup;
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0132  */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.em6 doInBackground(java.lang.Object[] r17) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.im6.doInBackground(java.lang.Object[]):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.AsyncTask
    public void onPostExecute(em6 em6Var) {
        T t;
        vl6 vl6Var;
        em6 em6Var2 = em6Var;
        if (isCancelled() || (t = this.a.get()) == 0 || t.isFinishing()) {
            return;
        }
        if (this.b.m.length <= 0 || (vl6Var = em6Var2.a) != vl6.NOT_IN_EAA) {
            t.h(em6Var2);
            return;
        }
        rl6 rl6Var = new rl6(t, ql6.AUTOMATIC_PERSONAL_CONSENT, vl6Var);
        pl6.b().c(rl6Var);
        t.c(rl6Var, true);
    }
}
