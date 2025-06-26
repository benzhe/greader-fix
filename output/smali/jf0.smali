.class public final Ljf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/zzar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/util/zzar<",
        "Lpd0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzg(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lpd0;

    .line 2
    sget-object v0, Lva0;->p:Lvb0;

    const-string v1, "/result"

    invoke-interface {p1, v1, v0}, Lwe0;->n(Ljava/lang/String;Lkb0;)V

    return-void
.end method
