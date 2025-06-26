.class public final Lub2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lrb2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lzv2;

.field public final b:Lll2;

.field public final c:Landroid/content/pm/PackageInfo;

.field public final d:Lcom/google/android/gms/ads/internal/util/zzf;


# direct methods
.method public constructor <init>(Lzv2;Lll2;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/internal/util/zzf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lub2;->a:Lzv2;

    .line 3
    iput-object p2, p0, Lub2;->b:Lll2;

    .line 4
    iput-object p3, p0, Lub2;->c:Landroid/content/pm/PackageInfo;

    .line 5
    iput-object p4, p0, Lub2;->d:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lrb2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lub2;->a:Lzv2;

    new-instance v1, Ltb2;

    invoke-direct {v1, p0}, Ltb2;-><init>(Lub2;)V

    invoke-interface {v0, v1}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v0

    return-object v0
.end method
