package defpackage;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.snackbar.Snackbar;
import com.michaelflisar.gdprdialog.GDPRCustomTexts;
import com.michaelflisar.gdprdialog.GDPRNetwork;
import com.michaelflisar.gdprdialog.GDPRSetup;
import com.michaelflisar.gdprdialog.GDPRSubNetwork;
import com.michaelflisar.gdprdialog.R$id;
import com.michaelflisar.gdprdialog.R$string;
import defpackage.hm6;
import defpackage.lb5;
import defpackage.pl6;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public class hm6 {
    public GDPRSetup a;
    public vl6 b;
    public int d;
    public ql6 e;
    public boolean f;
    public ArrayList<Integer> g;
    public pl6.b c = null;
    public Snackbar h = null;
    public final List<LinearLayout> i = new ArrayList();

    public interface a {
        void a();
    }

    public hm6(Bundle bundle, Bundle bundle2) {
        this.d = 0;
        this.e = null;
        this.f = false;
        this.g = new ArrayList<>();
        bundle.setClassLoader(GDPRSetup.class.getClassLoader());
        this.a = (GDPRSetup) bundle.getParcelable("ARG_SETUP");
        this.b = vl6.values()[bundle.getInt("ARG_LOCATION")];
        if (bundle2 != null) {
            this.d = bundle2.getInt("KEY_STEP");
            if (bundle2.containsKey("KEY_SELECTED_CONSENT")) {
                this.e = ql6.values()[bundle2.getInt("KEY_SELECTED_CONSENT")];
            }
            this.f = bundle2.getBoolean("KEY_AGE_CONFIRMED");
            this.g = bundle2.getIntegerArrayList("KEY_EXPLICITLY_CONFIRMED_SERVICES");
            return;
        }
        this.g.clear();
        for (int i = 0; i < this.a.i.length; i++) {
            this.g.add(0);
        }
    }

    public boolean a() {
        if (this.d <= 0) {
            return false;
        }
        this.d = 0;
        h();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void b(final Activity activity, final View view, final a aVar) {
        int i;
        String string;
        String str;
        Toolbar toolbar = (Toolbar) view.findViewById(R$id.toolbar);
        GDPRSetup gDPRSetup = this.a;
        toolbar.setVisibility((gDPRSetup.n || gDPRSetup.l) ? 0 : 8);
        if (this.a.t.b()) {
            toolbar.setTitle(this.a.t.a(view.getContext()));
        } else {
            toolbar.setTitle(R$string.gdpr_dialog_title);
        }
        this.i.add(view.findViewById(R$id.llPage0));
        this.i.add(view.findViewById(R$id.llPage1));
        this.i.add(view.findViewById(R$id.llPage2));
        Button button = (Button) view.findViewById(R$id.btAgree);
        Button button2 = (Button) view.findViewById(R$id.btDisagree);
        Button button3 = (Button) view.findViewById(R$id.btNoConsentAtAll);
        TextView textView = (TextView) view.findViewById(R$id.tvQuestion);
        TextView textView2 = (TextView) view.findViewById(R$id.tvText1);
        TextView textView3 = (TextView) view.findViewById(R$id.tvText2);
        TextView textView4 = (TextView) view.findViewById(R$id.tvText3);
        CheckBox checkBox = (CheckBox) view.findViewById(R$id.cbAge);
        GDPRSetup gDPRSetup2 = this.a;
        GDPRCustomTexts gDPRCustomTexts = gDPRSetup2.t;
        int i2 = gDPRCustomTexts.g;
        String str2 = "";
        if ((i2 == -1 && gDPRCustomTexts.h == null) ? false : true) {
            textView.setText(i2 != -1 ? activity.getString(i2) : gDPRCustomTexts.h);
        } else {
            int i3 = R$string.gdpr_dialog_question;
            Object[] objArr = new Object[1];
            objArr[0] = (!gDPRSetup2.a() || this.a.q) ? "" : activity.getString(R$string.gdpr_dialog_question_ads_info);
            textView.setText(Html.fromHtml(activity.getString(i3, objArr)));
        }
        GDPRSetup gDPRSetup3 = this.a;
        GDPRCustomTexts gDPRCustomTexts2 = gDPRSetup3.t;
        int i4 = gDPRCustomTexts2.k;
        if ((i4 == -1 && gDPRCustomTexts2.l == null) ? false : true) {
            textView2.setText(Html.fromHtml(i4 != -1 ? activity.getString(i4) : gDPRCustomTexts2.l));
        } else {
            String string2 = activity.getString(gDPRSetup3.f ? R$string.gdpr_cheap : R$string.gdpr_free);
            String string3 = activity.getString(R$string.gdpr_dialog_text1_part1);
            if (this.a.s) {
                StringBuilder sbB = jo.B(string3, StringUtils.SPACE);
                sbB.append(activity.getString(R$string.gdpr_dialog_text1_part2, new Object[]{string2}));
                string3 = sbB.toString();
            }
            textView2.setText(Html.fromHtml(string3));
        }
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        GDPRSetup gDPRSetup4 = this.a;
        GDPRCustomTexts gDPRCustomTexts3 = gDPRSetup4.t;
        int i5 = gDPRCustomTexts3.i;
        if ((i5 == -1 && gDPRCustomTexts3.j == null) ? false : true) {
            textView3.setText(Html.fromHtml(i5 != -1 ? activity.getString(i5) : gDPRCustomTexts3.j));
            str = "";
        } else {
            int size = gDPRSetup4.b().size();
            Object objG0 = n56.G0(activity, this.a.b());
            if (size == 1) {
                i = 0;
                string = activity.getString(R$string.gdpr_dialog_text2_singular, new Object[]{objG0});
            } else {
                i = 0;
                string = activity.getString(R$string.gdpr_dialog_text2_plural, new Object[]{objG0});
            }
            Spanned spannedFromHtml = Html.fromHtml(string);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannedFromHtml);
            URLSpan[] uRLSpanArr = (URLSpan[]) spannableStringBuilder.getSpans(i, spannedFromHtml.length(), URLSpan.class);
            int length = uRLSpanArr.length;
            int i6 = 0;
            while (i6 < length) {
                URLSpan uRLSpan = uRLSpanArr[i6];
                spannableStringBuilder.setSpan(new gm6(this, new Runnable() { // from class: bm6
                    @Override // java.lang.Runnable
                    public final void run() {
                        hm6 hm6Var = this.e;
                        hm6Var.d = 1;
                        hm6Var.h();
                    }
                }), spannableStringBuilder.getSpanStart(uRLSpan), spannableStringBuilder.getSpanEnd(uRLSpan), spannableStringBuilder.getSpanFlags(uRLSpan));
                spannableStringBuilder.removeSpan(uRLSpan);
                i6++;
                uRLSpanArr = uRLSpanArr;
                length = length;
                str2 = str2;
            }
            str = str2;
            textView3.setText(spannableStringBuilder);
        }
        textView3.setMovementMethod(LinkMovementMethod.getInstance());
        GDPRCustomTexts gDPRCustomTexts4 = this.a.t;
        int i7 = gDPRCustomTexts4.m;
        if ((i7 == -1 && gDPRCustomTexts4.n == null) ? false : true) {
            textView4.setText(i7 != -1 ? activity.getString(i7) : gDPRCustomTexts4.n);
        } else {
            textView4.setText(Html.fromHtml(activity.getString(R$string.gdpr_dialog_text3)));
        }
        textView4.setMovementMethod(LinkMovementMethod.getInstance());
        if (this.a.j) {
            textView4.setVisibility(8);
            checkBox.setChecked(this.f);
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cm6
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    this.a.f = z;
                }
            });
        } else {
            checkBox.setVisibility(8);
        }
        GDPRSetup gDPRSetup5 = this.a;
        if (gDPRSetup5.f) {
            if (gDPRSetup5.g) {
                button3.setText(R$string.gdpr_dialog_disagree_buy_app);
            } else {
                button2.setText(R$string.gdpr_dialog_disagree_buy_app);
            }
        }
        boolean z = !this.a.a();
        GDPRSetup gDPRSetup6 = this.a;
        if (gDPRSetup6.f && !gDPRSetup6.g) {
            button2.setText(R$string.gdpr_dialog_disagree_buy_app);
            z = true;
        }
        if (!z) {
            String str3 = activity.getString(R$string.gdpr_dialog_disagree_no_thanks).toUpperCase() + "\n";
            SpannableString spannableString = new SpannableString(jo.n(str3, activity.getString(R$string.gdpr_dialog_disagree_info)));
            spannableString.setSpan(new StyleSpan(1), 0, str3.length(), 0);
            spannableString.setSpan(new RelativeSizeSpan(0.8f), str3.length(), spannableString.length(), 0);
            spannableString.setSpan(new ForegroundColorSpan(button2.getTextColors().getDefaultColor()), str3.length(), spannableString.length(), 0);
            button2.setAllCaps(false);
            button2.setTypeface(Typeface.DEFAULT);
            button2.setText(spannableString);
        }
        TextView textView5 = (TextView) view.findViewById(R$id.tvServiceInfo2);
        TextView textView6 = (TextView) view.findViewById(R$id.tvServiceInfo3);
        GDPRNetwork[] gDPRNetworkArr = this.a.i;
        String string4 = str;
        StringBuilder sb = new StringBuilder(string4);
        HashSet hashSet = new HashSet();
        for (int i8 = 0; i8 < gDPRNetworkArr.length; i8++) {
            boolean z2 = gDPRNetworkArr[i8].j.size() == 0;
            if (hashSet.add(gDPRNetworkArr[i8].a(activity, z2, true))) {
                if (sb.length() > 0) {
                    sb.append("<br>");
                }
                sb.append("&#8226;&nbsp;");
                sb.append(gDPRNetworkArr[i8].a(activity, z2, false));
                Iterator<GDPRSubNetwork> it = gDPRNetworkArr[i8].j.iterator();
                while (it.hasNext()) {
                    GDPRSubNetwork next = it.next();
                    sb.append("<br>");
                    sb.append("&nbsp;&nbsp;&#9702;&nbsp;");
                    sb.append(next.a());
                }
            }
        }
        textView5.setText(Html.fromHtml(sb.toString()));
        textView5.setMovementMethod(LinkMovementMethod.getInstance());
        Object obj = this.a.e;
        if (obj != null) {
            string4 = activity.getString(R$string.gdpr_dialog_text_info3_privacy_policy_part, new Object[]{obj});
        }
        boolean z3 = true;
        textView6.setText(Html.fromHtml(activity.getString(R$string.gdpr_dialog_text_info3, new Object[]{string4})));
        textView6.setMovementMethod(LinkMovementMethod.getInstance());
        h();
        button.setOnClickListener(new View.OnClickListener() { // from class: xl6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                hm6 hm6Var = this.e;
                View view3 = view;
                Activity activity2 = activity;
                hm6.a aVar2 = aVar;
                if (hm6Var.c(view3, true)) {
                    hm6Var.e = ql6.PERSONAL_CONSENT;
                    hm6Var.d(activity2, aVar2);
                }
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: am6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                hm6 hm6Var = this.e;
                View view3 = view;
                Activity activity2 = activity;
                hm6.a aVar2 = aVar;
                ql6 ql6Var = ql6.NON_PERSONAL_CONSENT_ONLY;
                if (hm6Var.c(view3, false)) {
                    GDPRSetup gDPRSetup7 = hm6Var.a;
                    if (!gDPRSetup7.f) {
                        if (gDPRSetup7.k) {
                            hm6Var.d = 2;
                            hm6Var.h();
                            return;
                        } else {
                            hm6Var.e = ql6Var;
                            hm6Var.d(activity2, aVar2);
                            return;
                        }
                    }
                    if (!gDPRSetup7.g) {
                        hm6Var.e = ql6.NO_CONSENT;
                        hm6Var.d(activity2, aVar2);
                    } else if (gDPRSetup7.k) {
                        hm6Var.d = 2;
                        hm6Var.h();
                    } else {
                        hm6Var.e = ql6Var;
                        hm6Var.d(activity2, aVar2);
                    }
                }
            }
        });
        GDPRSetup gDPRSetup7 = this.a;
        if (!gDPRSetup7.h && !gDPRSetup7.g) {
            z3 = false;
        }
        if (z3) {
            button3.setOnClickListener(new View.OnClickListener() { // from class: yl6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    hm6 hm6Var = this.e;
                    Activity activity2 = activity;
                    hm6.a aVar2 = aVar;
                    hm6Var.e = ql6.NO_CONSENT;
                    hm6Var.d(activity2, aVar2);
                }
            });
        } else {
            button3.setVisibility(8);
        }
        view.findViewById(R$id.btBack).setOnClickListener(new View.OnClickListener() { // from class: zl6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                hm6 hm6Var = this.e;
                hm6Var.d = 0;
                hm6Var.h();
            }
        });
        view.findViewById(R$id.btAgreeNonPersonalised).setOnClickListener(new View.OnClickListener() { // from class: dm6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                hm6 hm6Var = this.e;
                Activity activity2 = activity;
                hm6.a aVar2 = aVar;
                hm6Var.e = ql6.NON_PERSONAL_CONSENT_ONLY;
                hm6Var.d(activity2, aVar2);
            }
        });
    }

    public final boolean c(View view, boolean z) {
        GDPRSetup gDPRSetup = this.a;
        if (!gDPRSetup.j || !z || this.f) {
            return true;
        }
        int i = R$string.gdpr_age_not_confirmed;
        if (gDPRSetup.n) {
            Toast.makeText(view.getContext(), i, 1).show();
        } else {
            int[] iArr = Snackbar.t;
            Snackbar snackbarJ = Snackbar.j(view, view.getResources().getText(i), 0);
            this.h = snackbarJ;
            snackbarJ.l();
        }
        return false;
    }

    public final void d(Context context, a aVar) {
        ql6 ql6Var = this.e;
        if (ql6Var != null) {
            rl6 rl6Var = new rl6(context, ql6Var, this.b);
            pl6.b().c(rl6Var);
            pl6.b bVar = this.c;
            if (bVar != null) {
                bVar.c(rl6Var, true);
            }
        }
        aVar.a();
    }

    public void e() {
        pl6 pl6VarB = pl6.b();
        im6 im6Var = pl6VarB.e;
        if (im6Var != null) {
            im6Var.cancel(true);
            pl6VarB.e = null;
        }
        this.c = null;
        this.i.clear();
    }

    public void f(Bundle bundle) {
        bundle.putInt("KEY_STEP", this.d);
        ql6 ql6Var = this.e;
        if (ql6Var != null) {
            bundle.putInt("KEY_SELECTED_CONSENT", ql6Var.ordinal());
        }
        bundle.putBoolean("KEY_AGE_CONFIRMED", this.f);
        bundle.putIntegerArrayList("KEY_EXPLICITLY_CONFIRMED_SERVICES", this.g);
    }

    public void g(Object obj, boolean z) {
        try {
            this.c = (pl6.b) obj;
        } catch (ClassCastException unused) {
            if (z) {
                throw new ClassCastException("Parent activity must implement GDPR.IGDPRCallback interface!");
            }
            Objects.requireNonNull((pl6.a) pl6.b().c);
        }
    }

    public final void h() {
        boolean zC;
        int i = 0;
        while (i < this.i.size()) {
            this.i.get(i).setVisibility(i == this.d ? 0 : 8);
            i++;
        }
        Snackbar snackbar = this.h;
        if (snackbar != null) {
            Objects.requireNonNull(snackbar);
            lb5 lb5VarB = lb5.b();
            lb5.b bVar = snackbar.n;
            synchronized (lb5VarB.a) {
                zC = lb5VarB.c(bVar);
            }
            if (zC) {
                this.h.b(3);
                this.h = null;
            }
        }
    }
}
