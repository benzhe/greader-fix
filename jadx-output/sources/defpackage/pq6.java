package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.item.ItemFragment;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class pq6 extends jm7 implements pl7<NativeAd, yj7> {
    public final /* synthetic */ ItemFragment e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pq6(ItemFragment itemFragment) {
        super(1);
        this.e = itemFragment;
    }

    @Override // defpackage.pl7
    public yj7 invoke(NativeAd nativeAd) {
        NativeAd nativeAd2 = nativeAd;
        im7.e(nativeAd2, "nativeAd");
        FragmentActivity activity = this.e.getActivity();
        if ((activity == null || !activity.isDestroyed()) && this.e.isAdded()) {
            ItemFragment itemFragment = this.e;
            itemFragment.I = nativeAd2;
            LayoutInflater layoutInflater = itemFragment.getLayoutInflater();
            im7.d(layoutInflater, "layoutInflater");
            im7.e(layoutInflater, "layoutInflater");
            im7.e(nativeAd2, "nativeAd");
            View viewInflate = layoutInflater.inflate(R.layout.ad_banner_native, (ViewGroup) null);
            Objects.requireNonNull(viewInflate, "null cannot be cast to non-null type com.google.android.gms.ads.nativead.NativeAdView");
            NativeAdView nativeAdView = (NativeAdView) viewInflate;
            nativeAdView.setMediaView((MediaView) nativeAdView.findViewById(R.id.ad_media));
            nativeAdView.setHeadlineView(nativeAdView.findViewById(R.id.ad_headline));
            nativeAdView.setBodyView(nativeAdView.findViewById(R.id.ad_body));
            nativeAdView.setCallToActionView(nativeAdView.findViewById(R.id.ad_call_to_action));
            nativeAdView.setIconView(nativeAdView.findViewById(R.id.ad_app_icon));
            nativeAdView.setPriceView(nativeAdView.findViewById(R.id.ad_price));
            nativeAdView.setStarRatingView(nativeAdView.findViewById(R.id.ad_stars));
            nativeAdView.setStoreView(nativeAdView.findViewById(R.id.ad_store));
            nativeAdView.setAdvertiserView(nativeAdView.findViewById(R.id.ad_advertiser));
            View headlineView = nativeAdView.getHeadlineView();
            Objects.requireNonNull(headlineView, "null cannot be cast to non-null type android.widget.TextView");
            ((TextView) headlineView).setText(nativeAd2.getHeadline());
            nativeAdView.getMediaView().setMediaContent(nativeAd2.getMediaContent());
            nativeAdView.getMediaView().setImageScaleType(ImageView.ScaleType.CENTER_CROP);
            if (nativeAd2.getBody() == null) {
                View bodyView = nativeAdView.getBodyView();
                im7.d(bodyView, "adView.bodyView");
                bodyView.setVisibility(4);
            } else {
                View bodyView2 = nativeAdView.getBodyView();
                im7.d(bodyView2, "adView.bodyView");
                bodyView2.setVisibility(0);
                View bodyView3 = nativeAdView.getBodyView();
                Objects.requireNonNull(bodyView3, "null cannot be cast to non-null type android.widget.TextView");
                ((TextView) bodyView3).setText(nativeAd2.getBody());
            }
            if (nativeAd2.getCallToAction() == null) {
                View callToActionView = nativeAdView.getCallToActionView();
                im7.d(callToActionView, "adView.callToActionView");
                callToActionView.setVisibility(4);
            } else {
                View callToActionView2 = nativeAdView.getCallToActionView();
                im7.d(callToActionView2, "adView.callToActionView");
                callToActionView2.setVisibility(0);
                View callToActionView3 = nativeAdView.getCallToActionView();
                Objects.requireNonNull(callToActionView3, "null cannot be cast to non-null type android.widget.Button");
                ((Button) callToActionView3).setText(nativeAd2.getCallToAction());
            }
            if (nativeAd2.getIcon() == null) {
                View iconView = nativeAdView.getIconView();
                im7.d(iconView, "adView.iconView");
                iconView.setVisibility(8);
            } else {
                View iconView2 = nativeAdView.getIconView();
                Objects.requireNonNull(iconView2, "null cannot be cast to non-null type android.widget.ImageView");
                NativeAd.Image icon = nativeAd2.getIcon();
                im7.d(icon, "nativeAd.icon");
                ((ImageView) iconView2).setImageDrawable(icon.getDrawable());
                View iconView3 = nativeAdView.getIconView();
                im7.d(iconView3, "adView.iconView");
                iconView3.setVisibility(0);
            }
            if (nativeAd2.getPrice() == null) {
                View priceView = nativeAdView.getPriceView();
                im7.d(priceView, "adView.priceView");
                priceView.setVisibility(4);
            } else {
                View priceView2 = nativeAdView.getPriceView();
                im7.d(priceView2, "adView.priceView");
                priceView2.setVisibility(0);
                View priceView3 = nativeAdView.getPriceView();
                Objects.requireNonNull(priceView3, "null cannot be cast to non-null type android.widget.TextView");
                ((TextView) priceView3).setText(nativeAd2.getPrice());
            }
            if (nativeAd2.getStore() == null) {
                View storeView = nativeAdView.getStoreView();
                im7.d(storeView, "adView.storeView");
                storeView.setVisibility(4);
            } else {
                View storeView2 = nativeAdView.getStoreView();
                im7.d(storeView2, "adView.storeView");
                storeView2.setVisibility(0);
                View storeView3 = nativeAdView.getStoreView();
                Objects.requireNonNull(storeView3, "null cannot be cast to non-null type android.widget.TextView");
                ((TextView) storeView3).setText(nativeAd2.getStore());
            }
            if (nativeAd2.getStarRating() == null) {
                View starRatingView = nativeAdView.getStarRatingView();
                im7.d(starRatingView, "adView.starRatingView");
                starRatingView.setVisibility(4);
            } else {
                View starRatingView2 = nativeAdView.getStarRatingView();
                Objects.requireNonNull(starRatingView2, "null cannot be cast to non-null type android.widget.RatingBar");
                Double starRating = nativeAd2.getStarRating();
                im7.c(starRating);
                ((RatingBar) starRatingView2).setRating((float) starRating.doubleValue());
                View starRatingView3 = nativeAdView.getStarRatingView();
                im7.d(starRatingView3, "adView.starRatingView");
                starRatingView3.setVisibility(0);
            }
            if (nativeAd2.getAdvertiser() == null) {
                View advertiserView = nativeAdView.getAdvertiserView();
                im7.d(advertiserView, "adView.advertiserView");
                advertiserView.setVisibility(4);
            } else {
                View advertiserView2 = nativeAdView.getAdvertiserView();
                Objects.requireNonNull(advertiserView2, "null cannot be cast to non-null type android.widget.TextView");
                ((TextView) advertiserView2).setText(nativeAd2.getAdvertiser());
                View advertiserView3 = nativeAdView.getAdvertiserView();
                im7.d(advertiserView3, "adView.advertiserView");
                advertiserView3.setVisibility(0);
            }
            nativeAdView.setNativeAd(nativeAd2);
            ViewGroup viewGroup = this.e.G;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(nativeAdView);
                viewGroup.setVisibility(0);
            }
        } else {
            nativeAd2.destroy();
        }
        return yj7.a;
    }
}
