.class public Lcom/google/android/gms/ads/RequestConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/RequestConfiguration$Builder;,
        Lcom/google/android/gms/ads/RequestConfiguration$MaxAdContentRating;,
        Lcom/google/android/gms/ads/RequestConfiguration$TagForUnderAgeOfConsent;,
        Lcom/google/android/gms/ads/RequestConfiguration$TagForChildDirectedTreatment;
    }
.end annotation


# static fields
.field public static final MAX_AD_CONTENT_RATING_G:Ljava/lang/String; = "G"

.field public static final MAX_AD_CONTENT_RATING_MA:Ljava/lang/String; = "MA"

.field public static final MAX_AD_CONTENT_RATING_PG:Ljava/lang/String; = "PG"

.field public static final MAX_AD_CONTENT_RATING_T:Ljava/lang/String; = "T"

.field public static final MAX_AD_CONTENT_RATING_UNSPECIFIED:Ljava/lang/String; = ""

.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE:I = 0x0

.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE:I = 0x1

.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED:I = -0x1

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE:I = 0x0

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE:I = 0x1

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED:I = -0x1

.field public static final zzadz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "MA"

    const-string v1, "T"

    const-string v2, "PG"

    const-string v3, "G"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/RequestConfiguration;->zzadz:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/util/List;Lux;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/ads/RequestConfiguration;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/ads/RequestConfiguration;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/RequestConfiguration;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/ads/RequestConfiguration;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMaxAdContentRating()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/RequestConfiguration;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTagForChildDirectedTreatment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/RequestConfiguration;->a:I

    return v0
.end method

.method public getTagForUnderAgeOfConsent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/RequestConfiguration;->b:I

    return v0
.end method

.method public getTestDeviceIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/ads/RequestConfiguration;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    iget v1, p0, Lcom/google/android/gms/ads/RequestConfiguration;->a:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/RequestConfiguration;->b:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/RequestConfiguration;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/RequestConfiguration;->d:Ljava/util/List;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method
