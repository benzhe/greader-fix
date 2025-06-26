package org.greenrobot.eventbus.util;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import defpackage.jo;
import defpackage.qb;
import defpackage.rb;
import defpackage.wb;
import defpackage.xb;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public class ErrorDialogManager {
    public static final String KEY_EVENT_TYPE_ON_CLOSE = "de.greenrobot.eventbus.errordialog.event_type_on_close";
    public static final String KEY_FINISH_AFTER_DIALOG = "de.greenrobot.eventbus.errordialog.finish_after_dialog";
    public static final String KEY_ICON_ID = "de.greenrobot.eventbus.errordialog.icon_id";
    public static final String KEY_MESSAGE = "de.greenrobot.eventbus.errordialog.message";
    public static final String KEY_TITLE = "de.greenrobot.eventbus.errordialog.title";
    public static final String TAG_ERROR_DIALOG = "de.greenrobot.eventbus.error_dialog";
    public static final String TAG_ERROR_DIALOG_MANAGER = "de.greenrobot.eventbus.error_dialog_manager";
    public static ErrorDialogFragmentFactory<?> factory;

    public static class HoneycombManagerFragment extends Fragment {
        public Bundle argumentsForErrorDialog;
        private EventBus eventBus;
        private Object executionScope;
        public boolean finishAfterDialog;

        public static void attachTo(Activity activity, Object obj, boolean z, Bundle bundle) {
            FragmentManager fragmentManager = activity.getFragmentManager();
            HoneycombManagerFragment honeycombManagerFragment = (HoneycombManagerFragment) fragmentManager.findFragmentByTag(ErrorDialogManager.TAG_ERROR_DIALOG_MANAGER);
            if (honeycombManagerFragment == null) {
                honeycombManagerFragment = new HoneycombManagerFragment();
                fragmentManager.beginTransaction().add(honeycombManagerFragment, ErrorDialogManager.TAG_ERROR_DIALOG_MANAGER).commit();
                fragmentManager.executePendingTransactions();
            }
            honeycombManagerFragment.finishAfterDialog = z;
            honeycombManagerFragment.argumentsForErrorDialog = bundle;
            honeycombManagerFragment.executionScope = obj;
        }

        public void onEventMainThread(ThrowableFailureEvent throwableFailureEvent) {
            if (ErrorDialogManager.isInExecutionScope(this.executionScope, throwableFailureEvent)) {
                ErrorDialogManager.checkLogException(throwableFailureEvent);
                FragmentManager fragmentManager = getFragmentManager();
                fragmentManager.executePendingTransactions();
                DialogFragment dialogFragment = (DialogFragment) fragmentManager.findFragmentByTag(ErrorDialogManager.TAG_ERROR_DIALOG);
                if (dialogFragment != null) {
                    dialogFragment.dismiss();
                }
                DialogFragment dialogFragment2 = (DialogFragment) ErrorDialogManager.factory.prepareErrorFragment(throwableFailureEvent, this.finishAfterDialog, this.argumentsForErrorDialog);
                if (dialogFragment2 != null) {
                    dialogFragment2.show(fragmentManager, ErrorDialogManager.TAG_ERROR_DIALOG);
                }
            }
        }

        @Override // android.app.Fragment
        public void onPause() {
            this.eventBus.unregister(this);
            super.onPause();
        }

        @Override // android.app.Fragment
        public void onResume() {
            super.onResume();
            EventBus eventBus = ErrorDialogManager.factory.config.getEventBus();
            this.eventBus = eventBus;
            eventBus.register(this);
        }
    }

    public static class SupportManagerFragment extends androidx.fragment.app.Fragment {
        public Bundle argumentsForErrorDialog;
        private EventBus eventBus;
        private Object executionScope;
        public boolean finishAfterDialog;
        private boolean skipRegisterOnNextResume;

        public static void attachTo(Activity activity, Object obj, boolean z, Bundle bundle) {
            wb wbVarO = ((FragmentActivity) activity).o();
            SupportManagerFragment supportManagerFragment = (SupportManagerFragment) wbVarO.c(ErrorDialogManager.TAG_ERROR_DIALOG_MANAGER);
            if (supportManagerFragment == null) {
                supportManagerFragment = new SupportManagerFragment();
                qb qbVar = new qb((xb) wbVarO);
                qbVar.f(0, supportManagerFragment, ErrorDialogManager.TAG_ERROR_DIALOG_MANAGER, 1);
                qbVar.c();
                wbVarO.a();
            }
            supportManagerFragment.finishAfterDialog = z;
            supportManagerFragment.argumentsForErrorDialog = bundle;
            supportManagerFragment.executionScope = obj;
        }

        @Override // androidx.fragment.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            EventBus eventBus = ErrorDialogManager.factory.config.getEventBus();
            this.eventBus = eventBus;
            eventBus.register(this);
            this.skipRegisterOnNextResume = true;
        }

        public void onEventMainThread(ThrowableFailureEvent throwableFailureEvent) {
            if (ErrorDialogManager.isInExecutionScope(this.executionScope, throwableFailureEvent)) {
                ErrorDialogManager.checkLogException(throwableFailureEvent);
                wb fragmentManager = getFragmentManager();
                fragmentManager.a();
                rb rbVar = (rb) fragmentManager.c(ErrorDialogManager.TAG_ERROR_DIALOG);
                if (rbVar != null) {
                    rbVar.dismiss();
                }
                rb rbVar2 = (rb) ErrorDialogManager.factory.prepareErrorFragment(throwableFailureEvent, this.finishAfterDialog, this.argumentsForErrorDialog);
                if (rbVar2 != null) {
                    rbVar2.show(fragmentManager, ErrorDialogManager.TAG_ERROR_DIALOG);
                }
            }
        }

        @Override // androidx.fragment.app.Fragment
        public void onPause() {
            this.eventBus.unregister(this);
            super.onPause();
        }

        @Override // androidx.fragment.app.Fragment
        public void onResume() {
            super.onResume();
            if (this.skipRegisterOnNextResume) {
                this.skipRegisterOnNextResume = false;
                return;
            }
            EventBus eventBus = ErrorDialogManager.factory.config.getEventBus();
            this.eventBus = eventBus;
            eventBus.register(this);
        }
    }

    public static void attachTo(Activity activity) {
        attachTo(activity, false, null);
    }

    public static void checkLogException(ThrowableFailureEvent throwableFailureEvent) {
        ErrorDialogConfig errorDialogConfig = factory.config;
        if (errorDialogConfig.logExceptions) {
            String str = errorDialogConfig.tagForLoggingExceptions;
            if (str == null) {
                str = EventBus.TAG;
            }
            Log.i(str, "Error dialog manager received exception", throwableFailureEvent.throwable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isInExecutionScope(Object obj, ThrowableFailureEvent throwableFailureEvent) {
        Object executionScope;
        return throwableFailureEvent == null || (executionScope = throwableFailureEvent.getExecutionScope()) == null || executionScope.equals(obj);
    }

    private static boolean isSupportActivity(Activity activity) {
        String name;
        Class<?> superclass = activity.getClass();
        do {
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                StringBuilder sbZ = jo.z("Illegal activity type: ");
                sbZ.append(activity.getClass());
                throw new RuntimeException(sbZ.toString());
            }
            name = superclass.getName();
            if (name.equals("androidx.fragment.app.FragmentActivity")) {
                return true;
            }
            if (name.startsWith("com.actionbarsherlock.app") && (name.endsWith(".SherlockActivity") || name.endsWith(".SherlockListActivity") || name.endsWith(".SherlockPreferenceActivity"))) {
                throw new RuntimeException(jo.n("Please use SherlockFragmentActivity. Illegal activity: ", name));
            }
        } while (!name.equals("android.app.Activity"));
        return false;
    }

    public static void attachTo(Activity activity, boolean z) {
        attachTo(activity, z, null);
    }

    public static void attachTo(Activity activity, boolean z, Bundle bundle) {
        attachTo(activity, activity.getClass(), z, bundle);
    }

    public static void attachTo(Activity activity, Object obj, boolean z, Bundle bundle) {
        if (factory != null) {
            if (isSupportActivity(activity)) {
                SupportManagerFragment.attachTo(activity, obj, z, bundle);
                return;
            } else {
                HoneycombManagerFragment.attachTo(activity, obj, z, bundle);
                return;
            }
        }
        throw new RuntimeException("You must set the static factory field to configure error dialogs for your app.");
    }
}
