.class public final Laq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lmp1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lfx0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ld23;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lb60;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lcom/google/android/gms/ads/internal/zzb;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lep3;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lkc1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lfx0;",
            ">;",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;",
            "Lmb3<",
            "Ld23;",
            ">;",
            "Lmb3<",
            "Lb60;",
            ">;",
            "Lmb3<",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            ">;",
            "Lmb3<",
            "Lcom/google/android/gms/ads/internal/zzb;",
            ">;",
            "Lmb3<",
            "Lep3;",
            ">;",
            "Lmb3<",
            "Lkc1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Laq1;->a:Lmb3;

    .line 3
    iput-object p2, p0, Laq1;->b:Lmb3;

    .line 4
    iput-object p3, p0, Laq1;->c:Lmb3;

    .line 5
    iput-object p4, p0, Laq1;->d:Lmb3;

    .line 6
    iput-object p5, p0, Laq1;->e:Lmb3;

    .line 7
    iput-object p6, p0, Laq1;->f:Lmb3;

    .line 8
    iput-object p7, p0, Laq1;->g:Lmb3;

    .line 9
    iput-object p8, p0, Laq1;->h:Lmb3;

    return-void
.end method

.method public static a(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)Laq1;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lfx0;",
            ">;",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;",
            "Lmb3<",
            "Ld23;",
            ">;",
            "Lmb3<",
            "Lb60;",
            ">;",
            "Lmb3<",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            ">;",
            "Lmb3<",
            "Lcom/google/android/gms/ads/internal/zzb;",
            ">;",
            "Lmb3<",
            "Lep3;",
            ">;",
            "Lmb3<",
            "Lkc1;",
            ">;)",
            "Laq1;"
        }
    .end annotation

    .line 1
    new-instance v9, Laq1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Laq1;-><init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V

    return-object v9
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Laq1;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lfx0;

    iget-object v0, p0, Laq1;->b:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v0, p0, Laq1;->c:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ld23;

    iget-object v0, p0, Laq1;->d:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lb60;

    iget-object v0, p0, Laq1;->e:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v0, p0, Laq1;->f:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/ads/internal/zzb;

    iget-object v0, p0, Laq1;->g:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lep3;

    iget-object v0, p0, Laq1;->h:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkc1;

    .line 2
    new-instance v0, Lmp1;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lmp1;-><init>(Lfx0;Landroid/content/Context;Ld23;Lb60;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzb;Lep3;Lkc1;)V

    return-object v0
.end method
