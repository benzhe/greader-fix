.class public final synthetic Lmn1;
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

    iput-object p1, p0, Lmn1;->a:Lfn1;

    iput-object p2, p0, Lmn1;->b:Lxw0;

    iput-object p3, p0, Lmn1;->c:Lus0;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lmn1;->a:Lfn1;

    iget-object v1, p0, Lmn1;->b:Lxw0;

    iget-object v2, p0, Lmn1;->c:Lus0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, v0, Lfn1;->a:Lll2;

    iget-object p1, p1, Lll2;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    if-eqz p1, :cond_0

    invoke-interface {v1}, Lxw0;->f()Lrx0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v1}, Lxw0;->f()Lrx0;

    move-result-object p1

    iget-object v0, v0, Lfn1;->a:Lll2;

    iget-object v0, v0, Lll2;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-virtual {p1, v0}, Lrx0;->Z6(Lcom/google/android/gms/internal/ads/zzaaz;)V

    .line 4
    :cond_0
    iget-object p1, v2, Lus0;->f:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Lxs0;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lz22;

    sget-object v0, Ldm2;->e:Ldm2;

    const-string v1, "Instream video Web View failed to load."

    invoke-direct {p1, v0, v1}, Lz22;-><init>(Ldm2;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
