package defpackage;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;

@Deprecated
/* loaded from: classes.dex */
public final class e50 {
    public String d;
    public Context e;
    public String f;
    public AtomicBoolean h;
    public File i;
    public BlockingQueue<o50> a = new ArrayBlockingQueue(100);
    public LinkedHashMap<String, String> b = new LinkedHashMap<>();
    public Map<String, i50> c = new HashMap();
    public final HashSet<String> g = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    public final Map<String, String> a(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            String str = (String) linkedHashMap.get(key);
            i50 i50Var = this.c.get(key);
            if (i50Var == null) {
                i50Var = i50.a;
            }
            linkedHashMap.put(key, i50Var.a(str, value));
        }
        return linkedHashMap;
    }

    public final void b(Map<String, String> map, n50 n50Var) throws Throwable {
        FileOutputStream fileOutputStream;
        Uri.Builder builderBuildUpon = Uri.parse(this.d).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String string = builderBuildUpon.build().toString();
        if (n50Var != null) {
            StringBuilder sb = new StringBuilder(string);
            if (!TextUtils.isEmpty(n50Var.a)) {
                sb.append("&it=");
                sb.append(n50Var.a);
            }
            if (!TextUtils.isEmpty(n50Var.b)) {
                sb.append("&blat=");
                sb.append(n50Var.b);
            }
            string = sb.toString();
        }
        if (!this.h.get()) {
            zzr.zzkv();
            zzj.zzb(this.e, this.f, string);
            return;
        }
        File file = this.i;
        if (file == null) {
            is0.zzez("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
            return;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, true);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
            fileOutputStream = fileOutputStream2;
        }
        try {
            fileOutputStream.write(string.getBytes());
            fileOutputStream.write(10);
            try {
                fileOutputStream.close();
            } catch (IOException e2) {
                is0.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e2);
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            is0.zzd("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    is0.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e4);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e5) {
                    is0.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e5);
                }
            }
            throw th;
        }
    }
}
