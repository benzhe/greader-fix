package com.noinnion.android.reader.ui.view;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import com.noinnion.android.reader.R$id;
import com.noinnion.android.reader.R$layout;

/* loaded from: classes2.dex */
public class SeekBarPreference extends Preference implements SeekBar.OnSeekBarChangeListener {
    public float e;
    public TextView f;
    public LayoutInflater g;

    public SeekBarPreference(Context context) {
        super(context);
        this.e = 30.0f;
    }

    @Override // android.preference.Preference
    public View onCreateView(ViewGroup viewGroup) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        this.g = layoutInflaterFrom;
        View viewInflate = layoutInflaterFrom.inflate(R$layout.seekbar_preference, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R$id.title)).setText(getTitle());
        ((TextView) viewInflate.findViewById(R$id.summary)).setText(getSummary());
        SeekBar seekBar = (SeekBar) viewInflate.findViewById(R$id.seek_bar);
        seekBar.setMax(60);
        seekBar.setProgress((int) this.e);
        seekBar.setOnSeekBarChangeListener(this);
        TextView textView = (TextView) viewInflate.findViewById(R$id.monitor);
        this.f = textView;
        textView.setText(seekBar.getProgress() + "");
        return viewInflate;
    }

    @Override // android.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        int iRound = typedArray.getInt(i, 50);
        if (iRound > 60) {
            iRound = 60;
        } else if (iRound < 0) {
            iRound = 0;
        } else if (iRound % 5 != 0) {
            iRound = Math.round(iRound / 5) * 5;
        }
        return Integer.valueOf(iRound);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        int iRound = Math.round(i / 5) * 5;
        int i2 = iRound >= 5 ? iRound : 5;
        if (!callChangeListener(Integer.valueOf(i2))) {
            seekBar.setProgress((int) this.e);
            return;
        }
        seekBar.setProgress(i2);
        this.e = i2;
        this.f.setText(i2 + "");
        SharedPreferences.Editor editor = getEditor();
        editor.putInt(getKey(), i2);
        editor.commit();
        notifyChanged();
    }

    @Override // android.preference.Preference
    public void onSetInitialValue(boolean z, Object obj) {
        int persistedInt = z ? getPersistedInt(50) : ((Integer) obj).intValue();
        if (!z) {
            persistInt(persistedInt);
        }
        this.e = persistedInt;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = 30.0f;
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = 30.0f;
    }
}
