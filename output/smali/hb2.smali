.class public final Lhb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Leb2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lzv2;

.field public final b:Landroid/view/ViewGroup;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzv2;Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzv2;",
            "Landroid/view/ViewGroup;",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhb2;->a:Lzv2;

    .line 3
    iput-object p4, p0, Lhb2;->d:Ljava/util/Set;

    .line 4
    iput-object p2, p0, Lhb2;->b:Landroid/view/ViewGroup;

    .line 5
    iput-object p3, p0, Lhb2;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Leb2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhb2;->a:Lzv2;

    new-instance v1, Lgb2;

    invoke-direct {v1, p0}, Lgb2;-><init>(Lhb2;)V

    invoke-interface {v0, v1}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v0

    return-object v0
.end method
