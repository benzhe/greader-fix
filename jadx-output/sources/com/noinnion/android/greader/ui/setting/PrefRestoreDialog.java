package com.noinnion.android.greader.ui.setting;

import android.R;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import butterknife.BindView;
import butterknife.ButterKnife;
import defpackage.a0;
import defpackage.dn6;
import defpackage.ep6;
import defpackage.gw6;
import defpackage.gy6;
import defpackage.hy6;
import defpackage.ip6;
import defpackage.iw6;
import defpackage.lp6;
import defpackage.n56;
import defpackage.on6;
import defpackage.qw6;
import defpackage.t75;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

/* loaded from: classes2.dex */
public class PrefRestoreDialog extends qw6 implements AdapterView.OnItemClickListener {
    public static final String[] h = {"sync_auto_update", "sync_interval_hours", "sync_custom_interval", "sync_include_starred", "sync_on_start", "sync_item_limit", "sync_server_reads", "offline_usage", "offline_feed_items_limit", "offline_autoload_cache", "offline_autoload_reading_mode", "offline_load_full_content", "offline_full_content_format", "offline_load_images", "offline_save_data_traffic", "offline_load_audio", "offline_load_video", "sync_notifiable", "sync_notify_sound", "sync_notify_sound_ringtone", "sync_notify_vibrate", "sync_notify_led", "sync_notifiable_custom", "sync_notify_custom_sound", "sync_notify_custom_sound_ringtone", "sync_notify_custom_vibrate", "sync_notify_custom_led", "db_cache_location", "cache_offline_location", "cache_auto_clean_read", "cache_auto_clean_unread", "cache_keep_starred", "cache_keep_cached", "cache_auto_cleanup_images", "confirm_mark_as_read_all", "confirm_mark_as_read_sub", "show_feeds_after_mark_all", "feed_sort_type", "item_sort_type", "item_send_to", "item_list_left_action", "item_list_right_action", "item_list_swipe_action_rtl", "item_list_volume_key_action", "item_list_mark_read_on_scroll", "item_images_loading", "item_load_link", "item_autoload_link", "item_autoload_reading_mode", "item_volume_key_action", "item_pinch_zoom", "item_double_tap_action", "item_user_agent", "item_image_fit", "item_view_inverse", "translation_language", "application_theme", "application_language", "item_landscape_dual_pane", "home_landscape_dual_pane", "home_hide_article_list", "use_phone_ui", "show_item_list", "rich_article_list", "rich_show_snippet", "rich_show_thumb", "item_list_font_size", "item_body_font_size", "item_share_default", "auto_hide_item_controls", "show_item_bar", "show_navigation_bar", "show_zoom_button", "item_nav_bar", "item_hardware_accelerated", "fullscreen", "feed_only", "item_list_view", "view_unread_only", "service_comment", "service_tts", "service_tts_default_locale", "service_translate", "service_everclip", "service_facebook", "service_twitter", "service_ril", "service_instapaper", "service_google_mobilizer", "service_readability_mobilizer"};
    public Button e;
    public String f = null;
    public ProgressDialog g;

    @BindView(R.id.empty)
    public View mEmptyView;

    @BindView(R.id.list)
    public ListView mListView;

    public class a implements DialogInterface.OnClickListener {
        public a(PrefRestoreDialog prefRestoreDialog) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    public class b implements DialogInterface.OnShowListener {
        public final /* synthetic */ a0 a;

        public class a implements View.OnClickListener {
            public a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PrefRestoreDialog prefRestoreDialog = PrefRestoreDialog.this;
                if (prefRestoreDialog.f != null) {
                    prefRestoreDialog.new d(null).execute(prefRestoreDialog.f);
                }
            }
        }

        public b(a0 a0Var) {
            this.a = a0Var;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            PrefRestoreDialog.this.e = this.a.f(-1);
            PrefRestoreDialog.this.e.setOnClickListener(new a());
            PrefRestoreDialog.this.e.setEnabled(false);
            PrefRestoreDialog prefRestoreDialog = PrefRestoreDialog.this;
            Objects.requireNonNull(prefRestoreDialog);
            prefRestoreDialog.new c(null).execute(new Void[0]);
        }
    }

    public class c extends AsyncTask<Void, Void, Void> {
        public ArrayList<String> a = new ArrayList<>();

