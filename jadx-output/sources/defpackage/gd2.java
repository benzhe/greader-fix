package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class gd2 implements qd2<nd2<Bundle>> {
    public final zv2 a;
    public final Context b;

    public gd2(zv2 zv2Var, Context context) {
        this.a = zv2Var;
        this.b = context;
    }

    public static Bundle b(Context context, JSONArray jSONArray) {
        Object obj;
        SharedPreferences sharedPreferences;
        String str;
        Bundle bundle = new Bundle();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            String strOptString = jSONObjectOptJSONObject.optString("bk");
            String strOptString2 = jSONObjectOptJSONObject.optString("sk");
            int iOptInt = jSONObjectOptJSONObject.optInt(NSRSS20.ENC_TYPE, -1);
            int i2 = iOptInt != 0 ? iOptInt != 1 ? iOptInt != 2 ? 0 : 3 : 2 : 1;
            if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2) && i2 != 0) {
                String[] strArrSplit = strOptString2.split("/");
                if (strArrSplit.length > 2 || strArrSplit.length == 0) {
                    obj = null;
                } else {
                    if (strArrSplit.length == 1) {
                        sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                        str = strArrSplit[0];
                    } else {
                        sharedPreferences = context.getSharedPreferences(strArrSplit[0], 0);
                        str = strArrSplit[1];
                    }
                    obj = sharedPreferences.getAll().get(str);
                }
                if (obj != null) {
                    int i3 = md2.a[i2 - 1];
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 == 3 && (obj instanceof Boolean)) {
                                bundle.putBoolean(strOptString, ((Boolean) obj).booleanValue());
                            }
                        } else if (obj instanceof Integer) {
                            bundle.putInt(strOptString, ((Integer) obj).intValue());
                        } else if (obj instanceof Long) {
                            bundle.putLong(strOptString, ((Long) obj).longValue());
                        } else if (obj instanceof Float) {
                            bundle.putFloat(strOptString, ((Float) obj).floatValue());
                        }
                    } else if (obj instanceof String) {
                        bundle.putString(strOptString, (String) obj);
                    }
                }
            }
        }
        return bundle;
    }

    @Override // defpackage.qd2
    public final aw2<nd2<Bundle>> a() {
        return this.a.y(new Callable(this) { // from class: jd2
            public final gd2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                gd2 gd2Var = this.e;
                Objects.requireNonNull(gd2Var);
                String str = (String) os3.j.f.a(y40.I3);
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                try {
                    return new nd2(gd2.b(gd2Var.b, new JSONArray(str))) { // from class: id2
                        public final Bundle a;

                        {
                            this.a = bundle;
                        }

                        @Override // defpackage.nd2
                        public final void b(Object obj) {
                            ((Bundle) obj).putBundle("shared_pref", this.a);
                        }
                    };
                } catch (JSONException e) {
                    is0.zzb("JSON parsing error", e);
                    return null;
                }
            }
        });
    }
}
