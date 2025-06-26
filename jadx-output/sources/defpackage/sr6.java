package defpackage;

import android.content.Context;
import com.noinnion.android.greader.ui.login.FeedlyLoginActivity;
import defpackage.gw6;
import java.io.IOException;
import java.util.concurrent.Callable;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class sr6<V> implements Callable<Object> {
    public final /* synthetic */ FeedlyLoginActivity e;
    public final /* synthetic */ String f;

    public sr6(FeedlyLoginActivity feedlyLoginActivity, String str) {
        this.e = feedlyLoginActivity;
        this.f = str;
    }

    @Override // java.util.concurrent.Callable
    public Object call() throws gw6, IOException {
        String strString;
        Context applicationContext = this.e.getApplicationContext();
        FormBody formBodyBuild = new FormBody.Builder(null, 1, null).add("code", this.f).add("client_id", "greader").add("client_secret", "1DFHBT3YNACQADNK9IZ0IOXG").add("redirect_uri", "greader://feedly").add("grant_type", "authorization_code").build();
        OkHttpClient okHttpClientL = n56.L();
        Request.Builder builder = new Request.Builder();
        im7.d("https://feedly.com/v3/auth/token", "url");
        Response responseExecute = okHttpClientL.newCall(builder.url("https://feedly.com/v3/auth/token").post(formBodyBuild).build()).execute();
        int iCode = responseExecute.code();
        if (iCode == 403) {
            throw new gw6.b("Login failure");
        }
        if (iCode == 401) {
            throw new gw6.b("Authentication fails (" + iCode + ')');
        }
        if (iCode != 200) {
            throw new gw6(jo.g("Invalid http status ", iCode));
        }
        ResponseBody responseBodyBody = responseExecute.body();
        if (responseBodyBody == null || (strString = responseBodyBody.string()) == null) {
            throw new gw6.b("Login failure");
        }
        JSONObject jSONObject = new JSONObject(strString);
        cn6.i0(applicationContext, jSONObject.getString("access_token"), jSONObject.getString("refresh_token"), 5);
        return yj7.a;
    }
}
