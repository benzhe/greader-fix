.class public final Ltq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lep3;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Llp3$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;",
            "Lmb3<",
            "Ljava/lang/String;",
            ">;",
            "Lmb3<",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            ">;",
            "Lmb3<",
            "Llp3$a;",
            ">;",
            "Lmb3<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltq1;->a:Lmb3;

    .line 3
    iput-object p2, p0, Ltq1;->b:Lmb3;

    .line 4
    iput-object p3, p0, Ltq1;->c:Lmb3;

    .line 5
    iput-object p4, p0, Ltq1;->d:Lmb3;

    .line 6
    iput-object p5, p0, Ltq1;->e:Lmb3;

    return-void
.end method

.method public static a(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)Ltq1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;",
            "Lmb3<",
            "Ljava/lang/String;",
            ">;",
            "Lmb3<",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            ">;",
            "Lmb3<",
            "Llp3$a;",
            ">;",
            "Lmb3<",
            "Ljava/lang/String;",
            ">;)",
            "Ltq1;"
        }
    .end annotation

    .line 1
    new-instance v6, Ltq1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ltq1;-><init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V

    return-object v6
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Ltq1;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Ltq1;->b:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Ltq1;->c:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v3, p0, Ltq1;->d:Lmb3;

    invoke-interface {v3}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llp3$a;

    iget-object v4, p0, Ltq1;->e:Lmb3;

    invoke-interface {v4}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2
    new-instance v5, Lep3;

    new-instance v6, Lip3;

    invoke-direct {v6, v0}, Lip3;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v6}, Lep3;-><init>(Lip3;)V

    .line 3
    invoke-static {}, Lkq3;->A()Lkq3$a;

    move-result-object v0

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzbar;->f:I

    .line 4
    iget-boolean v7, v0, Ls63$b;->g:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 6
    iput-boolean v8, v0, Ls63$b;->g:Z

    .line 7
    :cond_0
    iget-object v7, v0, Ls63$b;->f:Ls63;

    check-cast v7, Lkq3;

    invoke-static {v7, v6}, Lkq3;->x(Lkq3;I)V

    .line 8
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzbar;->g:I

    .line 9
    iget-boolean v7, v0, Ls63$b;->g:Z

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 11
    iput-boolean v8, v0, Ls63$b;->g:Z

    .line 12
    :cond_1
    iget-object v7, v0, Ls63$b;->f:Ls63;

    check-cast v7, Lkq3;

    invoke-static {v7, v6}, Lkq3;->y(Lkq3;I)V

    .line 13
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbar;->h:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    .line 14
    :goto_0
    iget-boolean v6, v0, Ls63$b;->g:Z

    if-eqz v6, :cond_3

    .line 15
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 16
    iput-boolean v8, v0, Ls63$b;->g:Z

    .line 17
    :cond_3
    iget-object v6, v0, Ls63$b;->f:Ls63;

    check-cast v6, Lkq3;

    invoke-static {v6, v2}, Lkq3;->z(Lkq3;I)V

    .line 18
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object v0

    check-cast v0, Ls63;

    check-cast v0, Lkq3;

    .line 19
    new-instance v2, Luq1;

    invoke-direct {v2, v3, v1, v0, v4}, Luq1;-><init>(Llp3$a;Ljava/lang/String;Lkq3;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lep3;->a(Ldp3;)V

    return-object v5
.end method
