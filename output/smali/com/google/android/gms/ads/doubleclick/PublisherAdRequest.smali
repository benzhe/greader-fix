.class public final Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$MaxAdContentRating;,
        Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$TagForUnderAgeOfConsent;,
        Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = "B3EEABB8EE11C2BE770B684D95219ECB"

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I = 0x0

.field public static final MAX_AD_CONTENT_RATING_G:Ljava/lang/String; = "G"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_AD_CONTENT_RATING_MA:Ljava/lang/String; = "MA"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_AD_CONTENT_RATING_PG:Ljava/lang/String; = "PG"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_AD_CONTENT_RATING_T:Ljava/lang/String; = "T"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final a:Lzu3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;Llv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lzu3;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcv3;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p2, p1, v0}, Lzu3;-><init>(Lcv3;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    return-void
.end method

.method public static updateCorrelator()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    .line 2
    iget-object v0, v0, Lzu3;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    .line 2
    iget-object v0, v0, Lzu3;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    invoke-virtual {v0, p1}, Lzu3;->a(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    .line 2
    iget-object v0, v0, Lzu3;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getGender()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    .line 2
    iget v0, v0, Lzu3;->d:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    .line 2
    iget-object v0, v0, Lzu3;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    .line 2
    iget-object v0, v0, Lzu3;->f:Landroid/location/Location;

    return-object v0
.end method

.method public final getManualImpressionsEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    .line 2
    iget-boolean v0, v0, Lzu3;->g:Z

    return v0
.end method

.method public final getNeighboringContentUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    invoke-virtual {v0}, Lzu3;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    .line 2
    iget-object v0, v0, Lzu3;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object p1
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    .line 2
    iget-object v0, v0, Lzu3;->h:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    .line 2
    iget-object v0, v0, Lzu3;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    invoke-virtual {v0, p1}, Lzu3;->b(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final zzdt()Lzu3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a:Lzu3;

    return-object v0
.end method
