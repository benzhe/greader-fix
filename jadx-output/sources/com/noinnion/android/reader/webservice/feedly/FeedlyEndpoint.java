package com.noinnion.android.reader.webservice.feedly;

import com.noinnion.android.reader.webservice.feedly.model.FeedSearchResult;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* loaded from: classes2.dex */
public interface FeedlyEndpoint {
    @GET("search/feeds?organic=true")
    Call<FeedSearchResult> findFeeds(@Query("query") String str, @Query("count") int i);
}
