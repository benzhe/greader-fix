.class public final Ll42;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Lmz1;

.field public final synthetic c:Lxs0;


# direct methods
.method public constructor <init>(Lg42;Lmz1;Lxs0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ll42;->b:Lmz1;

    iput-object p3, p0, Ll42;->c:Lxs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ll42;->a:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Ll42;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ll42;->b:Lmz1;

    iget-object v0, v0, Lmz1;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lg42;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvh;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "undefined"

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Ll42;->b(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 3

    .line 1
    sget-object v0, Ldm2;->e:Ldm2;

    .line 2
    sget-object v1, Ly40;->e3:Lo40;

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
    sget-object v0, Ldm2;->g:Ldm2;

    .line 7
    :cond_0
    iget-object v1, p0, Ll42;->c:Lxs0;

    new-instance v2, Loz1;

    invoke-direct {v2, v0, p1}, Loz1;-><init>(Ldm2;Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {v1, v2}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method
