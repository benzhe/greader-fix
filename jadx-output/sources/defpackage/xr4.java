package defpackage;

import android.os.BadParcelableException;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.RecentlyNonNull;
import java.util.Objects;

/* loaded from: classes.dex */
public class xr4 {
    public final q34 a;

    public interface a extends ry4 {
    }

    public xr4(q34 q34Var) {
        this.a = q34Var;
    }

    public void a(@RecentlyNonNull a aVar) {
        q34 q34Var = this.a;
        Objects.requireNonNull(q34Var);
        synchronized (q34Var.e) {
            for (int i = 0; i < q34Var.e.size(); i++) {
                if (aVar.equals(q34Var.e.get(i).first)) {
                    Log.w(q34Var.a, "OnEventListener already registered.");
                    return;
                }
            }
            h34 h34Var = new h34(aVar);
            q34Var.e.add(new Pair<>(aVar, h34Var));
            if (q34Var.i != null) {
                try {
                    q34Var.i.registerOnMeasurementEventListener(h34Var);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(q34Var.a, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            q34Var.c.execute(new d34(q34Var, h34Var));
        }
    }
}
