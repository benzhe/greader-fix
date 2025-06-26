.class public final Lzb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lac2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lzv2;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzv2;Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzv2;",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzb2;->a:Lzv2;

    .line 3
    iput-object p2, p0, Lzb2;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lzb2;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lac2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzb2;->a:Lzv2;

    new-instance v1, Lcc2;

    invoke-direct {v1, p0}, Lcc2;-><init>(Lzb2;)V

    invoke-interface {v0, v1}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v0

    return-object v0
.end method
