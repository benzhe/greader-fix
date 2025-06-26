.class public final Lqe0;
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


# instance fields
.field public final synthetic a:Loe0;


# direct methods
.method public constructor <init>(Loe0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqe0;->a:Loe0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzg(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lwe0;

    const-string p1, "Releasing engine reference."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lqe0;->a:Loe0;

    .line 4
    iget-object p1, p1, Loe0;->d:Lse0;

    .line 5
    invoke-virtual {p1}, Lse0;->e()V

    return-void
.end method
