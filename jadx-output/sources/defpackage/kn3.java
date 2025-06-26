package defpackage;

import android.util.Base64OutputStream;
import androidx.recyclerview.widget.RecyclerView;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final class kn3 {
    public ByteArrayOutputStream a = new ByteArrayOutputStream(RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT);
    public Base64OutputStream b = new Base64OutputStream(this.a, 10);

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() throws IOException {
        try {
            this.b.close();
        } catch (IOException e) {
            is0.zzc("HashManager: Unable to convert to Base64.", e);
        }
        try {
            this.a.close();
            return this.a.toString();
        } catch (IOException e2) {
            is0.zzc("HashManager: Unable to convert to Base64.", e2);
            return "";
        } finally {
            this.a = null;
            this.b = null;
        }
    }
}
