package defpackage;

import android.os.RemoteException;
import com.noinnion.android.greader.ui.tts.TtsActivity;
import defpackage.jv6;

/* loaded from: classes2.dex */
public final class iv6 implements jv6.e {
    public final /* synthetic */ TtsActivity a;

    public iv6(TtsActivity ttsActivity) {
        this.a = ttsActivity;
    }

    @Override // jv6.e
    public void J() {
        try {
            TtsActivity ttsActivity = this.a;
            op6 op6Var = ttsActivity.G;
            ttsActivity.C((op6Var == null || op6Var.X1()) ? false : true);
            op6 op6Var2 = this.a.G;
            if (op6Var2 != null) {
                op6Var2.J();
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // jv6.e
    public void a(int i) {
        try {
            op6 op6Var = this.a.G;
            if (op6Var != null) {
                op6Var.E2(i);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // jv6.e
    public void m(int i, int i2) {
        try {
            op6 op6Var = this.a.G;
            if (op6Var != null) {
                op6Var.m(i, i2);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // jv6.e
    public void remove(int i) {
        try {
            op6 op6Var = this.a.G;
            if (op6Var != null) {
                op6Var.remove(i);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
