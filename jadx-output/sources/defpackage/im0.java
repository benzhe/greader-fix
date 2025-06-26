package defpackage;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeSet;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes.dex */
public class im0 implements fp3 {
    public final tj0 a;
    public final ml0 b;

    public im0(tj0 tj0Var) {
        ml0 ml0Var = new ml0();
        this.a = tj0Var;
        this.b = ml0Var;
    }

    @Override // defpackage.fp3
    public pu3 zza(j40<?> j40Var) throws IOException, uh0 {
        byte[] bArr;
        Map<String, String> mapEmptyMap;
        ts0 ts0VarA;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            ts0 ts0Var = null;
            try {
                ui3 ui3VarZzf = j40Var.zzf();
                if (ui3VarZzf == null) {
                    mapEmptyMap = Collections.emptyMap();
                } else {
                    HashMap map = new HashMap();
                    String str = ui3VarZzf.b;
                    if (str != null) {
                        map.put("If-None-Match", str);
                    }
                    long j = ui3VarZzf.d;
                    if (j > 0) {
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
                        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
                        map.put("If-Modified-Since", simpleDateFormat.format(new Date(j)));
                    }
                    mapEmptyMap = map;
                }
                ts0VarA = this.a.a(j40Var, mapEmptyMap);
            } catch (IOException e) {
                e = e;
                bArr = null;
            }
            try {
                int i = ts0VarA.a;
                List listUnmodifiableList = Collections.unmodifiableList(ts0VarA.b);
                if (i != 304) {
                    InputStream inputStream = ts0VarA.d;
                    if (inputStream == null) {
                        inputStream = null;
                    }
                    byte[] bArrA2 = inputStream != null ? c50.A2(inputStream, ts0VarA.c, this.b) : new byte[0];
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                    if (tg0.a || jElapsedRealtime2 > 3000) {
                        Object[] objArr = new Object[5];
                        objArr[0] = j40Var;
                        objArr[1] = Long.valueOf(jElapsedRealtime2);
                        objArr[2] = bArrA2 != null ? Integer.valueOf(bArrA2.length) : "null";
                        objArr[3] = Integer.valueOf(i);
                        objArr[4] = Integer.valueOf(((im3) j40Var.zzj()).b);
                        tg0.a("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
                    }
                    if (i < 200 || i > 299) {
                        throw new IOException();
                    }
                    return new pu3(i, bArrA2, false, SystemClock.elapsedRealtime() - jElapsedRealtime, (List<br3>) listUnmodifiableList);
                }
                long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                ui3 ui3VarZzf2 = j40Var.zzf();
                if (ui3VarZzf2 == null) {
                    return new pu3(304, (byte[]) null, true, jElapsedRealtime3, (List<br3>) listUnmodifiableList);
                }
                TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                if (!listUnmodifiableList.isEmpty()) {
                    Iterator it = listUnmodifiableList.iterator();
                    while (it.hasNext()) {
                        treeSet.add(((br3) it.next()).a);
                    }
                }
                ArrayList arrayList = new ArrayList(listUnmodifiableList);
                List<br3> list = ui3VarZzf2.h;
                if (list != null) {
                    if (!list.isEmpty()) {
                        for (br3 br3Var : ui3VarZzf2.h) {
                            if (!treeSet.contains(br3Var.a)) {
                                arrayList.add(br3Var);
                            }
                        }
                    }
                } else if (!ui3VarZzf2.g.isEmpty()) {
                    for (Map.Entry<String, String> entry : ui3VarZzf2.g.entrySet()) {
                        if (!treeSet.contains(entry.getKey())) {
                            arrayList.add(new br3(entry.getKey(), entry.getValue()));
                        }
                    }
                }
                return new pu3(304, ui3VarZzf2.a, true, jElapsedRealtime3, (List<br3>) arrayList);
            } catch (IOException e2) {
                e = e2;
                bArr = null;
                ts0Var = ts0VarA;
                if (e instanceof SocketTimeoutException) {
                    c50.m2("socket", j40Var, new te0());
                } else {
                    if (e instanceof MalformedURLException) {
                        String strValueOf = String.valueOf(j40Var.getUrl());
                        throw new RuntimeException(strValueOf.length() != 0 ? "Bad URL ".concat(strValueOf) : new String("Bad URL "), e);
                    }
                    if (ts0Var == null) {
                        throw new rt3(e);
                    }
                    int i2 = ts0Var.a;
                    tg0.b("Unexpected response code %d for %s", Integer.valueOf(i2), j40Var.getUrl());
                    if (bArr != null) {
                        pu3 pu3Var = new pu3(i2, bArr, false, SystemClock.elapsedRealtime() - jElapsedRealtime, (List<br3>) Collections.unmodifiableList(ts0Var.b));
                        if (i2 != 401 && i2 != 403) {
                            if (i2 >= 400 && i2 <= 499) {
                                throw new sj3(pu3Var);
                            }
                            if (i2 < 500 || i2 > 599) {
                                throw new tf0(pu3Var);
                            }
                            throw new tf0(pu3Var);
                        }
                        c50.m2("auth", j40Var, new eh3(pu3Var));
                    } else {
                        c50.m2("network", j40Var, new tr3());
                    }
                }
            }
        }
    }
}
