package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import defpackage.p75;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new a();
    public final Calendar e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public String j;

    public static class a implements Parcelable.Creator<Month> {
        @Override // android.os.Parcelable.Creator
        public Month createFromParcel(Parcel parcel) {
            int i = parcel.readInt();
            int i2 = parcel.readInt();
            Calendar calendarD = p75.d();
            calendarD.set(1, i);
            calendarD.set(2, i2);
            return new Month(calendarD);
        }

        @Override // android.os.Parcelable.Creator
        public Month[] newArray(int i) {
            return new Month[i];
        }
    }

    public Month(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarA = p75.a(calendar);
        this.e = calendarA;
        this.f = calendarA.get(2);
        this.g = calendarA.get(1);
        this.h = calendarA.getMaximum(7);
        this.i = calendarA.getActualMaximum(5);
        calendarA.getTimeInMillis();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.f == month.f && this.g == month.g;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f), Integer.valueOf(this.g)});
    }

    @Override // java.lang.Comparable
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public int compareTo(Month month) {
        return this.e.compareTo(month.e);
    }

    public int k() {
        int firstDayOfWeek = this.e.get(7) - this.e.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.h : firstDayOfWeek;
    }

    public String l(Context context) {
        if (this.j == null) {
            this.j = DateUtils.formatDateTime(context, this.e.getTimeInMillis() - TimeZone.getDefault().getOffset(r0), 36);
        }
        return this.j;
    }

    public Month t(int i) {
        Calendar calendarA = p75.a(this.e);
        calendarA.add(2, i);
        return new Month(calendarA);
    }

    public int w(Month month) {
        if (!(this.e instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        return (month.f - this.f) + ((month.g - this.g) * 12);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.g);
        parcel.writeInt(this.f);
    }
}
