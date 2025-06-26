package defpackage;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.ads.identifier.zzc;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* loaded from: classes.dex */
public final class rv extends Thread {
    public final /* synthetic */ Map e;

    public rv(Map map) {
        this.e = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        String message;
        StringBuilder sb;
        String str;
        Exception exc;
        new zzc();
        Map map = this.e;
        Uri.Builder builderBuildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        for (String str2 : map.keySet()) {
            builderBuildUpon.appendQueryParameter(str2, (String) map.get(str2));
        }
        String string = builderBuildUpon.build().toString();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(string).openConnection();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode < 200 || responseCode >= 300) {
                    StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 65);
                    sb2.append("Received non-success response code ");
                    sb2.append(responseCode);
                    sb2.append(" from pinging URL: ");
                    sb2.append(string);
                    Log.w("HttpUrlPinger", sb2.toString());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e) {
            e = e;
            message = e.getMessage();
            sb = new StringBuilder(jo.x(message, jo.x(string, 27)));
            str = "Error while pinging URL: ";
            exc = e;
            sb.append(str);
            sb.append(string);
            sb.append(". ");
            sb.append(message);
            Log.w("HttpUrlPinger", sb.toString(), exc);
        } catch (IndexOutOfBoundsException e2) {
            message = e2.getMessage();
            sb = new StringBuilder(jo.x(message, jo.x(string, 32)));
            str = "Error while parsing ping URL: ";
            exc = e2;
            sb.append(str);
            sb.append(string);
            sb.append(". ");
            sb.append(message);
            Log.w("HttpUrlPinger", sb.toString(), exc);
        } catch (RuntimeException e3) {
            e = e3;
            message = e.getMessage();
            sb = new StringBuilder(jo.x(message, jo.x(string, 27)));
            str = "Error while pinging URL: ";
            exc = e;
            sb.append(str);
            sb.append(string);
            sb.append(". ");
            sb.append(message);
            Log.w("HttpUrlPinger", sb.toString(), exc);
        }
    }
}
