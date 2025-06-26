package com.thebluealliance.spectrum;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.thebluealliance.spectrum.SpectrumPalette;
import defpackage.q27;

/* loaded from: classes2.dex */
public class SpectrumPreference extends DialogPreference {
    public int[] e;
    public int f;
    public int g;
    public boolean h;
    public SpectrumPalette i;
    public boolean j;
    public View k;
    public int l;
    public int m;
    public SharedPreferences.OnSharedPreferenceChangeListener n;

    public class a implements SharedPreferences.OnSharedPreferenceChangeListener {
        public a() {
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if (SpectrumPreference.this.getKey().equals(str)) {
                SpectrumPreference spectrumPreference = SpectrumPreference.this;
                spectrumPreference.f = sharedPreferences.getInt(str, spectrumPreference.f);
                SpectrumPreference.this.i();
            }
        }
    }

    public class b implements SpectrumPalette.a {
        public b() {
        }
    }

    public SpectrumPreference(Context context, AttributeSet attributeSet) {
        super(context, null);
        this.h = true;
        this.j = false;
        this.l = 0;
        this.m = -1;
        this.n = new a();
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R$styleable.SpectrumPreference, 0, 0);
        try {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.SpectrumPreference_spectrum_colors, 0);
            if (resourceId != 0) {
                this.e = getContext().getResources().getIntArray(resourceId);
            }
            this.h = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SpectrumPreference_spectrum_closeOnSelected, true);
            this.l = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SpectrumPalette_spectrum_outlineWidth, 0);
            this.m = typedArrayObtainStyledAttributes.getInt(R$styleable.SpectrumPalette_spectrum_columnCount, -1);
            typedArrayObtainStyledAttributes.recycle();
            setDialogLayoutResource(R$layout.dialog_color_picker);
            setWidgetLayoutResource(R$layout.color_preference_widget);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void i() {
        if (this.k == null) {
            return;
        }
        q27 q27Var = new q27(this.f);
        q27Var.b(this.l);
        if (!isEnabled()) {
            q27Var.a(-16777216);
            q27Var.a.setAlpha(0);
            q27Var.b(getContext().getResources().getDimensionPixelSize(R$dimen.color_preference_disabled_outline_size));
            q27Var.d.setColor(-16777216);
            q27Var.invalidateSelf();
            q27Var.d.setAlpha(97);
            q27Var.invalidateSelf();
        }
        this.k.setBackground(q27Var);
    }

    @Override // android.preference.DialogPreference
    public void onBindDialogView(View view) {
        super.onBindDialogView(view);
        if (this.e == null) {
            throw new RuntimeException("SpectrumPreference requires a colors array");
        }
        SpectrumPalette spectrumPalette = (SpectrumPalette) view.findViewById(R$id.palette);
        this.i = spectrumPalette;
        spectrumPalette.setColors(this.e);
        this.i.setSelectedColor(this.f);
        this.i.setOutlineWidth(this.l);
        this.i.setFixedColumnCount(this.m);
        this.i.setOnColorSelectedListener(new b());
    }

    @Override // android.preference.Preference
    public void onBindView(View view) {
        super.onBindView(view);
        this.k = view.findViewById(R$id.color_preference_widget);
        i();
    }

    @Override // android.preference.Preference
    public View onCreateView(ViewGroup viewGroup) {
        getSharedPreferences().registerOnSharedPreferenceChangeListener(this.n);
        return super.onCreateView(viewGroup);
    }

    @Override // android.preference.DialogPreference
    public void onDialogClosed(boolean z) {
        if (z && callChangeListener(Integer.valueOf(this.g))) {
            int i = this.g;
            boolean z2 = this.f != i;
            if (z2 || !this.j) {
                this.f = i;
                this.j = true;
                persistInt(i);
                i();
                if (z2) {
                    notifyChanged();
                }
            }
        }
    }

    @Override // android.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInteger(i, -16777216));
    }

    @Override // android.preference.DialogPreference
    public void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        if (this.h) {
            builder.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
        }
    }

    @Override // android.preference.Preference
    public void onPrepareForRemoval() {
        super.onPrepareForRemoval();
        getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this.n);
    }

    @Override // android.preference.Preference
    public void onSetInitialValue(boolean z, Object obj) {
        if (z) {
            this.f = getPersistedInt(-16777216);
            return;
        }
        int iIntValue = ((Integer) obj).intValue();
        this.f = iIntValue;
        persistInt(iIntValue);
    }
}
