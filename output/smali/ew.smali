.class public final synthetic Lew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lcom/google/android/gms/ads/internal/util/zzad;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lew;->e:Lcom/google/android/gms/ads/internal/util/zzad;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lew;->e:Lcom/google/android/gms/ads/internal/util/zzad;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlf()Lcom/google/android/gms/ads/internal/util/zzam;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/util/zzad;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/zzad;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/util/zzad;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/zzad;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/ads/internal/util/zzam;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
