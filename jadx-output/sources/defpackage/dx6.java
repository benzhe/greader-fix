package defpackage;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.Preference;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.noinnion.android.reader.R$layout;
import defpackage.ex6;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public abstract class dx6 extends Fragment implements ex6.b {
    public PreferenceManager e;
    public ListView f;
    public boolean g;
    public boolean h;
    public Handler i = new a();
    public final Runnable j = new b();
    public View.OnKeyListener k = new c();

    public class a extends Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws NoSuchMethodException, SecurityException {
            if (message.what != 1) {
                return;
            }
            dx6.this.e();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListView listView = dx6.this.f;
            listView.focusableViewAvailable(listView);
        }
    }

    public class c implements View.OnKeyListener {
        public c() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (dx6.this.f.getSelectedItem() instanceof Preference) {
                dx6.this.f.getSelectedView();
            }
            return false;
        }
    }

    public interface d {
        boolean a(dx6 dx6Var, Preference preference);
    }

    public boolean a(PreferenceScreen preferenceScreen, Preference preference) {
        if (getActivity() instanceof d) {
            return ((d) getActivity()).a(this, preference);
        }
        return false;
    }

    public void d(int i) throws NoSuchMethodException, SecurityException {
        PreferenceScreen preferenceScreen;
        PreferenceManager preferenceManager = this.e;
        if (preferenceManager == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
        FragmentActivity activity = getActivity();
        PreferenceScreen preferenceScreenH = h();
        String str = ex6.a;
        try {
            Method declaredMethod = PreferenceManager.class.getDeclaredMethod("inflateFromResource", Context.class, Integer.TYPE, PreferenceScreen.class);
            declaredMethod.setAccessible(true);
            preferenceScreen = (PreferenceScreen) declaredMethod.invoke(preferenceManager, activity, Integer.valueOf(i), preferenceScreenH);
        } catch (Exception e) {
            Log.w(ex6.a, "Couldn't call PreferenceManager.inflateFromResource by reflection", e);
            preferenceScreen = null;
        }
        i(preferenceScreen);
    }

    public final void e() throws NoSuchMethodException, SecurityException {
        PreferenceScreen preferenceScreenH = h();
        if (preferenceScreenH != null) {
            if (this.f == null) {
                View view = getView();
                if (view == null) {
                    throw new IllegalStateException("Content view not yet created");
                }
                View viewFindViewById = view.findViewById(R.id.list);
                if (!(viewFindViewById instanceof ListView)) {
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
                ListView listView = (ListView) viewFindViewById;
                this.f = listView;
                if (listView == null) {
                    throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
                }
                listView.setOnKeyListener(this.k);
                this.i.post(this.j);
            }
            preferenceScreenH.bind(this.f);
        }
    }

    public PreferenceScreen h() throws NoSuchMethodException, SecurityException {
        PreferenceManager preferenceManager = this.e;
        String str = ex6.a;
        try {
            Method declaredMethod = PreferenceManager.class.getDeclaredMethod("getPreferenceScreen", new Class[0]);
            declaredMethod.setAccessible(true);
            return (PreferenceScreen) declaredMethod.invoke(preferenceManager, new Object[0]);
        } catch (Exception e) {
            Log.w(ex6.a, "Couldn't call PreferenceManager.getPreferenceScreen by reflection", e);
            return null;
        }
    }

    public void i(PreferenceScreen preferenceScreen) {
        PreferenceManager preferenceManager = this.e;
        String str = ex6.a;
        boolean zBooleanValue = false;
        try {
            Method declaredMethod = PreferenceManager.class.getDeclaredMethod("setPreferences", PreferenceScreen.class);
            declaredMethod.setAccessible(true);
            zBooleanValue = ((Boolean) declaredMethod.invoke(preferenceManager, preferenceScreen)).booleanValue();
        } catch (Exception e) {
            Log.w(ex6.a, "Couldn't call PreferenceManager.setPreferences by reflection", e);
        }
        if (!zBooleanValue || preferenceScreen == null) {
            return;
        }
        this.g = true;
        if (!this.h || this.i.hasMessages(1)) {
            return;
        }
        this.i.obtainMessage(1).sendToTarget();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreenH;
        super.onActivityCreated(bundle);
        if (this.g) {
            e();
        }
        this.h = true;
        if (bundle == null || (bundle2 = bundle.getBundle("android:preferences")) == null || (preferenceScreenH = h()) == null) {
            return;
        }
        preferenceScreenH.restoreHierarchyState(bundle2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onActivityResult(i, i2, intent);
        PreferenceManager preferenceManager = this.e;
        String str = ex6.a;
        try {
            Class cls = Integer.TYPE;
            Method declaredMethod = PreferenceManager.class.getDeclaredMethod("dispatchActivityResult", cls, cls, Intent.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(preferenceManager, Integer.valueOf(i), Integer.valueOf(i2), intent);
        } catch (Exception e) {
            Log.w(ex6.a, "Couldn't call PreferenceManager.dispatchActivityResult by reflection", e);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        PreferenceManager preferenceManager;
        super.onCreate(bundle);
        FragmentActivity activity = getActivity();
        String str = ex6.a;
        try {
            Constructor declaredConstructor = PreferenceManager.class.getDeclaredConstructor(Activity.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            preferenceManager = (PreferenceManager) declaredConstructor.newInstance(activity, 100);
        } catch (Exception e) {
            Log.w(ex6.a, "Couldn't call constructor PreferenceManager by reflection", e);
            preferenceManager = null;
        }
        this.e = preferenceManager;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R$layout.preference_list_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onDestroy();
        PreferenceManager preferenceManager = this.e;
        String str = ex6.a;
        try {
            Method declaredMethod = PreferenceManager.class.getDeclaredMethod("dispatchActivityDestroy", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(preferenceManager, new Object[0]);
        } catch (Exception e) {
            Log.w(ex6.a, "Couldn't call PreferenceManager.dispatchActivityDestroy by reflection", e);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f = null;
        this.i.removeCallbacks(this.j);
        this.i.removeMessages(1);
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) throws NoSuchMethodException, SecurityException {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreenH = h();
        if (preferenceScreenH != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreenH.saveHierarchyState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onStart();
        ex6.a(this.e, this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onStop();
        PreferenceManager preferenceManager = this.e;
        String str = ex6.a;
        try {
            Method declaredMethod = PreferenceManager.class.getDeclaredMethod("dispatchActivityStop", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(preferenceManager, new Object[0]);
        } catch (Exception e) {
            Log.w(ex6.a, "Couldn't call PreferenceManager.dispatchActivityStop by reflection", e);
        }
        ex6.a(this.e, null);
    }
}
