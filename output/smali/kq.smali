.class public final Lkq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lqb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqb7<",
            "Len;",
            "Len;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lqb7;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Llq;

    invoke-direct {p2}, Llq;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p3, "context"

    .line 2
    invoke-static {p1, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "transformer"

    invoke-static {p2, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkq;->a:Landroid/content/Context;

    iput-object p2, p0, Lkq;->b:Lqb7;

    return-void
.end method
