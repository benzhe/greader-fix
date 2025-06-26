.class public final Ll71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Lcom/google/android/gms/internal/ads/zzauj;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh71;


# direct methods
.method public constructor <init>(Lh71;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll71;->a:Lh71;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ll71;->a:Lh71;

    .line 2
    iget-object p1, p1, Lh71;->f:Lmd1;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lmd1;->t0(Z)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    .line 2
    iget-object p1, p0, Ll71;->a:Lh71;

    .line 3
    iget-object p1, p1, Lh71;->f:Lmd1;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lmd1;->t0(Z)V

    return-void
.end method
