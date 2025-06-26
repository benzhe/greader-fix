.class public final Lky1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lgy1;",
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
            "Lg91;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ldy1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lxx1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
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
            "Lg91;",
            ">;",
            "Lmb3<",
            "Ldy1;",
            ">;",
            "Lmb3<",
            "Lxx1;",
            ">;",
            "Lmb3<",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lky1;->a:Lmb3;

    .line 3
    iput-object p2, p0, Lky1;->b:Lmb3;

    .line 4
    iput-object p3, p0, Lky1;->c:Lmb3;

    .line 5
    iput-object p4, p0, Lky1;->d:Lmb3;

    .line 6
    iput-object p5, p0, Lky1;->e:Lmb3;

    return-void
.end method

.method public static a(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)Lky1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;",
            "Lmb3<",
            "Lg91;",
            ">;",
            "Lmb3<",
            "Ldy1;",
            ">;",
            "Lmb3<",
            "Lxx1;",
            ">;",
            "Lmb3<",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
            ">;)",
            "Lky1;"
        }
    .end annotation

    .line 1
    new-instance v6, Lky1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lky1;-><init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V

    return-object v6
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lky1;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lky1;->b:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lg91;

    iget-object v0, p0, Lky1;->c:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ldy1;

    iget-object v0, p0, Lky1;->d:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lxx1;

    iget-object v0, p0, Lky1;->e:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/ads/internal/util/zzf;

    .line 2
    new-instance v0, Lgy1;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lgy1;-><init>(Landroid/content/Context;Lg91;Ldy1;Lxx1;Lcom/google/android/gms/ads/internal/util/zzf;)V

    return-object v0
.end method
