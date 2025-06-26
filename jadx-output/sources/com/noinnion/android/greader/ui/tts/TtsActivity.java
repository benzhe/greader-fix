package com.noinnion.android.greader.ui.tts;

import android.R;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.service.TtsService;
import com.noinnion.android.greader.ui.setting.TextToSpeechPreferenceFragment;
import com.noinnion.android.greader.ui.tts.TtsActivity;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import defpackage.a0;
import defpackage.cn6;
import defpackage.ek7;
import defpackage.hk7;
import defpackage.hv6;
import defpackage.im7;
import defpackage.iw6;
import defpackage.jo;
import defpackage.jx6;
import defpackage.n56;
import defpackage.op6;
import defpackage.t75;
import defpackage.u;
import defpackage.wb;
import defpackage.yd;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class TtsActivity extends BaseDialogActivity {
    public ArrayAdapter<jx6.a> A;
    public long[] B;
    public long C;
    public String D;
    public String E;
    public int F;
    public op6 G;
    public final ServiceConnection H = new b();
    public final BroadcastReceiver I = new BroadcastReceiver() { // from class: com.noinnion.android.greader.ui.tts.TtsActivity$serviceReceiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            List listA;
            im7.e(context, "c");
            im7.e(intent, "intent");
            String action = intent.getAction();
            if (action == null) {
                return;
            }
            switch (action.hashCode()) {
                case -2026370538:
                    if (action.equals("com.noinnion.android.greader.reader.action.INIT_LANGUAGE")) {
                        this.a.z = intent.getStringArrayListExtra("ttsAvailableVoices");
                        TtsActivity ttsActivity = this.a;
                        ArrayList<String> arrayList = ttsActivity.z;
                        if (arrayList != null) {
                            Context applicationContext = ttsActivity.getApplicationContext();
                            im7.d(applicationContext, "applicationContext");
                            String strF = iw6.F(applicationContext, "service_tts_default_locale");
                            ArrayList arrayList2 = new ArrayList();
                            Iterator<String> it = arrayList.iterator();
                            String string = null;
                            while (it.hasNext()) {
                                String next = it.next();
                                im7.d(next, "availableVoice");
                                jx6.a aVar = new jx6.a(jx6.a(next));
                                arrayList2.add(aVar);
                                String lowerCase = next.toLowerCase();
                                im7.d(lowerCase, "(this as java.lang.String).toLowerCase()");
                                if (im7.a(lowerCase, strF)) {
                                    string = aVar.toString();
                                }
                                if (string == null) {
                                    string = aVar.toString();
                                }
                            }
                            TextView textView = ttsActivity.mLanguageText;
                            if (textView == null) {
                                im7.k("mLanguageText");
                                throw null;
                            }
                            textView.setText(string);
                            hv6 hv6Var = new hv6();
                            im7.e(arrayList2, "$this$sortedWith");
                            im7.e(hv6Var, "comparator");
                            if (arrayList2.size() <= 1) {
                                listA = ek7.s(arrayList2);
                            } else {
                                Object[] array = arrayList2.toArray(new Object[0]);
                                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                                im7.e(array, "$this$sortWith");
                                im7.e(hv6Var, "comparator");
                                if (array.length > 1) {
                                    Arrays.sort(array, hv6Var);
                                }
                                listA = ek7.a(array);
                            }
                            Object[] array2 = listA.toArray(new jx6.a[0]);
                            Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
                            ArrayAdapter<jx6.a> arrayAdapter = new ArrayAdapter<>(ttsActivity, R.layout.simple_spinner_dropdown_item, (jx6.a[]) array2);
                            arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
                            ttsActivity.A = arrayAdapter;
                            return;
                        }
                        return;
                    }
                    return;
                case -638022391:
                    if (action.equals("com.noinnion.android.greader.reader.action.STOP_SERVICE")) {
                        this.a.finish();
                        return;
                    }
                    return;
                case -166177608:
                    if (action.equals("com.noinnion.android.greader.reader.action.STATUS_CHANGED")) {
                        boolean booleanExtra = intent.getBooleanExtra("ttsIsSpeaking", false);
                        int intExtra = intent.getIntExtra("ttsCurrParagraph", 0);
                        int intExtra2 = intent.getIntExtra("ttsCurrSentence", 0);
                        TtsActivity ttsActivity2 = this.a;
                        if (intExtra2 == 0) {
                            TtsActivity.a aVar2 = ttsActivity2.J;
                            int count = aVar2 != null ? aVar2.getCount() : 0;
                            if (count > 0 && intExtra < count) {
                                ttsActivity2.F = intExtra;
                                ListView listView = ttsActivity2.mListView;
                                if (listView == null) {
                                    im7.k("mListView");
                                    throw null;
                                }
                                listView.setSelection(intExtra);
                            }
                        }
                        ttsActivity2.C(booleanExtra);
                        return;
                    }
                    return;
                case 683608273:
                    if (action.equals("com.noinnion.android.greader.reader.action.INIT_ITEM")) {
                        this.a.D = intent.getStringExtra("ttsTitle");
                        TtsActivity ttsActivity3 = this.a;
                        TextView textView2 = ttsActivity3.mTitleText;
                        if (textView2 == null) {
                            im7.k("mTitleText");
                            throw null;
                        }
                        textView2.setText(ttsActivity3.D);
                        this.a.K = intent.getStringArrayListExtra("ttsTextArray");
                        TtsActivity ttsActivity4 = this.a;
                        TtsActivity.a aVar3 = ttsActivity4.J;
                        if (aVar3 == null) {
                            TtsActivity ttsActivity5 = this.a;
                            List list = ttsActivity5.K;
                            if (list == null) {
                                list = hk7.e;
                            }
                            ttsActivity4.J = new TtsActivity.a(ttsActivity5, ttsActivity5, com.noinnion.android.greader.reader.R.layout.tts_list_row, list);
                            this.a.B().setAdapter((ListAdapter) this.a.J);
                        } else {
                            aVar3.notifyDataSetChanged();
                        }
                        this.a.C(true);
                        this.a.B().setVisibility(0);
                        View view = this.a.mEmptyView;
                        if (view != null) {
                            view.setVisibility(8);
                            return;
                        } else {
                            im7.k("mEmptyView");
                            throw null;
                        }
                    }
                    return;
                case 959516894:
                    if (action.equals("com.noinnion.android.greader.reader.action.START_INIT")) {
                        this.a.D = intent.getStringExtra("ttsTitle");
                        TtsActivity ttsActivity6 = this.a;
                        TextView textView3 = ttsActivity6.mTitleText;
                        if (textView3 == null) {
                            im7.k("mTitleText");
                            throw null;
                        }
                        textView3.setText(ttsActivity6.D);
                        this.a.B().setVisibility(8);
                        View view2 = this.a.mEmptyView;
                        if (view2 == null) {
                            im7.k("mEmptyView");
                            throw null;
                        }
                        view2.setVisibility(0);
                        String stringExtra = intent.getStringExtra("ttsCurrLanguage");
                        if (stringExtra != null) {
                            Locale localeA = jx6.a(stringExtra);
                            TextView textView4 = this.a.mLanguageText;
                            if (textView4 != null) {
                                textView4.setText(localeA.getDisplayName());
                                return;
                            } else {
                                im7.k("mLanguageText");
                                throw null;
                            }
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    public a J;
    public List<String> K;

    @BindView(com.noinnion.android.greader.reader.R.id.empty)
    public View mEmptyView;

    @BindView(com.noinnion.android.greader.reader.R.id.language_text)
    public TextView mLanguageText;

    @BindView(com.noinnion.android.greader.reader.R.id.list_view)
    public ListView mListView;

    @BindView(com.noinnion.android.greader.reader.R.id.play_button)
    public ImageView mPlayButton;

    @BindView(com.noinnion.android.greader.reader.R.id.premium_upgrade)
    public View mPremiumUpgrade;

    @BindView(com.noinnion.android.greader.reader.R.id.item_label)
    public TextView mTitleText;

    @BindView(com.noinnion.android.greader.reader.R.id.toolbar)
    public Toolbar mToolbar;
    public ListPopupWindow y;
    public ArrayList<String> z;

    public final class a extends ArrayAdapter<String> {
        public final /* synthetic */ TtsActivity e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(TtsActivity ttsActivity, Context context, int i, List<String> list) {
            super(context, i, list);
            im7.e(context, "context");
            im7.e(list, "items");
            this.e = ttsActivity;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public int getCount() {
            List<String> list = this.e.K;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            im7.e(viewGroup, "parent");
            if (view == null) {
                Object systemService = this.e.getSystemService("layout_inflater");
                Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
                view = ((LayoutInflater) systemService).inflate(com.noinnion.android.greader.reader.R.layout.tts_list_row, (ViewGroup) null);
            }
            if (view == null) {
                StringBuilder sbZ = jo.z("Failed to find view with ID ");
                Context context = getContext();
                im7.d(context, "context");
                sbZ.append(context.getResources().getResourceName(com.noinnion.android.greader.reader.R.layout.tts_list_row));
                throw new RuntimeException(sbZ.toString());
            }
            try {
                List<String> list = this.e.K;
                String str = list != null ? (String) ek7.i(list, i) : null;
                if (str != null) {
                    View viewFindViewById = view.findViewById(com.noinnion.android.greader.reader.R.id.text);
                    if (viewFindViewById == null) {
                        throw new NullPointerException("null cannot be cast to non-null type android.widget.TextView");
                    }
                    ((TextView) viewFindViewById).setText(str);
                }
                view.setSelected(i == this.e.F);
            } catch (Exception e) {
                n56.y1("TtsActivity", e);
                e.printStackTrace();
            }
            return view;
        }
    }

    public static final class b implements ServiceConnection {
        public b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            im7.e(componentName, "className");
            im7.e(iBinder, "service");
            TtsActivity ttsActivity = TtsActivity.this;
            int i = op6.a.e;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.noinnion.android.greader.service.ITtsService");
            ttsActivity.G = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof op6)) ? new op6.a.C0028a(iBinder) : (op6) iInterfaceQueryLocalInterface;
            try {
                op6 op6Var = TtsActivity.this.G;
                if (op6Var != null) {
                    op6Var.Z3();
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            im7.e(componentName, "className");
            TtsActivity.this.G = null;
        }
    }

    public static final class c implements DialogInterface.OnDismissListener {
        public static final c e = new c();

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
        }
    }

    public static final class d implements AdapterView.OnItemClickListener {
        public final /* synthetic */ View f;

        public d(View view) {
            this.f = view;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            im7.e(adapterView, "parent");
            Object item = adapterView.getAdapter().getItem(i);
            Objects.requireNonNull(item, "null cannot be cast to non-null type com.noinnion.android.reader.util.LocaleUtils.TTSLocale");
            jx6.a aVar = (jx6.a) item;
            TextView textView = TtsActivity.this.mLanguageText;
            if (textView == null) {
                im7.k("mLanguageText");
                throw null;
            }
            textView.setText(aVar.toString());
            Context applicationContext = TtsActivity.this.getApplicationContext();
            im7.d(applicationContext, "applicationContext");
            String strB = jx6.b(aVar.a);
            Objects.requireNonNull(strB, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = strB.toLowerCase();
            im7.d(lowerCase, "(this as java.lang.String).toLowerCase()");
            iw6.V(applicationContext, "service_tts_default_locale", lowerCase);
            try {
                op6 op6Var = TtsActivity.this.G;
                if (op6Var != null) {
                    op6Var.V4(jx6.b(aVar.a));
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            ListPopupWindow listPopupWindow = TtsActivity.this.y;
            if (listPopupWindow != null) {
                listPopupWindow.dismiss();
            }
        }
    }

    public final ListView B() {
        ListView listView = this.mListView;
        if (listView != null) {
            return listView;
        }
        im7.k("mListView");
        throw null;
    }

    public final void C(boolean z) {
        ImageView imageView = this.mPlayButton;
        if (imageView != null) {
            imageView.setImageResource(z ? com.noinnion.android.greader.reader.R.drawable.ic_media_pause : com.noinnion.android.greader.reader.R.drawable.ic_media_play);
        } else {
            im7.k("mPlayButton");
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0018  */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r2, int r3, android.content.Intent r4) {
        /*
            r1 = this;
            r0 = 1
            if (r2 != r0) goto L68
            r2 = 0
            if (r4 == 0) goto L18
            java.lang.String r3 = "availableVoices"
            java.util.ArrayList r3 = r4.getStringArrayListExtra(r3)
            r1.z = r3
            if (r3 == 0) goto L18
            boolean r3 = r3.isEmpty()
            r3 = r3 ^ r0
            if (r3 != r0) goto L18
            goto L19
        L18:
            r0 = 0
        L19:
            if (r0 == 0) goto L5a
            android.content.Intent r2 = new android.content.Intent
            java.lang.Class<com.noinnion.android.greader.service.TtsService> r3 = com.noinnion.android.greader.service.TtsService.class
            r2.<init>(r1, r3)
            java.lang.String r3 = "com.noinnion.android.greader.reader.action.INIT_TTS"
            r2.setAction(r3)
            java.util.ArrayList<java.lang.String> r3 = r1.z
            java.lang.String r4 = "ttsAvailableVoices"
            r2.putExtra(r4, r3)
            long[] r3 = r1.B
            java.lang.String r4 = "itemIds"
            r2.putExtra(r4, r3)
            long r3 = r1.C
            java.lang.String r0 = "itemId"
            r2.putExtra(r0, r3)
            java.lang.String r3 = r1.D
            java.lang.String r4 = "ttsTitle"
            r2.putExtra(r4, r3)
            java.lang.String r3 = r1.E
            java.lang.String r4 = "ttsUrl"
            r2.putExtra(r4, r3)
            java.lang.Object r3 = defpackage.u7.a
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 26
            if (r3 < r4) goto L56
            r1.startForegroundService(r2)
            goto L6b
        L56:
            r1.startService(r2)
            goto L6b
        L5a:
            r2 = 2131821365(0x7f110335, float:1.9275471E38)
            java.lang.String r2 = r1.getString(r2)
            defpackage.n56.X1(r1, r2)
            r1.finish()
            goto L6b
        L68:
            super.onActivityResult(r2, r3, r4)
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.tts.TtsActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        A(bundle, true);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.noinnion.android.greader.reader.action.INIT_LANGUAGE");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.START_INIT");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.INIT_ITEM");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.STATUS_CHANGED");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.STOP_SERVICE");
        yd.a(this).b(this.I, intentFilter);
        bindService(new Intent(this, (Class<?>) TtsService.class), this.H, 1);
        setContentView(com.noinnion.android.greader.reader.R.layout.tts_activity);
        ButterKnife.bind(this);
        Intent intent = getIntent();
        im7.d(intent, "intent");
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.B = extras.getLongArray("itemIds");
            this.C = extras.getLong("itemId");
            this.D = extras.getString("ttsTitle");
            this.E = extras.getString("ttsUrl");
        }
        Toolbar toolbar = this.mToolbar;
        if (toolbar == null) {
            im7.k("mToolbar");
            throw null;
        }
        s().x(toolbar);
        u uVarT = t();
        boolean z = false;
        if (uVarT != null) {
            uVarT.o(true);
            uVarT.q(false);
        }
        ListView listView = this.mListView;
        if (listView == null) {
            im7.k("mListView");
            throw null;
        }
        View view = this.mEmptyView;
        if (view == null) {
            im7.k("mEmptyView");
            throw null;
        }
        listView.setEmptyView(view);
        View view2 = this.mPremiumUpgrade;
        if (view2 == null) {
            im7.k("mPremiumUpgrade");
            throw null;
        }
        n56.B2(view2, Boolean.valueOf(!cn6.d0(this)));
        TtsService ttsService = TtsService.B;
        if (ttsService != null && ttsService.e) {
            z = true;
        }
        if (!z) {
            try {
                Intent intent2 = new Intent();
                intent2.setAction("android.speech.tts.engine.CHECK_TTS_DATA");
                startActivityForResult(intent2, 1);
            } catch (Exception e) {
                n56.X1(getApplicationContext(), e.getLocalizedMessage());
                finish();
            }
        }
        n56.y2(this, com.noinnion.android.greader.reader.R.string.ga_screen_tts);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        im7.e(menu, "menu");
        getMenuInflater().inflate(com.noinnion.android.greader.reader.R.menu.tts, menu);
        return true;
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        op6 op6Var;
        try {
            op6 op6Var2 = this.G;
            if (op6Var2 != null && op6Var2.p3() && (op6Var = this.G) != null) {
                op6Var.stop();
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        unbindService(this.H);
        yd.a(this).d(this.I);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        im7.e(menuItem, NSRSS20.ITEM);
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            this.j.a();
            return false;
        }
        if (itemId != com.noinnion.android.greader.reader.R.id.tts_preferences) {
            return false;
        }
        final c cVar = c.e;
        int i = TextToSpeechPreferenceFragment.l;
        t75 t75Var = new t75(this);
        t75Var.n(getLayoutInflater().inflate(com.noinnion.android.greader.reader.R.layout.text_to_speech_preference, (ViewGroup) null));
        t75Var.d(R.string.ok, null);
        final wb wbVarO = o();
        t75Var.l(com.noinnion.android.greader.reader.R.string.preference_text_to_speech);
        a0 a0VarA = t75Var.a();
        a0VarA.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: nt6
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                wb wbVar = wbVarO;
                DialogInterface.OnDismissListener onDismissListener = cVar;
                int i2 = TextToSpeechPreferenceFragment.l;
                Fragment fragmentB = wbVar.b(com.noinnion.android.greader.reader.R.id.preference_fragment);
                if (fragmentB != null) {
                    qb qbVar = new qb((xb) wbVar);
                    qbVar.q(fragmentB);
                    qbVar.c();
                }
                if (onDismissListener != null) {
                    onDismissListener.onDismiss(dialogInterface);
                }
            }
        });
        a0VarA.show();
        return false;
    }

    @OnClick({com.noinnion.android.greader.reader.R.id.premium_upgrade})
    public final void premiumUpgrade(View view) {
        n56.Z1(this);
    }

    public final void setMEmptyView(View view) {
        im7.e(view, "<set-?>");
        this.mEmptyView = view;
    }

    public final void setMPremiumUpgrade(View view) {
        im7.e(view, "<set-?>");
        this.mPremiumUpgrade = view;
    }

    @OnClick({com.noinnion.android.greader.reader.R.id.language_selector})
    public final void showLanguageList(View view) {
        if (this.A == null) {
            return;
        }
        if (this.y == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(this);
            listPopupWindow.setAdapter(this.A);
            listPopupWindow.setAnchorView(view);
            listPopupWindow.setModal(true);
            listPopupWindow.setWidth(450);
            listPopupWindow.setOnItemClickListener(new d(view));
            this.y = listPopupWindow;
        }
        ListPopupWindow listPopupWindow2 = this.y;
        if (listPopupWindow2 != null) {
            listPopupWindow2.show();
        }
    }
}
