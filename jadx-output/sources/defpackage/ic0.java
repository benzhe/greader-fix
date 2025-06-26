package defpackage;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzaiy;
import com.google.android.gms.internal.ads.zzaja;
import com.google.android.gms.internal.ads.zzaue;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class ic0 implements fp3 {
    public volatile bc0 a;
    public final Context b;

    public ic0(Context context) {
        this.b = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.fp3
    public final pu3 zza(j40<?> j40Var) throws uh0 {
        Map<String, String> headers = j40Var.getHeaders();
        int size = headers.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        int i2 = 0;
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            strArr[i2] = entry.getKey();
            strArr2[i2] = entry.getValue();
            i2++;
        }
        zzaiy zzaiyVar = new zzaiy(j40Var.getUrl(), strArr, strArr2);
        long jB = zzr.zzlc().b();
        try {
            xs0 xs0Var = new xs0();
            this.a = new bc0(this.b, zzr.zzlj().zzaai(), new mc0(this, xs0Var), new oc0(xs0Var));
            this.a.checkAvailabilityAndConnect();
            lc0 lc0Var = new lc0(zzaiyVar);
            zv2 zv2Var = ms0.a;
            aw2 aw2VarD = vt2.d(vt2.m(xs0Var, lc0Var, zv2Var), ((Integer) os3.j.f.a(y40.v2)).intValue(), TimeUnit.MILLISECONDS, ms0.d);
            aw2VarD.i(new nc0(this), zv2Var);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) aw2VarD.get();
            long jB2 = zzr.zzlc().b() - jB;
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(jB2);
            sb.append("ms");
            zzd.zzed(sb.toString());
            zzaja zzajaVar = (zzaja) new zzaue(parcelFileDescriptor).n(zzaja.CREATOR);
            if (zzajaVar == null) {
                return null;
            }
            if (zzajaVar.e) {
                throw new uh0(zzajaVar.f);
            }
            if (zzajaVar.i.length != zzajaVar.j.length) {
                return null;
            }
            HashMap map = new HashMap();
            while (true) {
                String[] strArr3 = zzajaVar.i;
                if (i >= strArr3.length) {
                    return new pu3(zzajaVar.g, zzajaVar.h, map, zzajaVar.k, zzajaVar.l);
                }
                map.put(strArr3[i], zzajaVar.j[i]);
                i++;
            }
        } catch (InterruptedException | ExecutionException unused) {
            long jB3 = zzr.zzlc().b() - jB;
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(jB3);
            sb2.append("ms");
            zzd.zzed(sb2.toString());
            return null;
        } catch (Throwable th) {
            long jB4 = zzr.zzlc().b() - jB;
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(jB4);
            sb3.append("ms");
            zzd.zzed(sb3.toString());
            throw th;
        }
    }
}
