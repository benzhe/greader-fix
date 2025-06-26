package defpackage;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class f20 {
    public static String a;
    public static int b;

    public static String a() throws Throwable {
        BufferedReader bufferedReaderB;
        if (a == null) {
            if (b == 0) {
                b = Process.myPid();
            }
            int i = b;
            String strTrim = null;
            strTrim = null;
            strTrim = null;
            BufferedReader bufferedReader = null;
            strTrim = null;
            if (i > 0) {
                try {
                    try {
                        StringBuilder sb = new StringBuilder(25);
                        sb.append("/proc/");
                        sb.append(i);
                        sb.append("/cmdline");
                        bufferedReaderB = b(sb.toString());
                    } catch (IOException unused) {
                    }
                } catch (IOException unused2) {
                    bufferedReaderB = null;
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    strTrim = bufferedReaderB.readLine().trim();
                    bufferedReaderB.close();
                } catch (IOException unused3) {
                    if (bufferedReaderB != null) {
                        bufferedReaderB.close();
                    }
                    a = strTrim;
                    return a;
                } catch (Throwable th2) {
                    bufferedReader = bufferedReaderB;
                    th = th2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            }
            a = strTrim;
        }
        return a;
    }

    public static BufferedReader b(String str) throws IOException {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }
}
