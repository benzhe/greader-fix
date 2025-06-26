.class public final Loe2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lke2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lqm0;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Lzv2;


# direct methods
.method public constructor <init>(Lqm0;Landroid/content/Context;Ljava/lang/String;Lzv2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Loe2;->a:Lqm0;

    .line 3
    iput-object p2, p0, Loe2;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Loe2;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Loe2;->d:Lzv2;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lke2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loe2;->d:Lzv2;

    new-instance v1, Lne2;

    invoke-direct {v1, p0}, Lne2;-><init>(Loe2;)V

    invoke-interface {v0, v1}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v0

    return-object v0
.end method
