.class public final Lg52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field public final synthetic a:Lsg1;


# direct methods
.method public constructor <init>(Lsg1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg52;->a:Lsg1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzh(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zzkg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg52;->a:Lsg1;

    invoke-virtual {v0}, Lh61;->c()Lx91;

    move-result-object v0

    .line 2
    sget-object v1, Laa1;->a:Lzd1;

    invoke-virtual {v0, v1}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final zzkh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg52;->a:Lsg1;

    invoke-virtual {v0}, Lh61;->d()Lqa1;

    move-result-object v0

    invoke-virtual {v0}, Lqa1;->onAdImpression()V

    .line 2
    iget-object v0, p0, Lg52;->a:Lsg1;

    invoke-virtual {v0}, Lh61;->e()Lwf1;

    move-result-object v0

    invoke-virtual {v0}, Lwf1;->G0()V

    return-void
.end method
