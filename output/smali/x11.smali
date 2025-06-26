.class public final Lx11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv11;


# instance fields
.field public a:Lcom/google/android/gms/ads/internal/util/zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx11;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx11;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    const-string v1, "content_url_opted_out"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzas(Z)V

    return-void
.end method
