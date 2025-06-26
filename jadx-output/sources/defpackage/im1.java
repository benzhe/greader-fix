package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class im1 {
    public final b20 a;
    public final Executor b;

    public im1(zzay zzayVar, b20 b20Var, Executor executor) {
        this.a = b20Var;
        this.b = executor;
    }

    public final Bitmap a(byte[] bArr, BitmapFactory.Options options) {
        long jB = this.a.b();
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long jB2 = this.a.b();
        if (bitmapDecodeByteArray != null) {
            int width = bitmapDecodeByteArray.getWidth();
            int height = bitmapDecodeByteArray.getHeight();
            int allocationByteCount = bitmapDecodeByteArray.getAllocationByteCount();
            long j = jB2 - jB;
            boolean z = Looper.getMainLooper().getThread() == Thread.currentThread();
            StringBuilder sb = new StringBuilder(108);
            sb.append("Decoded image w: ");
            sb.append(width);
            sb.append(" h:");
            sb.append(height);
            sb.append(" bytes: ");
            sb.append(allocationByteCount);
            sb.append(" time: ");
            sb.append(j);
            sb.append(" on ui thread: ");
            sb.append(z);
            zzd.zzed(sb.toString());
        }
        return bitmapDecodeByteArray;
    }
}
