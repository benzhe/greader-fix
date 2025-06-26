package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new a();
    public final Month e;
    public final Month f;
    public final DateValidator g;
    public Month h;
    public final int i;
    public final int j;

    public interface DateValidator extends Parcelable {
        boolean g0(long j);
    }

    public static class a implements Parcelable.Creator<CalendarConstraints> {
        @Override // android.os.Parcelable.Creator
        public CalendarConstraints createFromParcel(Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), null);
        }

        @Override // android.os.Parcelable.Creator
        public CalendarConstraints[] newArray(int i) {
            return new CalendarConstraints[i];
        }
    }

    public CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, a aVar) {
        this.e = month;
        this.f = month2;
        this.h = month3;
        this.g = dateValidator;
        if (month3 != null && month.e.compareTo(month3.e) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (month3 != null && month3.e.compareTo(month2.e) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.j = month.w(month2) + 1;
        this.i = (month2.g - month.g) + 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        return this.e.equals(calendarConstraints.e) && this.f.equals(calendarConstraints.f) && Objects.equals(this.h, calendarConstraints.h) && this.g.equals(calendarConstraints.g);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.e, this.f, this.h, this.g});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.e, 0);
        parcel.writeParcelable(this.f, 0);
        parcel.writeParcelable(this.h, 0);
        parcel.writeParcelable(this.g, 0);
    }
}
