.class public final Lcp7$a;
.super Lok7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcp7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lok7<",
        "Lqk7;",
        "Lcp7;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lgm7;)V
    .locals 1

    .line 1
    sget p1, Lqk7;->b:I

    sget-object p1, Lqk7$a;->a:Lqk7$a;

    .line 2
    sget-object v0, Lbp7;->e:Lbp7;

    .line 3
    invoke-direct {p0, p1, v0}, Lok7;-><init>(Lrk7$b;Lpl7;)V

    return-void
.end method
