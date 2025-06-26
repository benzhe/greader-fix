.class public final synthetic Lbw;
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

    iput-object p1, p0, Lbw;->e:Lcom/google/android/gms/ads/internal/util/zzad;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbw;->e:Lcom/google/android/gms/ads/internal/util/zzad;

    const/4 v1, 0x4

    .line 1
    iput v1, v0, Lcom/google/android/gms/ads/internal/util/zzad;->f:I

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzad;->showDialog()V

    return-void
.end method
