.class public final Lba2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lca2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lzv2;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lzv2;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lba2;->a:Lzv2;

    .line 3
    iput-object p2, p0, Lba2;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lca2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lba2;->a:Lzv2;

    new-instance v1, Lea2;

    invoke-direct {v1, p0}, Lea2;-><init>(Lba2;)V

    invoke-interface {v0, v1}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v0

    return-object v0
.end method
