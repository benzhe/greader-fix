.class public final synthetic Lln1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgy0;


# instance fields
.field public final a:Lfn1;

.field public final b:Lxw0;

.field public final c:Lus0;


# direct methods
.method public constructor <init>(Lfn1;Lxw0;Lus0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lln1;->a:Lfn1;

    iput-object p2, p0, Lln1;->b:Lxw0;

    iput-object p3, p0, Lln1;->c:Lus0;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object p1, p0, Lln1;->a:Lfn1;

    iget-object v0, p0, Lln1;->b:Lxw0;

    iget-object v1, p0, Lln1;->c:Lus0;

    .line 1
    iget-object v2, p1, Lfn1;->a:Lll2;

    iget-object v2, v2, Lll2;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lxw0;->f()Lrx0;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {v0}, Lxw0;->f()Lrx0;

    move-result-object v0

    iget-object p1, p1, Lfn1;->a:Lll2;

    iget-object p1, p1, Lll2;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-virtual {v0, p1}, Lrx0;->Z6(Lcom/google/android/gms/internal/ads/zzaaz;)V

    .line 3
    :cond_0
    iget-object p1, v1, Lus0;->f:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void
.end method
