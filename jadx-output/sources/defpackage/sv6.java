package defpackage;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.widget.WidgetConfigureActivity;
import com.thebluealliance.spectrum.SpectrumPreference;
import java.util.Objects;

/* loaded from: classes2.dex */
public class sv6 extends dx6 implements View.OnClickListener {
    public PreferenceManager n;
    public View q;
    public ImageView r;
    public TextView s;
    public TextView t;
    public int l = 0;
    public int m = 0;
    public String o = null;
    public String p = null;

    public void j() {
        if (getActivity() == null) {
            return;
        }
        Context applicationContext = getActivity().getApplicationContext();
        this.p = (String) getText(R.string.app_name);
        String str = this.o;
        if (str != null && str.length() > 0) {
            if (this.o.startsWith("user/") || this.o.contains("@")) {
                lp6 lp6VarA = lp6.a(applicationContext, "uid", this.o, false);
                if (lp6VarA != null) {
                    this.p = lp6VarA.h(applicationContext).toString();
                    int i = lp6VarA.g;
                    if (i != 1) {
                        switch (i) {
                            case 9:
                                this.r.setImageResource(R.drawable.ic_tag_search);
                                break;
                            case 10:
                                this.r.setImageResource(R.drawable.ic_tag_label);
                                break;
                            case 11:
                                this.r.setImageResource(R.drawable.ic_tag_folder);
                                break;
                        }
                    } else {
                        this.r.setImageResource(R.drawable.ic_tag_star);
                    }
                }
            } else if (this.o.startsWith(RssReaderClient.USER_FEED)) {
                ip6 ip6VarB = ip6.b(applicationContext, "uid", this.o, false);
                if (ip6VarB != null) {
                    this.p = ip6VarB.h;
                    this.r.setImageResource(R.drawable.ic_feed_default);
                }
            } else if (this.o.equals("all")) {
                this.p = (String) getText(R.string.label_all);
                this.r.setImageResource(R.drawable.ic_tag_all);
            }
        }
        this.s.setText(this.p);
    }

