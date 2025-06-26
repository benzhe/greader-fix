package com.google.ads.mediation;

import android.location.Location;
import com.google.ads.AdRequest;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;

@Deprecated
/* loaded from: classes.dex */
public class MediationAdRequest {
    public final Date a;
    public final AdRequest.Gender b;
    public final Set<String> c;
    public final boolean d;
    public final Location e;

    public MediationAdRequest(Date date, AdRequest.Gender gender, Set<String> set, boolean z, Location location) {
        this.a = date;
        this.b = gender;
        this.c = set;
        this.d = z;
        this.e = location;
    }

    public Integer getAgeInYears() {
        if (this.a == null) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar.setTime(this.a);
        Integer numValueOf = Integer.valueOf(calendar2.get(1) - calendar.get(1));
        return (calendar2.get(2) < calendar.get(2) || (calendar2.get(2) == calendar.get(2) && calendar2.get(5) < calendar.get(5))) ? Integer.valueOf(numValueOf.intValue() - 1) : numValueOf;
    }

    public Date getBirthday() {
        return this.a;
    }

    public AdRequest.Gender getGender() {
        return this.b;
    }

    public Set<String> getKeywords() {
        return this.c;
    }

    public Location getLocation() {
        return this.e;
    }

    public boolean isTesting() {
        return this.d;
    }
}
