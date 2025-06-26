.class public final Lhi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvs2<",
        "Lyv1;",
        "Lji2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lfi2;


# direct methods
.method public constructor <init>(Lfi2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhi2;->a:Lfi2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lyv1;

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lhi2;->a:Lfi2;

    new-instance v0, Lji2;

    .line 5
    invoke-virtual {p1}, Lfi2;->a()Lbn2;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1, v2}, Lji2;-><init>(Lcom/google/android/gms/internal/ads/zzauj;Lbn2;Lhi2;)V

    .line 7
    iput-object v0, p1, Lfi2;->e:Lji2;

    .line 8
    iget-object p1, p0, Lhi2;->a:Lfi2;

    .line 9
    iget-object p1, p1, Lfi2;->e:Lji2;

    return-object p1
.end method