    @Override // defpackage.dx6, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        FragmentActivity activity = getActivity();
        j();
        PreferenceManager preferenceManager = this.e;
        this.n = preferenceManager;
        preferenceManager.setSharedPreferencesName("com.noinnion.android.greader.reader.widget.WidgetPreferences");
        this.n.setSharedPreferencesMode(0);
        if (this.m == 1) {
            this.q.setVisibility(0);
        }
        if (this.m != 1) {
            PreferenceScreen preferenceScreenCreatePreferenceScreen = this.n.createPreferenceScreen(activity);
            PreferenceCategory preferenceCategory = new PreferenceCategory(activity);
            preferenceCategory.setTitle(R.string.menu_settings);
            preferenceScreenCreatePreferenceScreen.addPreference(preferenceCategory);
            this.q.setVisibility(8);
            CheckBoxPreference checkBoxPreference = new CheckBoxPreference(activity);
            checkBoxPreference.setKey(uv6.g(this.l, "unread_only"));
            checkBoxPreference.setTitle(R.string.widget_pref_unread_only);
            checkBoxPreference.setDefaultValue(Boolean.TRUE);
            preferenceScreenCreatePreferenceScreen.addPreference(checkBoxPreference);
            ListPreference listPreference = new ListPreference(activity);
            listPreference.setKey(uv6.g(this.l, "item_limit"));
            listPreference.setEntries(R.array.widget_item_limit_labels);
            listPreference.setEntryValues(R.array.widget_item_limit_labels);
            listPreference.setDialogTitle(R.string.preference_sync_item_limit_title);
            listPreference.setTitle(R.string.preference_sync_item_limit_title);
            listPreference.setDefaultValue("20");
            preferenceScreenCreatePreferenceScreen.addPreference(listPreference);
            if (this.m != 4) {
                ListPreference listPreference2 = new ListPreference(activity);
                listPreference2.setKey(uv6.g(this.l, "scroll_speed"));
                listPreference2.setEntries(R.array.widget_scroll_speed_labels);
                listPreference2.setEntryValues(R.array.widget_scroll_speed_values);
                listPreference2.setDialogTitle(R.string.widget_pref_auto_scroll);
                listPreference2.setTitle(R.string.widget_pref_auto_scroll);
                listPreference2.setDefaultValue("0");
                preferenceScreenCreatePreferenceScreen.addPreference(listPreference2);
            }
            PreferenceCategory preferenceCategory2 = new PreferenceCategory(activity);
            preferenceCategory2.setTitle(R.string.preference_category_ui);
            preferenceScreenCreatePreferenceScreen.addPreference(preferenceCategory2);
            SpectrumPreference spectrumPreference = new SpectrumPreference(activity, null);
            spectrumPreference.e = spectrumPreference.getContext().getResources().getIntArray(R.array.default_color_choice_values);
            spectrumPreference.setKey(uv6.g(this.l, "text_color"));
            spectrumPreference.setTitle(R.string.widget_pref_text_color);
            spectrumPreference.setDefaultValue(Integer.valueOf(Color.parseColor("#ffffff")));
            preferenceCategory2.addPreference(spectrumPreference);
            SpectrumPreference spectrumPreference2 = new SpectrumPreference(activity, null);
            spectrumPreference2.e = spectrumPreference2.getContext().getResources().getIntArray(R.array.default_color_choice_values);
            spectrumPreference2.setKey(uv6.g(this.l, "background_color"));
            spectrumPreference2.setTitle(R.string.widget_pref_background_color);
            spectrumPreference2.setDefaultValue(Integer.valueOf(Color.parseColor("#33b5e5")));
            preferenceCategory2.addPreference(spectrumPreference2);
            ListPreference listPreference3 = new ListPreference(activity);
            listPreference3.setKey(uv6.g(this.l, "background_opacity"));
            listPreference3.setEntries(R.array.widget_background_opacity_labels);
            listPreference3.setEntryValues(R.array.widget_background_opacity_values);
            listPreference3.setDialogTitle(R.string.widget_pref_background_opacity);
            listPreference3.setTitle(R.string.widget_pref_background_opacity);
            listPreference3.setDefaultValue("100");
            preferenceCategory2.addPreference(listPreference3);
            if (this.m == 4) {
                ListPreference listPreference4 = new ListPreference(activity);
                listPreference4.setKey(uv6.g(this.l, "text_size"));
                listPreference4.setEntries(R.array.item_list_font_size_labels);
                listPreference4.setEntryValues(R.array.item_list_font_size_values);
                listPreference4.setDialogTitle(R.string.widget_pref_text_size);
                listPreference4.setTitle(R.string.widget_pref_text_size);
                listPreference4.setDefaultValue("16");
                preferenceCategory2.addPreference(listPreference4);
            }
            int i = this.m;
            if (i != 4 || i == 4) {
                ListPreference listPreference5 = new ListPreference(activity);
                listPreference5.setKey(uv6.g(this.l, "show_thumbnail"));
                listPreference5.setEntries(R.array.connection_options_labels);
                listPreference5.setEntryValues(R.array.connection_options_values);
                listPreference5.setDialogTitle(R.string.widget_pref_show_thumbnail);
                listPreference5.setTitle(R.string.widget_pref_show_thumbnail);
                listPreference5.setDefaultValue("1");
                preferenceScreenCreatePreferenceScreen.addPreference(listPreference5);
            }
            if (this.m == 3) {
                CheckBoxPreference checkBoxPreference2 = new CheckBoxPreference(activity);
                checkBoxPreference2.setKey(uv6.g(this.l, "show_summary"));
                checkBoxPreference2.setTitle(R.string.widget_pref_show_summary);
                checkBoxPreference2.setDefaultValue(Boolean.FALSE);
                preferenceScreenCreatePreferenceScreen.addPreference(checkBoxPreference2);
            }
            i(preferenceScreenCreatePreferenceScreen);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.cancel_button) {
            if (getActivity() == null) {
                return;
            }
            getActivity().finish();
            return;
        }
        if (id == R.id.manage) {
            wb fragmentManager = getFragmentManager();
            try {
                tv6 tv6Var = new tv6(this.m, this.o, new rv6(this));
                xb xbVar = (xb) fragmentManager;
                Objects.requireNonNull(xbVar);
                qb qbVar = new qb(xbVar);
                qbVar.f(0, tv6Var, "fragment_tag_list", 1);
                qbVar.d();
                return;
            } catch (Exception unused) {
                return;
            }
        }
        if (id == R.id.ok_button && getActivity() != null) {
            if (!(getActivity() instanceof WidgetConfigureActivity) || ((WidgetConfigureActivity) getActivity()).B()) {
                if (this.m == 1) {
                    this.p = this.t.getText().toString();
                }
                ((WidgetConfigureActivity) getActivity()).C(this.l, this.o, this.p);
            }
        }
    }

    @Override // defpackage.dx6, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.l = arguments.getInt("appWidgetId", 0);
            this.m = arguments.getInt("app_widget_type", 0);
            this.o = arguments.getString("app_widget_tag");
        }
        if (this.l == 0 || this.m == 0) {
            getActivity().finish();
        }
        if (this.m == 1 || this.o != null) {
            return;
        }
        this.o = "all";
    }

    @Override // defpackage.dx6, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.widget_configure_fragment, viewGroup, false);
        this.q = viewInflate.findViewById(R.id.pref_title);
        this.r = (ImageView) viewInflate.findViewById(R.id.tag_icon);
        this.s = (TextView) viewInflate.findViewById(R.id.tag_label);
        this.t = (TextView) viewInflate.findViewById(R.id.title_text);
        viewInflate.findViewById(R.id.manage).setOnClickListener(this);
        viewInflate.findViewById(R.id.ok_button).setOnClickListener(this);
        viewInflate.findViewById(R.id.cancel_button).setOnClickListener(this);
        return viewInflate;
    }
}
