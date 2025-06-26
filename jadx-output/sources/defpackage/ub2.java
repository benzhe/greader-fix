package defpackage;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.internal.ads.zzajy;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ub2 implements qd2<rb2> {
    public final zv2 a;
    public final ll2 b;
    public final PackageInfo c;
    public final zzf d;

    public ub2(zv2 zv2Var, ll2 ll2Var, PackageInfo packageInfo, zzf zzfVar) {
        this.a = zv2Var;
        this.b = ll2Var;
        this.c = packageInfo;
        this.d = zzfVar;
    }

    @Override // defpackage.qd2
    public final aw2<rb2> a() {
        return this.a.y(new Callable(this) { // from class: tb2
            public final ub2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                final ub2 ub2Var = this.e;
                final ArrayList<String> arrayList = ub2Var.b.g;
                return arrayList == null ? wb2.a : arrayList.isEmpty() ? vb2.a : new rb2(ub2Var, arrayList) { // from class: yb2
                    public final ub2 a;
                    public final ArrayList b;

                    {
                        this.a = ub2Var;
                        this.b = arrayList;
                    }

                    @Override // defpackage.nd2
                    public final void b(Bundle bundle) {
                        String str;
                        JSONArray jSONArrayOptJSONArray;
                        ub2 ub2Var2 = this.a;
                        ArrayList<String> arrayList2 = this.b;
                        Bundle bundle2 = bundle;
                        Objects.requireNonNull(ub2Var2);
                        bundle2.putInt("native_version", 3);
                        bundle2.putStringArrayList("native_templates", arrayList2);
                        bundle2.putStringArrayList("native_custom_templates", ub2Var2.b.h);
                        String str2 = "landscape";
                        if (((Boolean) os3.j.f.a(y40.W1)).booleanValue() && ub2Var2.b.i.e > 3) {
                            bundle2.putBoolean("enable_native_media_orientation", true);
                            int i = ub2Var2.b.i.l;
                            String str3 = i != 1 ? i != 2 ? i != 3 ? i != 4 ? "unknown" : "square" : "portrait" : "landscape" : "any";
                            if (!"unknown".equals(str3)) {
                                bundle2.putString("native_media_orientation", str3);
                            }
                        }
                        int i2 = ub2Var2.b.i.g;
                        if (i2 == 0) {
                            str2 = "any";
                        } else if (i2 == 1) {
                            str2 = "portrait";
                        } else if (i2 != 2) {
                            str2 = "unknown";
                        }
                        if (!"unknown".equals(str2)) {
                            bundle2.putString("native_image_orientation", str2);
                        }
                        bundle2.putBoolean("native_multiple_images", ub2Var2.b.i.h);
                        bundle2.putBoolean("use_custom_mute", ub2Var2.b.i.k);
                        PackageInfo packageInfo = ub2Var2.c;
                        int i3 = packageInfo == null ? 0 : packageInfo.versionCode;
                        if (i3 > ub2Var2.d.zzzf()) {
                            ub2Var2.d.zzzl();
                            ub2Var2.d.zzdi(i3);
                        }
                        JSONObject jSONObjectZzzk = ub2Var2.d.zzzk();
                        String string = (jSONObjectZzzk == null || (jSONArrayOptJSONArray = jSONObjectZzzk.optJSONArray(ub2Var2.b.f)) == null) ? null : jSONArrayOptJSONArray.toString();
                        if (!TextUtils.isEmpty(string)) {
                            bundle2.putString("native_advanced_settings", string);
                        }
                        int i4 = ub2Var2.b.k;
                        if (i4 > 1) {
                            bundle2.putInt("max_num_ads", i4);
                        }
                        zzajy zzajyVar = ub2Var2.b.c;
                        if (zzajyVar != null) {
                            if (TextUtils.isEmpty(zzajyVar.g)) {
                                if (zzajyVar.e >= 2) {
                                    int i5 = zzajyVar.h;
                                    str = (i5 == 2 || i5 != 3) ? "l" : "p";
                                } else {
                                    int i6 = zzajyVar.f;
                                    if (i6 != 1) {
                                        if (i6 != 2) {
                                            StringBuilder sb = new StringBuilder(52);
                                            sb.append("Instream ad video aspect ratio ");
                                            sb.append(i6);
                                            sb.append(" is wrong.");
                                            is0.zzex(sb.toString());
                                        }
                                    }
                                }
                                bundle2.putString("ia_var", str);
                            } else {
                                bundle2.putString("ad_tag", zzajyVar.g);
                            }
                            bundle2.putBoolean("instr", true);
                        }
                        if (ub2Var2.b.a() != null) {
                            bundle2.putBoolean("has_delayed_banner_listener", true);
                        }
                    }
                };
            }
        });
    }
}
