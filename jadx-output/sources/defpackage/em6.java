package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.michaelflisar.gdprdialog.GDPRSubNetwork;
import com.michaelflisar.gdprdialog.R$string;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class em6 {
    public vl6 a = vl6.UNDEFINED;
    public List<GDPRSubNetwork> b = new ArrayList();
    public boolean c = false;

    public final JSONObject a(Context context, ArrayList<String> arrayList, int i, int i2) throws JSONException, IOException {
        URL url = new URL(context.getString(R$string.gdpr_googles_check_is_eaa_request_url, TextUtils.join(",", arrayList)));
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setReadTimeout(i);
        httpURLConnection.setConnectTimeout(i2);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.connect();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(url.openStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                bufferedReader.close();
                return new JSONObject(sb.toString());
            }
            sb.append(line + "\n");
        }
    }

    public final void b() {
        this.a = vl6.UNDEFINED;
        this.b.clear();
        this.c = false;
    }

    public em6 c(Boolean bool) {
        b();
        if (bool != null) {
            this.a = bool.booleanValue() ? vl6.IN_EAA_OR_UNKNOWN : vl6.NOT_IN_EAA;
        } else {
            this.c = true;
        }
        return this;
    }
}
