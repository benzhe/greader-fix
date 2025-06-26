.class public final Lne0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbt0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbt0<",
        "Lwe0;",
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
    .locals 1

    .line 1
    check-cast p1, Lwe0;

    const-string v0, "Ending javascript session."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 3
    check-cast p1, Lze0;

    invoke-interface {p1}, Lze0;->a0()V

    return-void
.end method
