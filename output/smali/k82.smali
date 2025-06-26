.class public final Lk82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Ll82;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lzv2;

.field public final b:Landroid/content/Context;

.field public final c:Lll2;

.field public final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lzv2;Landroid/content/Context;Lll2;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk82;->a:Lzv2;

    .line 3
    iput-object p2, p0, Lk82;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lk82;->c:Lll2;

    .line 5
    iput-object p4, p0, Lk82;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Ll82;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk82;->a:Lzv2;

    new-instance v1, Ln82;

    invoke-direct {v1, p0}, Ln82;-><init>(Lk82;)V

    invoke-interface {v0, v1}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v0

    return-object v0
.end method
