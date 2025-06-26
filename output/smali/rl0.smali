.class public final Lrl0;
.super Lol0;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrl0;->e:Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;

    invoke-direct {p0}, Lol0;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrl0;->e:Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public final w3(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrl0;->e:Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;->onSuccess(Ljava/util/List;)V

    return-void
.end method
