.class public final Lre0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbt0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbt0<",
        "Lpd0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Loe0;


# direct methods
.method public constructor <init>(Loe0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lre0;->a:Loe0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzg(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lpd0;

    const-string v0, "Getting a new session for JS Engine."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lre0;->a:Loe0;

    invoke-interface {p1}, Lpd0;->o0()Lze0;

    move-result-object p1

    .line 4
    iget-object v0, v0, Lat0;->a:Lxs0;

    invoke-virtual {v0, p1}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void
.end method