        public c(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) throws IOException {
            try {
                if (!Environment.getExternalStorageState().equals("mounted")) {
                    throw new IOException("Cannot access external storage: not mounted");
                }
                File file = new File(dn6.d);
                if (!file.exists()) {
                    return null;
                }
                for (File file2 : file.listFiles()) {
                    this.a.add(file2.getName());
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r4) {
            if (PrefRestoreDialog.this.getActivity() != null && this.a.size() > 0) {
                ArrayList<String> arrayList = this.a;
                ArrayAdapter arrayAdapter = new ArrayAdapter(PrefRestoreDialog.this.getActivity(), R.layout.simple_list_item_single_choice, (String[]) arrayList.toArray(new String[arrayList.size()]));
                PrefRestoreDialog.this.mListView.setChoiceMode(1);
                PrefRestoreDialog.this.mListView.setAdapter((ListAdapter) arrayAdapter);
                PrefRestoreDialog.this.e.setEnabled(true);
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
        }
    }

    public class d extends AsyncTask<String, Void, Boolean> {
        public d(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Boolean doInBackground(String[] strArr) {
            String[] strArr2 = strArr;
            if (PrefRestoreDialog.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = PrefRestoreDialog.this.getActivity().getApplicationContext();
            try {
                return Boolean.valueOf(PrefRestoreDialog.d(PrefRestoreDialog.this, strArr2[0]));
            } catch (Exception e) {
                n56.X1(applicationContext, e.getLocalizedMessage());
                return Boolean.FALSE;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            ProgressDialog progressDialog = PrefRestoreDialog.this.g;
            if (progressDialog != null && progressDialog.isShowing()) {
                PrefRestoreDialog.this.g.dismiss();
            }
            if (bool2.booleanValue()) {
                PrefRestoreDialog prefRestoreDialog = PrefRestoreDialog.this;
                if (prefRestoreDialog.getActivity() == null) {
                    return;
                }
                Context applicationContext = prefRestoreDialog.getActivity().getApplicationContext();
                on6.b();
                on6.g(applicationContext).g = -1;
                on6.g(applicationContext).g = -1;
                n56.b1(prefRestoreDialog.getActivity());
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (PrefRestoreDialog.this.getActivity() == null) {
                return;
            }
            PrefRestoreDialog prefRestoreDialog = PrefRestoreDialog.this;
            prefRestoreDialog.g = ProgressDialog.show(prefRestoreDialog.getActivity(), null, PrefRestoreDialog.this.getText(com.noinnion.android.greader.reader.R.string.msg_loading), true, false);
        }
    }

    public static boolean d(PrefRestoreDialog prefRestoreDialog, String str) throws IOException {
        String attribute;
        ip6 ip6VarD;
        if (prefRestoreDialog.getActivity() != null) {
            Context applicationContext = prefRestoreDialog.getActivity().getApplicationContext();
            File file = new File(dn6.d);
            if (!file.exists()) {
                throw new IOException("File not found");
            }
            File file2 = new File(file, str);
            if (!file2.exists()) {
                throw new IOException("File not found");
            }
            ep6 ep6VarI = on6.i(applicationContext);
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(gy6.a(hy6.f(file2)));
                for (String str2 : h) {
                    iw6.X(applicationContext, str2);
                }
                for (Node firstChild = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(byteArrayInputStream).getDocumentElement().getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                    if (firstChild.getNodeType() == 1) {
                        Element element = (Element) firstChild;
                        String nodeName = element.getNodeName();
                        if (nodeName.equals("string")) {
                            iw6.V(applicationContext, element.getAttribute(InetAddressKeys.KEY_NAME), element.getTextContent());
                        } else if (nodeName.equals("boolean")) {
                            iw6.S(applicationContext, element.getAttribute(InetAddressKeys.KEY_NAME), element.getAttribute("value").equals("true"));
                        } else if (nodeName.equals("int")) {
                            iw6.T(applicationContext, element.getAttribute(InetAddressKeys.KEY_NAME), Integer.valueOf(element.getAttribute("value")).intValue());
                        } else if (nodeName.equals("subscription")) {
                            String attribute2 = element.getAttribute("uid");
                            if (attribute2 != null && (ip6VarD = ip6.d(applicationContext, n56.O(attribute2), false)) != null) {
                                String attribute3 = element.getAttribute("sync_excluded");
                                if (!TextUtils.isEmpty(attribute3)) {
                                    ip6VarD.p = attribute3.equals("true");
                                }
                                String attribute4 = element.getAttribute("hidden");
                                if (!TextUtils.isEmpty(attribute4)) {
                                    ip6VarD.q = attribute4.equals("true");
                                }
                                String attribute5 = element.getAttribute("notification");
                                if (!TextUtils.isEmpty(attribute5)) {
                                    ip6VarD.r = attribute5.equals("true");
                                }
                                String attribute6 = element.getAttribute("image_fit");
                                if (!TextUtils.isEmpty(attribute6)) {
                                    ip6VarD.s = attribute6.equals("true");
                                }
                                String attribute7 = element.getAttribute("offline_content");
                                if (!TextUtils.isEmpty(attribute7)) {
                                    ip6VarD.u = Integer.valueOf(attribute7).intValue();
                                }
                                String attribute8 = element.getAttribute("display_content");
                                if (!TextUtils.isEmpty(attribute8)) {
                                    ip6VarD.v = Integer.valueOf(attribute8).intValue();
                                }
                                String attribute9 = element.getAttribute("link_format");
                                if (!TextUtils.isEmpty(attribute9)) {
                                    ip6VarD.w = Integer.valueOf(attribute9).intValue();
                                }
                                String attribute10 = element.getAttribute("auto_readability");
                                if (!TextUtils.isEmpty(attribute10)) {
                                    ip6VarD.x = Integer.valueOf(attribute10).intValue();
                                }
                                ep6VarI.k(ip6VarD, ip6VarD);
                            }
                        } else if (nodeName.equals("tag") && (attribute = element.getAttribute("uid")) != null) {
                            String strO = n56.O(attribute);
                            lp6 lp6VarB = lp6.b(applicationContext, strO, false);
                            if (lp6VarB != null) {
                                String attribute11 = element.getAttribute("sync_excluded");
                                if (!TextUtils.isEmpty(attribute11)) {
                                    lp6VarB.l = attribute11.equals("true");
                                }
                                String attribute12 = element.getAttribute("hidden");
                                if (!TextUtils.isEmpty(attribute12)) {
                                    lp6VarB.m = attribute12.equals("true");
                                }
                                ep6VarI.l(lp6VarB, lp6VarB.i, lp6VarB.l, lp6VarB.m);
                            } else if (strO.contains("@")) {
                                String[] strArrSplit = strO.split("@");
                                if (strArrSplit.length == 2) {
                                    String str3 = strArrSplit[0];
                                    String attribute13 = element.getAttribute("label");
                                    String strO2 = !TextUtils.isEmpty(attribute13) ? n56.O(attribute13) : null;
                                    if (strO2 == null) {
                                        strO2 = strArrSplit[1];
                                    }
                                    ep6VarI.b(strO2, str3, strArrSplit[1]);
                                }
                            }
                        }
                    }
                }
                n56.X1(applicationContext, "Restored user prefs from " + file2.getAbsolutePath());
                return true;
            } catch (gw6 | IOException | ParserConfigurationException | SAXException e) {
                String message = e.getMessage();
                e.printStackTrace();
                n56.X1(applicationContext, "Failed to restore user prefs from " + file2.getAbsolutePath() + " - " + message);
            }
        }
        return false;
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        n56.y2(getActivity(), com.noinnion.android.greader.reader.R.string.ga_screen_preference_restore);
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) throws NoSuchMethodException, SecurityException {
        setRetainInstance(true);
        t75 t75Var = new t75(getActivity());
        t75Var.m(com.noinnion.android.greader.reader.R.string.txt_restore);
        t75 t75VarH = t75Var.j(com.noinnion.android.greader.reader.R.string.txt_restore, null).h(R.string.cancel, new a(this));
        View viewInflate = getActivity().getLayoutInflater().inflate(com.noinnion.android.greader.reader.R.layout.pref_restore, (ViewGroup) null);
        t75VarH.n(viewInflate);
        a0 a0VarA = t75VarH.a();
        a0VarA.setOnShowListener(new b(a0VarA));
        ButterKnife.bind(this, viewInflate);
        this.mListView.setEmptyView(this.mEmptyView);
        this.mListView.setOnItemClickListener(this);
        return a0VarA;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f = (String) adapterView.getItemAtPosition(i);
    }
}
