.class public final Lt92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lt71;

.field public final d:Lgm2;

.field public final e:Lll2;

.field public final f:Lcom/google/android/gms/ads/internal/util/zzf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lt92;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lt71;Lgm2;Lll2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt92;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lt92;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lt92;->c:Lt71;

    .line 5
    iput-object p4, p0, Lt92;->d:Lgm2;

    .line 6
    iput-object p5, p0, Lt92;->e:Lll2;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object p1

    invoke-virtual {p1}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object p1

    iput-object p1, p0, Lt92;->f:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Ly40;->k3:Lo40;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lt92;->c:Lt71;

    iget-object v2, p0, Lt92;->e:Lll2;

    iget-object v2, v2, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    invoke-virtual {v1, v2}, Lt71;->d(Lcom/google/android/gms/internal/ads/zzvq;)V

    .line 7
    iget-object v1, p0, Lt92;->d:Lgm2;

    invoke-virtual {v1}, Lgm2;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 8
    :cond_0
    new-instance v1, Lw92;

    invoke-direct {v1, p0, v0}, Lw92;-><init>(Lt92;Landroid/os/Bundle;)V

    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    return-object v0
.end method
