.class public final Lwt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzbcb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbcb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwt0;->e:Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwt0;->e:Lcom/google/android/gms/internal/ads/zzbcb;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzbcb;->v:I

    const-string v2, "surfaceCreated"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbcb;->h(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
