.class public final Lhs5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljn5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljn5<",
            "Lbu5;",
            "Lfu5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjn5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljn5<",
            "Lbu5;",
            "Lfu5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lhs5;->a:I

    .line 3
    iput-object p2, p0, Lhs5;->b:Ljn5;

    return-void
.end method
