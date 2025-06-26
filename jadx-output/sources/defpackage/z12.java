package defpackage;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzvt;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;
import defpackage.vv2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class z12 implements w12<kj1> {
    public final ji1 a;
    public final zv2 b;
    public final om1 c;
    public final yl2<io1> d;

    public z12(ji1 ji1Var, zv2 zv2Var, om1 om1Var, yl2<io1> yl2Var) {
        this.a = ji1Var;
        this.b = zv2Var;
        this.c = om1Var;
        this.d = yl2Var;
    }

    @Override // defpackage.jz1
    public final boolean a(hl2 hl2Var, sk2 sk2Var) {
        zk2 zk2Var = sk2Var.r;
        return (zk2Var == null || zk2Var.c == null) ? false : true;
    }

    @Override // defpackage.jz1
    public final aw2<List<aw2<kj1>>> b(final hl2 hl2Var, final sk2 sk2Var) {
        return vt2.m(vt2.m(this.d.b(), new cv2(this, sk2Var) { // from class: y12
            public final z12 a;
            public final sk2 b;

            {
                this.a = this;
                this.b = sk2Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) throws JSONException {
                z12 z12Var = this.a;
                sk2 sk2Var2 = this.b;
                io1 io1Var = (io1) obj;
                Objects.requireNonNull(z12Var);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("isNonagon", true);
                if (((Boolean) os3.j.f.a(y40.b5)).booleanValue() && bi.K()) {
                    jSONObject.put("skipDeepLinkValidation", true);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("response", sk2Var2.r.c);
                jSONObject2.put("sdk_params", jSONObject);
                return vt2.m(io1Var.e("google.afma.nativeAds.preProcessJson", jSONObject2), new cv2(z12Var, io1Var) { // from class: a22
                    public final z12 a;
                    public final io1 b;

                    {
                        this.a = z12Var;
                        this.b = io1Var;
                    }

                    @Override // defpackage.cv2
                    public final aw2 a(Object obj2) throws af0 {
                        z12 z12Var2 = this.a;
                        io1 io1Var2 = this.b;
                        JSONObject jSONObject3 = (JSONObject) obj2;
                        yl2<io1> yl2Var = z12Var2.d;
                        aw2<io1> aw2VarJ = vt2.j(io1Var2);
                        synchronized (yl2Var) {
                            yl2Var.a.addFirst(aw2VarJ);
                        }
                        if (jSONObject3.optBoolean("success")) {
                            return vt2.j(jSONObject3.getJSONObject("json").getJSONArray("ads"));
                        }
                        throw new af0("process json failed");
                    }
                }, z12Var.b);
            }
        }, this.b), new cv2(this, hl2Var, sk2Var) { // from class: b22
            public final z12 a;
            public final hl2 b;
            public final sk2 c;

            {
                this.a = this;
                this.b = hl2Var;
                this.c = sk2Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                z12 z12Var = this.a;
                hl2 hl2Var2 = this.b;
                sk2 sk2Var2 = this.c;
                JSONArray jSONArray = (JSONArray) obj;
                Objects.requireNonNull(z12Var);
                dm2 dm2Var = dm2.NO_FILL;
                if (jSONArray.length() == 0) {
                    return new vv2.a(new bu1(dm2Var));
                }
                if (hl2Var2.a.a.k <= 1) {
                    return vt2.l(z12Var.c(hl2Var2, sk2Var2, jSONArray.getJSONObject(0)), d22.a, z12Var.b);
                }
                int length = jSONArray.length();
                z12Var.d.a(Math.min(length, hl2Var2.a.a.k));
                ArrayList arrayList = new ArrayList(hl2Var2.a.a.k);
                for (int i = 0; i < hl2Var2.a.a.k; i++) {
                    if (i < length) {
                        arrayList.add(z12Var.c(hl2Var2, sk2Var2, jSONArray.getJSONObject(i)));
                    } else {
                        arrayList.add(new vv2.a(new bu1(dm2Var)));
                    }
                }
                return vt2.j(arrayList);
            }
        }, this.b);
    }

    public final aw2<kj1> c(final hl2 hl2Var, final sk2 sk2Var, final JSONObject jSONObject) {
        aw2 aw2VarC;
        aw2 aw2VarM;
        JSONObject jSONObjectOptJSONObject;
        aw2 aw2VarJ;
        aw2<io1> aw2Var;
        aw2 aw2VarL;
        aw2<io1> aw2Var2;
        JSONArray jSONArray;
        aw2 aw2VarJ2;
        aw2 aw2VarJ3;
        aw2<io1> aw2VarB = this.d.b();
        final om1 om1Var = this.c;
        final aw2 aw2VarY = om1Var.a.y(new Callable(om1Var, hl2Var, sk2Var, jSONObject) { // from class: nm1
            public final hl2 e;
            public final sk2 f;
            public final JSONObject g;

            {
                this.e = hl2Var;
                this.f = sk2Var;
                this.g = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() throws z22 {
                dm2 dm2Var = dm2.INTERNAL_ERROR;
                hl2 hl2Var2 = this.e;
                sk2 sk2Var2 = this.f;
                JSONObject jSONObject2 = this.g;
                wj1 wj1Var = new wj1();
                int iOptInt = jSONObject2.optInt("template_id", -1);
                synchronized (wj1Var) {
                    wj1Var.a = iOptInt;
                }
                String strOptString = jSONObject2.optString("custom_template_id");
                synchronized (wj1Var) {
                    wj1Var.q = strOptString;
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("omid_settings");
                String strOptString2 = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("omid_partner_name") : null;
                synchronized (wj1Var) {
                    wj1Var.u = strOptString2;
                }
                ll2 ll2Var = hl2Var2.a.a;
                if (!ll2Var.g.contains(Integer.toString(wj1Var.k()))) {
                    throw new z22(dm2Var, jo.M(32, "Invalid template ID: ", wj1Var.k()));
                }
                if (wj1Var.k() == 3) {
                    if (wj1Var.c() == null) {
                        throw new z22(dm2Var, "No custom template id for custom template ad response.");
                    }
                    if (!ll2Var.h.contains(wj1Var.c())) {
                        throw new z22(dm2Var, "Unexpected custom template id in the response.");
                    }
                }
                double dOptDouble = jSONObject2.optDouble("rating", -1.0d);
                synchronized (wj1Var) {
                    wj1Var.n = dOptDouble;
                }
                String strOptString3 = jSONObject2.optString("headline", null);
                if (sk2Var2.H) {
                    zzr.zzkv();
                    String strZzzu = zzj.zzzu();
                    strOptString3 = jo.c(jo.x(strOptString3, jo.x(strZzzu, 3)), strZzzu, " : ", strOptString3);
                }
                wj1Var.u("headline", strOptString3);
                wj1Var.u("body", jSONObject2.optString("body", null));
                wj1Var.u("call_to_action", jSONObject2.optString("call_to_action", null));
                wj1Var.u("store", jSONObject2.optString("store", null));
                wj1Var.u("price", jSONObject2.optString("price", null));
                wj1Var.u("advertiser", jSONObject2.optString("advertiser", null));
                return wj1Var;
            }
        });
        sm1 sm1Var = om1Var.b;
        Objects.requireNonNull(sm1Var);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("images");
        zzaei zzaeiVar = sm1Var.h;
        final aw2<List<h70>> aw2VarA = sm1Var.a(jSONArrayOptJSONArray, zzaeiVar.f, zzaeiVar.h);
        sm1 sm1Var2 = om1Var.b;
        Objects.requireNonNull(sm1Var2);
        final aw2<h70> aw2VarB2 = sm1Var2.b(jSONObject.optJSONObject("secondary_image"), sm1Var2.h.f);
        sm1 sm1Var3 = om1Var.b;
        Objects.requireNonNull(sm1Var3);
        final aw2<h70> aw2VarB3 = sm1Var3.b(jSONObject.optJSONObject("app_icon"), sm1Var3.h.f);
        final sm1 sm1Var4 = om1Var.b;
        Objects.requireNonNull(sm1Var4);
        final JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("attribution");
        if (jSONObjectOptJSONObject2 == null) {
            aw2VarC = vt2.j(null);
        } else {
            JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject2.optJSONArray("images");
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject(NSRSS20.IMAGE);
            if (jSONArrayOptJSONArray2 == null && jSONObjectOptJSONObject3 != null) {
                jSONArrayOptJSONArray2 = new JSONArray();
                jSONArrayOptJSONArray2.put(jSONObjectOptJSONObject3);
            }
            aw2VarC = sm1.c(jSONObjectOptJSONObject2.optBoolean("require"), vt2.l(sm1Var4.a(jSONArrayOptJSONArray2, false, true), new vs2(sm1Var4, jSONObjectOptJSONObject2) { // from class: tm1
                public final sm1 a;
                public final JSONObject b;

                {
                    this.a = sm1Var4;
                    this.b = jSONObjectOptJSONObject2;
                }

                @Override // defpackage.vs2
                public final Object apply(Object obj) throws JSONException {
                    sm1 sm1Var5 = this.a;
                    JSONObject jSONObject2 = this.b;
                    List list = (List) obj;
                    Objects.requireNonNull(sm1Var5);
                    if (list == null || list.isEmpty()) {
                        return null;
                    }
                    String strOptString = jSONObject2.optString(AtomText.TYPE_TEXT);
                    Integer numD = sm1.d(jSONObject2, "bg_color");
                    Integer numD2 = sm1.d(jSONObject2, "text_color");
                    int iOptInt = jSONObject2.optInt("text_size", -1);
                    boolean zOptBoolean = jSONObject2.optBoolean("allow_pub_rendering");
                    int iOptInt2 = jSONObject2.optInt("animation_ms", 1000);
                    return new g70(strOptString, list, numD, numD2, iOptInt > 0 ? Integer.valueOf(iOptInt) : null, jSONObject2.optInt("presentation_ms", 4000) + iOptInt2, sm1Var5.h.i, zOptBoolean);
                }
            }, sm1Var4.g));
        }
        sm1 sm1Var5 = om1Var.b;
        Objects.requireNonNull(sm1Var5);
        JSONObject jSONObjectZza = zzbh.zza(jSONObject, "html_containers", "instream");
        if (jSONObjectZza == null) {
            final JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("video");
            if (jSONObjectOptJSONObject4 == null) {
                aw2VarM = vt2.j(null);
            } else if (TextUtils.isEmpty(jSONObjectOptJSONObject4.optString("vast_xml"))) {
                is0.zzez("Required field 'vast_xml' is missing");
                aw2VarM = vt2.j(null);
            } else {
                final fn1 fn1Var = sm1Var5.i;
                Objects.requireNonNull(fn1Var);
                aw2VarM = vt2.n(vt2.d(vt2.m(vt2.m(vt2.j(null), new cv2(fn1Var) { // from class: kn1
                    public final fn1 a;

                    {
                        this.a = fn1Var;
                    }

                    @Override // defpackage.cv2
                    public final aw2 a(Object obj) throws ix0 {
                        fn1 fn1Var2 = this.a;
                        xw0 xw0VarA = fn1Var2.c.a(zzvt.C(), null, null);
                        us0 us0Var = new us0(xw0VarA);
                        fn1Var2.a(xw0VarA);
                        ((ww0) xw0VarA.I()).l = new iy0(us0Var) { // from class: jn1
                            public final us0 a;

                            {
                                this.a = us0Var;
                            }

                            @Override // defpackage.iy0
                            public final void a() {
                                us0 us0Var2 = this.a;
                                us0Var2.a(us0Var2.f);
                            }
                        };
                        xw0VarA.loadUrl((String) os3.j.f.a(y40.S1));
                        return us0Var;
                    }
                }, fn1Var.b), new cv2(fn1Var, jSONObjectOptJSONObject4) { // from class: in1
                    public final fn1 a;
                    public final JSONObject b;

                    {
                        this.a = fn1Var;
                        this.b = jSONObjectOptJSONObject4;
                    }

                    @Override // defpackage.cv2
                    public final aw2 a(Object obj) {
                        final fn1 fn1Var2 = this.a;
                        JSONObject jSONObject2 = this.b;
                        final xw0 xw0Var = (xw0) obj;
                        Objects.requireNonNull(fn1Var2);
                        final us0 us0Var = new us0(xw0Var);
                        if (fn1Var2.a.c != null) {
                            xw0Var.J(new jy0(5, 0, 0));
                        } else {
                            xw0Var.J(new jy0(4, 0, 0));
                        }
                        ((ww0) xw0Var.I()).k = new gy0(fn1Var2, xw0Var, us0Var) { // from class: ln1
                            public final fn1 a;
                            public final xw0 b;
                            public final us0 c;

                            {
                                this.a = fn1Var2;
                                this.b = xw0Var;
                                this.c = us0Var;
                            }

                            @Override // defpackage.gy0
                            public final void a(boolean z) {
                                fn1 fn1Var3 = this.a;
                                xw0 xw0Var2 = this.b;
                                us0 us0Var2 = this.c;
                                if (fn1Var3.a.b != null && xw0Var2.f() != null) {
                                    xw0Var2.f().Z6(fn1Var3.a.b);
                                }
                                us0Var2.a(us0Var2.f);
                            }
                        };
                        xw0Var.Z("google.afma.nativeAds.renderVideo", jSONObject2);
                        return us0Var;
                    }
                }, fn1Var.b), ((Integer) os3.j.f.a(y40.U1)).intValue(), TimeUnit.SECONDS, sm1Var5.j), Exception.class, new ym1(), ms0.f);
            }
        } else {
            final fn1 fn1Var2 = sm1Var5.i;
            final String strOptString = jSONObjectZza.optString("base_url");
            final String strOptString2 = jSONObjectZza.optString(AtomText.TYPE_HTML);
            Objects.requireNonNull(fn1Var2);
            final aw2 aw2VarM2 = vt2.m(vt2.j(null), new cv2(fn1Var2, strOptString, strOptString2) { // from class: hn1
                public final fn1 a;
                public final String b;
                public final String c;

                {
                    this.a = fn1Var2;
                    this.b = strOptString;
                    this.c = strOptString2;
                }

                @Override // defpackage.cv2
                public final aw2 a(Object obj) throws ix0 {
                    final fn1 fn1Var3 = this.a;
                    String str = this.b;
                    String str2 = this.c;
                    final xw0 xw0VarA = fn1Var3.c.a(zzvt.C(), null, null);
                    final us0 us0Var = new us0(xw0VarA);
                    fn1Var3.a(xw0VarA);
                    if (fn1Var3.a.c != null) {
                        xw0VarA.J(new jy0(5, 0, 0));
                    } else {
                        xw0VarA.J(new jy0(4, 0, 0));
                    }
                    ((ww0) xw0VarA.I()).k = new gy0(fn1Var3, xw0VarA, us0Var) { // from class: mn1
                        public final fn1 a;
                        public final xw0 b;
                        public final us0 c;

                        {
                            this.a = fn1Var3;
                            this.b = xw0VarA;
                            this.c = us0Var;
                        }

                        @Override // defpackage.gy0
                        public final void a(boolean z) {
                            fn1 fn1Var4 = this.a;
                            xw0 xw0Var = this.b;
                            us0 us0Var2 = this.c;
                            Objects.requireNonNull(fn1Var4);
                            if (!z) {
                                us0Var2.b(new z22(dm2.INTERNAL_ERROR, "Instream video Web View failed to load."));
                                return;
                            }
                            if (fn1Var4.a.b != null && xw0Var.f() != null) {
                                xw0Var.f().Z6(fn1Var4.a.b);
                            }
                            us0Var2.a(us0Var2.f);
                        }
                    };
                    xw0VarA.F(str, str2, null);
                    return us0Var;
                }
            }, fn1Var2.b);
            aw2VarM = vt2.m(aw2VarM2, new cv2(aw2VarM2) { // from class: vm1
                public final aw2 a;

                {
                    this.a = aw2VarM2;
                }

                @Override // defpackage.cv2
                public final aw2 a(Object obj) throws z22 {
                    aw2 aw2Var3 = this.a;
                    xw0 xw0Var = (xw0) obj;
                    if (xw0Var == null || xw0Var.f() == null) {
                        throw new z22(dm2.INTERNAL_ERROR, "Retrieve video view in instream ad response failed.");
                    }
                    return aw2Var3;
                }
            }, ms0.f);
        }
        final sm1 sm1Var6 = om1Var.b;
        if (jSONObject.optBoolean("enable_omid") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("omid_settings")) != null) {
            final String strOptString3 = jSONObjectOptJSONObject.optString("omid_html");
            aw2VarJ = TextUtils.isEmpty(strOptString3) ? vt2.j(null) : vt2.m(vt2.j(null), new cv2(sm1Var6, strOptString3) { // from class: wm1
                public final sm1 a;
                public final String b;

                {
                    this.a = sm1Var6;
                    this.b = strOptString3;
                }

                @Override // defpackage.cv2
                public final aw2 a(Object obj) throws ix0 {
                    sm1 sm1Var7 = this.a;
                    String str = this.b;
                    Objects.requireNonNull(sm1Var7);
                    zzr.zzkw();
                    xw0 xw0VarA = fx0.a(sm1Var7.a, jy0.a(), "native-omid", false, false, sm1Var7.c, null, sm1Var7.d, null, sm1Var7.e, sm1Var7.f, null, null);
                    us0 us0Var = new us0(xw0VarA);
                    ((ww0) xw0VarA.I()).k = new gy0(us0Var) { // from class: an1
                        public final us0 a;

                        {
                            this.a = us0Var;
                        }

                        @Override // defpackage.gy0
                        public final void a(boolean z) {
                            us0 us0Var2 = this.a;
                            us0Var2.a(us0Var2.f);
                        }
                    };
                    xw0VarA.loadData(str, "text/html", "UTF-8");
                    return us0Var;
                }
            }, ms0.e);
        } else {
            aw2VarJ = vt2.j(null);
        }
        cn1 cn1Var = om1Var.c;
        Objects.requireNonNull(cn1Var);
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("custom_assets");
        if (jSONArrayOptJSONArray3 == null) {
            aw2Var = aw2VarB;
            aw2VarL = vt2.j(Collections.emptyList());
        } else {
            ArrayList arrayList = new ArrayList();
            int length = jSONArrayOptJSONArray3.length();
            int i = 0;
            while (i < length) {
                int i2 = length;
                JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray3.optJSONObject(i);
                if (jSONObjectOptJSONObject5 != null) {
                    jSONArray = jSONArrayOptJSONArray3;
                    final String strOptString4 = jSONObjectOptJSONObject5.optString(InetAddressKeys.KEY_NAME);
                    if (strOptString4 != null) {
                        String strOptString5 = jSONObjectOptJSONObject5.optString(NSRSS20.ENC_TYPE);
                        aw2Var2 = aw2VarB;
                        char c = "string".equals(strOptString5) ? (char) 1 : NSRSS20.IMAGE.equals(strOptString5) ? (char) 2 : (char) 0;
                        if (c == 1) {
                            aw2VarJ3 = vt2.j(new dn1(strOptString4, jSONObjectOptJSONObject5.optString("string_value")));
                        } else if (c == 2) {
                            sm1 sm1Var7 = cn1Var.b;
                            Objects.requireNonNull(sm1Var7);
                            aw2VarJ3 = vt2.l(sm1Var7.b(jSONObjectOptJSONObject5.optJSONObject("image_value"), sm1Var7.h.f), new vs2(strOptString4) { // from class: en1
                                public final String a;

                                {
                                    this.a = strOptString4;
                                }

                                @Override // defpackage.vs2
                                public final Object apply(Object obj) {
                                    return new dn1(this.a, (h70) obj);
                                }
                            }, cn1Var.a);
                        }
                        aw2VarJ2 = aw2VarJ3;
                        arrayList.add(aw2VarJ2);
                        i++;
                        length = i2;
                        jSONArrayOptJSONArray3 = jSONArray;
                        aw2VarB = aw2Var2;
                    } else {
                        aw2Var2 = aw2VarB;
                    }
                } else {
                    aw2Var2 = aw2VarB;
                    jSONArray = jSONArrayOptJSONArray3;
                }
                aw2VarJ2 = vt2.j(null);
                arrayList.add(aw2VarJ2);
                i++;
                length = i2;
                jSONArrayOptJSONArray3 = jSONArray;
                aw2VarB = aw2Var2;
            }
            aw2Var = aw2VarB;
            aw2VarL = vt2.l(new ev2(nt2.y(arrayList)), bn1.a, cn1Var.a);
        }
        final aw2 aw2Var3 = aw2VarC;
        final aw2 aw2Var4 = aw2VarM;
        final aw2 aw2Var5 = aw2VarJ;
        final aw2 aw2Var6 = aw2VarL;
        final gv2 gv2Var = new gv2(nt2.u(new aw2[]{aw2VarY, aw2VarA, aw2VarB2, aw2VarB3, aw2VarC, aw2VarM, aw2VarJ, aw2VarL}), false, om1Var.a, new Callable(om1Var, aw2VarY, aw2VarA, aw2VarB3, aw2VarB2, aw2Var3, jSONObject, aw2Var4, aw2Var5, aw2Var6) { // from class: qm1
            public final aw2 e;
            public final aw2 f;
            public final aw2 g;
            public final aw2 h;
            public final aw2 i;
            public final JSONObject j;
            public final aw2 k;
            public final aw2 l;
            public final aw2 m;

            {
                this.e = aw2VarY;
                this.f = aw2VarA;
                this.g = aw2VarB3;
                this.h = aw2VarB2;
                this.i = aw2Var3;
                this.j = jSONObject;
                this.k = aw2Var4;
                this.l = aw2Var5;
                this.m = aw2Var6;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                JSONArray jSONArrayOptJSONArray4;
                nt2<Object> nt2VarS;
                JSONObject jSONObjectOptJSONObject6;
                aw2 aw2Var7 = this.e;
                aw2 aw2Var8 = this.f;
                aw2 aw2Var9 = this.g;
                aw2 aw2Var10 = this.h;
                aw2 aw2Var11 = this.i;
                JSONObject jSONObject2 = this.j;
                aw2 aw2Var12 = this.k;
                aw2 aw2Var13 = this.l;
                aw2 aw2Var14 = this.m;
                wj1 wj1Var = (wj1) aw2Var7.get();
                List<?> list = (List) aw2Var8.get();
                synchronized (wj1Var) {
                    wj1Var.e = list;
                }
                u70 u70Var = (u70) aw2Var9.get();
                synchronized (wj1Var) {
                    wj1Var.o = u70Var;
                }
                u70 u70Var2 = (u70) aw2Var10.get();
                synchronized (wj1Var) {
                    wj1Var.p = u70Var2;
                }
                m70 m70Var = (m70) aw2Var11.get();
                synchronized (wj1Var) {
                    wj1Var.c = m70Var;
                }
                JSONObject jSONObjectOptJSONObject7 = jSONObject2.optJSONObject("mute");
                if (jSONObjectOptJSONObject7 == null || (jSONArrayOptJSONArray4 = jSONObjectOptJSONObject7.optJSONArray("reasons")) == null || jSONArrayOptJSONArray4.length() <= 0) {
                    mu2<Object> mu2Var = nt2.f;
                    nt2VarS = au2.i;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray4.length(); i3++) {
                        lv3 lv3VarE = sm1.e(jSONArrayOptJSONArray4.optJSONObject(i3));
                        if (lv3VarE != null) {
                            arrayList2.add(lv3VarE);
                        }
                    }
                    nt2VarS = nt2.s(arrayList2);
                }
                synchronized (wj1Var) {
                    wj1Var.f = nt2VarS;
                }
                JSONObject jSONObjectOptJSONObject8 = jSONObject2.optJSONObject("mute");
                lv3 lv3VarE2 = null;
                if (jSONObjectOptJSONObject8 != null && (jSONObjectOptJSONObject6 = jSONObjectOptJSONObject8.optJSONObject("default_reason")) != null) {
                    lv3VarE2 = sm1.e(jSONObjectOptJSONObject6);
                }
                synchronized (wj1Var) {
                    wj1Var.g = lv3VarE2;
                }
                xw0 xw0Var = (xw0) aw2Var12.get();
                if (xw0Var != null) {
                    synchronized (wj1Var) {
                        wj1Var.i = xw0Var;
                    }
                    View view = xw0Var.getView();
                    synchronized (wj1Var) {
                        wj1Var.l = view;
                    }
                    rx0 rx0VarF = xw0Var.f();
                    synchronized (wj1Var) {
                        wj1Var.b = rx0VarF;
                    }
                }
                xw0 xw0Var2 = (xw0) aw2Var13.get();
                if (xw0Var2 != null) {
                    synchronized (wj1Var) {
                        wj1Var.j = xw0Var2;
                    }
                }
                for (dn1 dn1Var : (List) aw2Var14.get()) {
                    int i4 = dn1Var.a;
                    if (i4 == 1) {
                        wj1Var.u(dn1Var.b, dn1Var.c);
                    } else if (i4 != 2) {
                        continue;
                    } else {
                        String str = dn1Var.b;
                        h70 h70Var = dn1Var.d;
                        synchronized (wj1Var) {
                            if (h70Var == null) {
                                wj1Var.r.remove(str);
                            } else {
                                wj1Var.r.put(str, h70Var);
                            }
                        }
                    }
                }
                return wj1Var;
            }
        });
        final aw2<io1> aw2Var7 = aw2Var;
        return new gv2(nt2.u(new aw2[]{aw2Var, gv2Var}), true, this.b, new Callable(this, gv2Var, aw2Var7, hl2Var, sk2Var, jSONObject) { // from class: c22
            public final z12 e;
            public final aw2 f;
            public final aw2 g;
            public final hl2 h;
            public final sk2 i;
            public final JSONObject j;

            {
                this.e = this;
                this.f = gv2Var;
                this.g = aw2Var7;
                this.h = hl2Var;
                this.i = sk2Var;
                this.j = jSONObject;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                z12 z12Var = this.e;
                aw2 aw2Var8 = this.f;
                aw2 aw2Var9 = this.g;
                hl2 hl2Var2 = this.h;
                sk2 sk2Var2 = this.i;
                JSONObject jSONObject2 = this.j;
                Objects.requireNonNull(z12Var);
                wj1 wj1Var = (wj1) aw2Var8.get();
                io1 io1Var = (io1) aw2Var9.get();
                yj1 yj1VarB = z12Var.a.b(new v61(hl2Var2, sk2Var2, null), new jk1(wj1Var), new xi1(jSONObject2, io1Var));
                tz0 tz0Var = (tz0) yj1VarB;
                dk1 dk1VarA = hi1.a(tz0Var.Y0.e);
                wj1 wj1Var2 = tz0Var.b.a;
                Objects.requireNonNull(wj1Var2, "Cannot return null from a non-@Nullable @Provides method");
                io1 io1Var2 = tz0Var.c.b;
                Objects.requireNonNull(io1Var2, "Cannot return null from a non-@Nullable @Provides method");
                jo1 jo1Var = new jo1(dk1VarA, wj1Var2, io1Var2, db3.b(tz0Var.T0));
                if (jo1Var.a != null) {
                    jo1Var.b.a("/nativeAdCustomClick", jo1Var);
                }
                to1 to1Var = tz0Var.V0.get();
                Objects.requireNonNull(to1Var);
                qo1 qo1Var = io1Var.a;
                x91 x91Var = to1Var.a;
                rb1 rb1Var = to1Var.c;
                wb1 wb1Var = to1Var.d;
                ld1 ld1Var = to1Var.e;
                final db1 db1Var = to1Var.b;
                db1Var.getClass();
                zzx zzxVar = new zzx(db1Var) { // from class: so1
                    public final db1 e;

                    {
                        this.e = db1Var;
                    }

                    @Override // com.google.android.gms.ads.internal.overlay.zzx
                    public final void zzws() {
                        this.e.D0(gb1.a);
                    }
                };
                synchronized (qo1Var) {
                    qo1Var.e = x91Var;
                    qo1Var.f = rb1Var;
                    qo1Var.g = wb1Var;
                    qo1Var.h = ld1Var;
                    qo1Var.i = zzxVar;
                }
                sk2 sk2Var3 = to1Var.f;
                wk2 wk2Var = to1Var.g;
                synchronized (io1Var) {
                    aw2<xw0> aw2Var10 = io1Var.l;
                    if (aw2Var10 != null) {
                        ro1 ro1Var = new ro1(sk2Var3, wk2Var);
                        aw2Var10.i(new sv2(aw2Var10, ro1Var), io1Var.f);
                    }
                }
                final pn1 pn1Var = tz0Var.X0.get();
                final xw0 xw0VarO = wj1Var.o();
                Objects.requireNonNull(pn1Var);
                if (xw0VarO != null) {
                    pn1Var.c.G0(xw0VarO.getView());
                    pn1Var.c.F0(new em3(xw0VarO) { // from class: on1
                        public final xw0 e;

                        {
                            this.e = xw0VarO;
                        }

                        @Override // defpackage.em3
                        public final void c0(fm3 fm3Var) {
                            hy0 hy0VarI = this.e.I();
                            Rect rect = fm3Var.d;
                            ((ww0) hy0VarI).r(rect.left, rect.top, false);
                        }
                    }, pn1Var.a);
                    pn1Var.c.F0(new em3(xw0VarO) { // from class: rn1
                        public final xw0 e;

                        {
                            this.e = xw0VarO;
                        }

                        @Override // defpackage.em3
                        public final void c0(fm3 fm3Var) {
                            xw0 xw0Var = this.e;
                            HashMap map = new HashMap();
                            map.put("isVisible", fm3Var.j ? "1" : "0");
                            xw0Var.x("onAdVisibilityChanged", map);
                        }
                    }, pn1Var.a);
                    pn1Var.c.F0(pn1Var.b, pn1Var.a);
                    pn1Var.b.e = xw0VarO;
                    xw0VarO.o("/trackActiveViewUnit", new kb0(pn1Var) { // from class: qn1
                        public final pn1 a;

                        {
                            this.a = pn1Var;
                        }

                        @Override // defpackage.kb0
                        public final void a(Object obj, Map map) {
                            d31 d31Var = this.a.b;
                            d31Var.i = true;
                            d31Var.d();
                        }
                    });
                    xw0VarO.o("/untrackActiveViewUnit", new kb0(pn1Var) { // from class: tn1
                        public final pn1 a;

                        {
                            this.a = pn1Var;
                        }

                        @Override // defpackage.kb0
                        public final void a(Object obj, Map map) {
                            this.a.b.i = false;
                        }
                    });
                }
                return yj1VarB.h();
            }
        });
    }
}
