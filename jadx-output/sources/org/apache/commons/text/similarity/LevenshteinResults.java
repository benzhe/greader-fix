package org.apache.commons.text.similarity;

import defpackage.jo;
import java.util.Objects;

/* loaded from: classes2.dex */
public class LevenshteinResults {
    private final Integer deleteCount;
    private final Integer distance;
    private final Integer insertCount;
    private final Integer substituteCount;

    public LevenshteinResults(Integer num, Integer num2, Integer num3, Integer num4) {
        this.distance = num;
        this.insertCount = num2;
        this.deleteCount = num3;
        this.substituteCount = num4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LevenshteinResults levenshteinResults = (LevenshteinResults) obj;
        return Objects.equals(this.distance, levenshteinResults.distance) && Objects.equals(this.insertCount, levenshteinResults.insertCount) && Objects.equals(this.deleteCount, levenshteinResults.deleteCount) && Objects.equals(this.substituteCount, levenshteinResults.substituteCount);
    }

    public Integer getDeleteCount() {
        return this.deleteCount;
    }

    public Integer getDistance() {
        return this.distance;
    }

    public Integer getInsertCount() {
        return this.insertCount;
    }

    public Integer getSubstituteCount() {
        return this.substituteCount;
    }

    public int hashCode() {
        return Objects.hash(this.distance, this.insertCount, this.deleteCount, this.substituteCount);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Distance: ");
        sbZ.append(this.distance);
        sbZ.append(", Insert: ");
        sbZ.append(this.insertCount);
        sbZ.append(", Delete: ");
        sbZ.append(this.deleteCount);
        sbZ.append(", Substitute: ");
        sbZ.append(this.substituteCount);
        return sbZ.toString();
    }
}
