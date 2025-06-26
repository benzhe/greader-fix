.class public Lt76;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lbf5;

.field public b:Lno5;


# direct methods
.method public constructor <init>(Lbf5;Lno5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lp66;->a:Lp66;

    :goto_0
    iput-object p1, p0, Lt76;->a:Lbf5;

    .line 3
    iput-object p2, p0, Lt76;->b:Lno5;

    return-void
.end method
