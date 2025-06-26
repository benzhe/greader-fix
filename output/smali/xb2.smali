.class public final Lxb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lub2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lll2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lzv2;",
            ">;",
            "Lmb3<",
            "Lll2;",
            ">;",
            "Lmb3<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Lmb3<",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lxb2;->a:Lmb3;

    .line 3
    iput-object p3, p0, Lxb2;->b:Lmb3;

    .line 4
    iput-object p4, p0, Lxb2;->c:Lmb3;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lxb2;->a:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lll2;

    iget-object v2, p0, Lxb2;->b:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lxb2;->c:Lmb3;

    invoke-interface {v3}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/internal/util/zzf;

    .line 3
    new-instance v4, Lub2;

    invoke-direct {v4, v0, v1, v2, v3}, Lub2;-><init>(Lzv2;Lll2;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/internal/util/zzf;)V

    return-object v4
.end method
