.class public final Lqz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Liz;

.field public final b:I

.field public final c:Lpy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpy<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Liz;ILpy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liz;",
            "I",
            "Lpy<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqz;->a:Liz;

    .line 3
    iput p2, p0, Lqz;->b:I

    .line 4
    iput-object p3, p0, Lqz;->c:Lpy;

    return-void
.end method
