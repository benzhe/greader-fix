.class public final Lki2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvs2<",
        "Lcom/google/android/gms/internal/ads/zzauj;",
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
    iput-object p1, p0, Lki2;->a:Lfi2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    .line 2
    iget-object v0, p0, Lki2;->a:Lfi2;

    new-instance v1, Lji2;

    new-instance v2, Ldn2;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzauj;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Ldn2;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lji2;-><init>(Lcom/google/android/gms/internal/ads/zzauj;Lbn2;Lhi2;)V

    .line 3
    iput-object v1, v0, Lfi2;->e:Lji2;

    return-object v1
.end method
